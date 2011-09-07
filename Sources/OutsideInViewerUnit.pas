unit OutsideInViewerUnit;

interface
uses Messages, SysUtils, Types, Classes, Controls, ExtCtrls, sccvw;

type
  TOutsideInViewer = class;

  TInternalFilesMode = (ifmIgnore, ifmShowModal, ifmShowFloat, ifmShowMDIChild, ifmShowByHandler);
  TOnInternalFileViewEvent = function(ASender: TOutsideInViewer; AViewThisFile: Pointer): Boolean of object;
  TOnEnableAppEvent = procedure (ASender: TOutsideInViewer; Enabled: Boolean) of object;

  TOutsideInViewer = class(TCustomPanel)
  private
    FIsFileLoaded: Boolean;
    FViewerWindow: THandle;
    FInternalFilesMode: TInternalFilesMode;
    FOnInternalFileView: TOnInternalFileViewEvent;
    FOnFileChange: TNotifyEvent;
    FOnEnableApp: TOnEnableAppEvent;
    function DoInternalFileView(AViewThisFile: Pointer): Boolean;
    procedure EnableOleDragDrop;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure DestroyWnd; override;
    procedure WMWindowPosChanged(var Message: TWMWindowPosChanged); message WM_WINDOWPOSCHANGED;
    procedure SCCVWViewtHisFile(var Message: TMessage); message SCCVW_VIEWTHISFILE;
    procedure SCCVWFileChange(var Message: TMessage); message SCCVW_FILECHANGE;
    procedure SCCVWBailOut(var Message: TMessage); message SCCVW_BAILOUT;
    procedure SCCVWEnableApp(var Message: TMessage); message SCCVW_ENABLEAPP;
  public
    procedure SetDefCharSetASCII;
    constructor Create(AOwner: TComponent); override;
    procedure LoadFromFile(AFileName: string);
    procedure LoadFromStream(var AStream: TStream; AFileName: string = '');
    procedure LoadFromSCCView(var AViewInfo: SCCVWVIEWFILE40); overload;
    procedure LoadFromSCCView(var AViewInfo: SCCVWVIEWFILE80); overload;
    procedure UpdateSizeByContent(AMaxWidth, AMaxHeight: Integer);
    procedure CloseFile;
    function GetFileType: string;
    function IsEmpty: Boolean;
  published
    property InternalFilesMode: TInternalFilesMode read FInternalFilesMode write FInternalFilesMode;
    property OnInternalFileView: TOnInternalFileViewEvent read FOnInternalFileView write FOnInternalFileView;
    property OnFileChange: TNotifyEvent read FOnFileChange write FOnFileChange;
    property OnEnableApp: TOnEnableAppEvent read FOnEnableApp write FOnEnableApp;
    property AutoSize;
  end;

  EOutsideInException = class(Exception)
  end;


// TODO: понять, что вьюер ничего не показывает для файла типа mp3
// TODO: отключить использование временной папки для распакованных файлов
// TODO: починить смотрелку распакованных файлов


function HaveSCCVWLibrary(APath: string = ''): Boolean;
procedure LoadSCCVWLibrary(APath: string = '');

implementation
uses
  Windows, Forms, sccerrUnit, sccio, sccop, baseio, scctype, charsets, sccid, scclink;

const
  CR = #13#10;

function JoinStringArray(const Mark: array of String; const Separator: String = CR): String;
var
  i:Integer;
begin
  Result:='';
  if Length(Mark) > 0 then
    begin
      for i := Low(Mark) to High(Mark) - 1 do
        Result:= Result + Mark[i] + Separator;
      Result := Result + Mark[High(Mark)];
    end;
end;

function MakeExtText(const Mark: array of String): String;
begin
  Result := JoinStringArray(Mark);
  // Если это исключение, то добавим его тип, адрес и сообщение
  if ExceptObject <> nil then
    with ExceptObject as Exception do
      Result := Result + CR + Format(
        'Исключение типа %s, по адресу 0x%8.8x с сообщением : ' + CR + '"%s"' + CR,
        [ClassName, DWord(ExceptAddr), Message]);
end;

procedure MarkException(const Mark: array of String);
var
  e: Exception;
  MessageText: string;
begin
  MessageText := MakeExtText(Mark);
  if ExceptObject <> nil then
  begin
    e := AcquireExceptionObject;
    e.Message := MessageText;
    raise e;
  end;
end;

procedure SCCCheck(AResult: SCCERR; const Mark: array of String);
var
  MessageText: string;
begin
  MessageText := '';
  case AResult of
    SCCVWERR_OK: ;// All was successful.
    SCCVWERR_INVALIDID:         MessageText := 'File ID passed or generated is invalid.';
    SCCVWERR_FILTERLOADFAILED:  MessageText := 'The filter DLL for this file type could not be loaded.';
    SCCVWERR_FILTERALLOCFAILED: MessageText := 'The filter DLL could not allocate enough memory.';
    SCCVWERR_NOFILTER:          MessageText := 'No filter available for this file type.';
    SCCVWERR_DISPLAYINITFAILED: MessageText := 'The display window could not be initialized.';
    SCCVWERR_CHUNKERINITFAILED: MessageText := 'The chunker (SCCCH.DLL) could not be initialized.';
    SCCVWERR_FILEOPENFAILED:    MessageText := 'The file could not be opened.';
    SCCVWERR_UNKNOWNFAILURE:    MessageText := 'Unknown type of failure.';
    SCCVWERR_BADPARAM:          MessageText := 'One of the values in the SCCVWIDEALSIZE50 structure was invalid.';
    SCCVWERR_NONEFOUND:         MessageText := 'This file does not have an ideal size. In this case the Result values are set to the Maximum Value.';
  end;
  if MessageText <> '' then
    begin
      MessageText := '[[' + MessageText + ']]' + CR + MakeExtText(Mark);
      raise EOutsideInException.Create(MessageText);
    end;
end;

procedure TOutsideInViewer.LoadFromFile(AFileName: string);
var
  FileInfo: SCCVWVIEWFILE40;
begin
  FileInfo.dwSize := SizeOf(FileInfo);
  FileInfo.dwSpecType := IOTYPE_ANSIPATH;
  AFileName := ExpandFileName(AFileName);
  FileInfo.pSpec := PChar(AFileName);
  FileInfo.dwViewAs := 0;
  FileInfo.bUseDisplayName := False;
  FileInfo.bDeleteOnClose := False;
  FileInfo.dwFlags := 0;
  FileInfo.dwReserved1 := 0;
  FileInfo.dwReserved2 := 0;

  SCCCheck(
    SendMessage(FViewerWindow, SCCVW_VIEWFILE, 0, Integer(@FileInfo)),
    ['{57DB4AA5-9699-4AAE-9126-A852681A624A}', AFileName]
  );
end;

{ TOutsideInViewer }

procedure CallbackHandler(pCallBackData: sccop.PSCCVWDLLLOADCALLBACK); cdecl;
begin
  pCallBackData.dwResult := 0;
  if pCallBackData.dwSize <> SizeOf(sccop.SCCVWDLLLOADCALLBACK) then
    Exit;
//  pCallBackData.lpszPath;
//  pCallBackData.lpszEntryPoint;
end;

procedure TOutsideInViewer.CloseFile;
begin
  SCCCheck(
    SendMessage(FViewerWindow, SCCVW_CLOSEFILE, 0, 0),
    ['{BF3BD3E2-1A5E-4941-A8F4-675B74FE3082}']
  );
end;

constructor TOutsideInViewer.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  LoadSCCVWLibrary;
//  sccvw.VWSetupDllLoadCallback(CallbackHandler, nil, 0);
end;

procedure TOutsideInViewer.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
//  Params.WinClassName := 'SCCVIEWER';
end;

procedure TOutsideInViewer.SetDefCharSetASCII;
var
  locOption: SCCVWOPTIONSPEC40;
  locFlags: DWORD;
begin
  if (IsWindow(FViewerWindow)) then
  begin
    locFlags := CS_ASCII;
    locOption.dwSize := sizeof(SCCVWOPTIONSPEC40);
    locOption.dwId := SCCID_DEFAULTINPUTCHARSET;
    locOption.dwFlags := SCCVWOPTION_CURRENT or SCCVWOPTION_DEFAULT;
    locOption.pData := @locFlags;

    SendMessage(FViewerWindow, SCCVW_SETOPTION, 0, Integer(@locOption));
  end;
end;

procedure TOutsideInViewer.EnableOleDragDrop;
var
  locOption: SCCVWOPTIONSPEC40;
  locFlags: DWORD;
begin
  if (IsWindow(FViewerWindow)) then
  begin
    locFlags := SCCVW_OLE_ENABLEDRAGDROP;

    locOption.dwSize := sizeof(SCCVWOPTIONSPEC40);
    locOption.dwId := SCCID_OLEFLAGS;
    locOption.dwFlags := SCCVWOPTION_CURRENT or SCCVWOPTION_DEFAULT;
    locOption.pData := @locFlags;

    SendMessage(FViewerWindow, SCCVW_SETOPTION, 0, Integer(@locOption));
  end;
end;


procedure TOutsideInViewer.CreateWnd;
begin
  inherited CreateWnd;
  FViewerWindow := CreateWindow(
    'SCCVIEWER',
    nil,
    WS_CHILD or WS_BORDER or WS_VISIBLE or WS_CLIPCHILDREN,
    0, 0,
    Width, Height,
    Handle,
    0,
    HInstance,
    nil
  );

  // Enable Raw Text.  This is required for annotations.
  // locFlags := SCCVW_SYSTEM_RAWTEXT; // SCCVW_SYSTEM_NOREADAHEAD;

//  SetDefCharSetASCII;
  EnableOleDragDrop;
end;

procedure TOutsideInViewer.DestroyWnd;
begin
  CloseFile;
  DestroyWindow(FViewerWindow);
  inherited DestroyWnd;
end;

type
  PStreamAdapterData = ^TStreamAdapterData;
  TStreamAdapterData = record
    BaseIORecord: TBASEIO;
    FStream: ^TStream;
    FFileName: string;
  end;

function StreamAdapterClose(hFile:HIOFILE):IOERR; cdecl;
begin
  if hFile = nil then
    begin
      Result := IOERR_BADPARAM;
      Exit;
    end;
  FreeAndNil(PStreamAdapterData(hFile).FStream^);
  Dispose(PStreamAdapterData(hFile));
  Result := IOERR_OK;
end;

function StreamAdapterRead(hFile:HIOFILE; var pData:VTBYTE; dwSize:VTDWORD; var pCount:VTDWORD):IOERR; cdecl;
var
  ReadedCount: Integer;
begin
  if hFile = nil then
    begin
      Result := IOERR_BADPARAM;
      Exit;
    end;
  Result := IOERR_OK;
  try
    ReadedCount := PStreamAdapterData(hFile).FStream^.Read(pData, dwSize);
    if (ReadedCount = -1) or (ReadedCount = 0) then
      Result := IOERR_EOF;
    pCount := ReadedCount;
  except
    Result := IOERR_UNKNOWN;
  end;
end;

function StreamAdapterSeek   (hFile:HIOFILE; wFrom:VTWORD; dwOffset:VTLONG):IOERR; cdecl;
begin
  if hFile = nil then
    begin
      Result := IOERR_BADPARAM;
      Exit;
    end;
  Result := IOERR_OK;
  try
    case wFrom of
      IOSEEK_TOP:     PStreamAdapterData(hFile).FStream^.Seek(dwOffset, soFromBeginning);
      IOSEEK_CURRENT: PStreamAdapterData(hFile).FStream^.Seek(dwOffset, soFromCurrent);
      IOSEEK_BOTTOM:  PStreamAdapterData(hFile).FStream^.Seek(dwOffset, soFromEnd);
      // TODO: seek after EOF must be correct
    end;
  except
    Result := IOERR_UNKNOWN;
  end;
end;

function StreamAdapterTell(hFile:HIOFILE; var dwOffset:VTDWORD):IOERR; cdecl;
begin
  if hFile = nil then
    begin
      Result := IOERR_BADPARAM;
      Exit;
    end;
  Result := IOERR_OK;
  try
    dwOffset := PStreamAdapterData(hFile).FStream^.Position;
  except
    Result := IOERR_UNKNOWN;
  end;
end;

function StreamAdapterSeek64   (hFile:HIOFILE; wFrom:VTWORD; dwOffset:VTOFF_T):IOERR; cdecl;
begin
  if hFile = nil then
    begin
      Result := IOERR_BADPARAM;
      Exit;
    end;
  Result := IOERR_OK;
  try
    case wFrom of
      IOSEEK_TOP:     PStreamAdapterData(hFile).FStream^.Seek(dwOffset, soFromBeginning);
      IOSEEK_CURRENT: PStreamAdapterData(hFile).FStream^.Seek(dwOffset, soFromCurrent);
      IOSEEK_BOTTOM:  PStreamAdapterData(hFile).FStream^.Seek(dwOffset, soFromEnd);
      // TODO: seek after EOF must be correct
    end;
  except
    Result := IOERR_UNKNOWN;
  end;
end;

function StreamAdapterTell64(hFile:HIOFILE; var dwOffset:VTOFF_T):IOERR; cdecl;
begin
  if hFile = nil then
    begin
      Result := IOERR_BADPARAM;
      Exit;
    end;
  Result := IOERR_OK;
  try
    dwOffset := PStreamAdapterData(hFile).FStream^.Position;
  except
    Result := IOERR_UNKNOWN;
  end;
end;

function StreamAdapterGetInfo(hFile:HIOFILE; dwInfoId:VTDWORD; pInfo: Pointer):IOERR; cdecl;
type
  TFileName = array [1..MAX_PATH] of Char;
  PFileName = ^TFileName;
begin
  if hFile = nil then
    begin
      Result := IOERR_BADPARAM;
      Exit;
    end;
  Result := IOERR_OK;
  try
    case dwInfoId of
      IOGETINFO_FILENAME:
        if (PStreamAdapterData(hFile).FFileName <> '') and (Length(PStreamAdapterData(hFile).FFileName) < MAX_PATH) then
          StrCopy(pInfo, PChar(PStreamAdapterData(hFile).FFileName))
        else
          Result := IOERR_UNKNOWN;
      IOGETINFO_PATHNAME:
        if (PStreamAdapterData(hFile).FFileName <> '') and (Length(PStreamAdapterData(hFile).FFileName) < MAX_PATH) then
          StrCopy(pInfo, PChar('c:\temp\' + PStreamAdapterData(hFile).FFileName))
        else
          Result := IOERR_UNKNOWN;
      IOGETINFO_PATHTYPE: VTLPDWORD(pInfo)^ := IOTYPE_ANSIPATH;
      IOGETINFO_ISOLE2STORAGE: Result := IOERR_FALSE;
      IOGETINFO_GENSECONDARY: Result := IOERR_UNKNOWN;
      IOGETINFO_64BITIO: Result := IOERR_TRUE;
    else
      Result := IOERR_BADINFOID;
    end;
  except
    Result := IOERR_UNKNOWN;
  end;
end;

procedure TOutsideInViewer.LoadFromStream(var AStream: TStream; AFileName: string = '');
var
  FileInfo: SCCVWVIEWFILE40;
  MyStreamAdapter: PStreamAdapterData;
begin
  new(MyStreamAdapter);

  with MyStreamAdapter.BaseIORecord do
    begin
      pClose   := StreamAdapterClose;
      pRead    := StreamAdapterRead;
      pWrite   := nil;
      pSeek    := StreamAdapterSeek;
      pTell    := StreamAdapterTell;
      pGetInfo := StreamAdapterGetInfo;
      pOpen    := nil;
      pSeek64 := StreamAdapterSeek64;
      pTell64 := StreamAdapterTell64;
      aDummy[0] := nil;
      aDummy[1] := nil;
      aDummy[2] := nil;
    end;
  MyStreamAdapter.FStream := @AStream;
  MyStreamAdapter.FFileName := AFileName;

  FileInfo.dwSize := SizeOf(FileInfo);
  FileInfo.dwSpecType := IOTYPE_REDIRECT;
  FileInfo.pSpec := MyStreamAdapter;
  FileInfo.dwViewAs := 0;
  FileInfo.bUseDisplayName := False;
  FileInfo.bDeleteOnClose := False;
  FileInfo.dwFlags := 0;
  FileInfo.dwReserved1 := 0;
  FileInfo.dwReserved2 := 0;

  LoadFromSCCView(FileInfo);
end;

procedure TOutsideInViewer.LoadFromSCCView(var AViewInfo: SCCVWVIEWFILE80);
begin
  SCCCheck(
    SendMessage(FViewerWindow, SCCVW_VIEWFILE, 0, Integer(@AViewInfo)),
    ['{3F441BAB-1DA3-414E-A458-D3123AB21715}']
  );
end;

procedure TOutsideInViewer.LoadFromSCCView(var AViewInfo: SCCVWVIEWFILE40);
begin
  SCCCheck(
    SendMessage(FViewerWindow, SCCVW_VIEWFILE, 0, Integer(@AViewInfo)),
    ['{72AA43DE-F93A-4FDF-B08E-EF554A5D72AF}']
  );
end;

procedure TOutsideInViewer.UpdateSizeByContent(AMaxWidth, AMaxHeight: Integer);
var
  locIdealSize: SCCVWIDEALSIZE50 ;
  Result: LRESULT;
begin
  locIdealSize.dwSize := sizeof(SCCVWIDEALSIZE50);
  locIdealSize.dwFlags := 0;
  locIdealSize.dwMaxWidth  := AMaxWidth;
  locIdealSize.dwMaxHeight := AMaxHeight;

  Result := SendMessage(FViewerWindow, SCCVW_GETIDEALWINDOWSIZE, 0, Integer(@locIdealSize));
  if Result <> SCCVWERR_NONEFOUND then
    SCCCheck(Result, ['{0671FBD9-4732-4E8F-85FE-BBD30B2742D4}']);

  with ScreenToClient(ClientOrigin) do
  SetWindowPos(
    FViewerWindow,
    0,
    X, Y,
    locIdealSize.dwResultWidth, locIdealSize.dwResultHeight,
    SWP_NOZORDER + SWP_NOACTIVATE
  )
end;

procedure TOutsideInViewer.WMWindowPosChanged(
  var Message: TWMWindowPosChanged);
begin
  inherited;
  with ScreenToClient(ClientOrigin) do
    MoveWindow(FViewerWindow, X, Y, ClientWidth, ClientHeight, True);
end;

function TOutsideInViewer.GetFileType: string;
var
  CallResult: LRESULT;
  FileInfoData: SCCVWFILEINFO40;
begin
  Result := 'none';
  if not FIsFileLoaded then
    Exit;
  
  FileInfoData.dwSize := SizeOf(FileInfoData);
  CallResult := SendMessage(FViewerWindow, SCCVW_GETFILEINFO, 0, Integer(@FileInfoData));
  if CallResult <> SCCVWERR_NOFILE then
    SCCCheck(CallResult, ['{4982279D-AEA2-4105-9C46-BE40D8C19000}']);

  Result := FileInfoData.szFileIdName;
end;

function TOutsideInViewer.IsEmpty: Boolean;
begin
  Result := not FIsFileLoaded;
end;

function TOutsideInViewer.DoInternalFileView(AViewThisFile: Pointer): Boolean;
begin
  Result := False;
  if Assigned(OnInternalFileView) then
    Result := OnInternalFileView(Self, AViewThisFile);
end;

procedure TOutsideInViewer.SCCVWViewtHisFile(var Message: TMessage);
var
  InternalForm: TForm;
  InternalFileViewer: TOutsideInViewer;
begin
  Message.Result := SCCVWERR_UNKNOWN;
  if Message.lParam = 0 then
    Exit;

  case InternalFilesMode of
    ifmIgnore: Exit;
    ifmShowByHandler:
      if not DoInternalFileView(Pointer(Message.lParam)) then
        Exit;
    ifmShowModal, ifmShowFloat, ifmShowMDIChild:
      begin
        InternalForm := TForm.Create(Owner);
        InternalForm.Visible := False;
        InternalFileViewer := TOutsideInViewer.Create(InternalForm);
        InternalFileViewer.Parent := InternalForm;
        InternalFileViewer.Align := alClient;

        // Load into InternalFileViewer
        if PSCCVWVIEWTHISFILE40(Message.lParam)^.dwSize = SizeOf(SCCVWVIEWTHISFILE40) then
          begin
            InternalFileViewer.LoadFromSCCView(PSCCVWVIEWTHISFILE40(Message.lParam)^.sViewFile);
          end
        else if PSCCVWVIEWTHISFILE80(Message.lParam)^.dwSize = SizeOf(SCCVWVIEWTHISFILE80) then
          begin
            InternalFileViewer.LoadFromSCCView(PSCCVWVIEWTHISFILE80(Message.lParam)^.sViewFile);
          end
        else
          Exit;

        // Show InternalForm
        case InternalFilesMode of
          ifmShowModal:
            begin
              InternalForm.ShowModal;
              InternalForm.Free;
            end;
          ifmShowFloat: InternalForm.Show;
          ifmShowMDIChild: InternalForm.FormStyle := fsMDIChild;
        end;
      end;
  end;
  Message.Result := SCCVWERR_MESSAGEHANDLED;
end;

procedure TOutsideInViewer.SCCVWFileChange(var Message: TMessage);
begin
  FIsFileLoaded := (Message.lParam and SCCVW_FC_OPENED) <> 0;

  if Assigned(OnFileChange) then
    OnFileChange(Self);
end;

procedure TOutsideInViewer.SCCVWBailOut(var Message: TMessage);
var
  Handled: LongBool;
begin
  Handled := False;
  case Message.lParam of
     SCCVW_BAILOUT_MEMORY               :;
     SCCVW_BAILOUT_STREAMBAIL           :;
     SCCVW_BAILOUT_FILEOPENFAILED       :;
     SCCVW_BAILOUT_MISSINGELEMENT       :;
     SCCVW_BAILOUT_BADFILE              :;
     SCCVW_BAILOUT_PROTECTEDFILE        :;
     SCCVW_BAILOUT_DRMFILE              :;
     SCCVW_BAILOUT_SUPFILEOPENFAILS     :;
     SCCVW_BAILOUT_UNKNOWN              :;
     SCCVW_BAILOUT_EMPTYFILE            :;
     SCCVW_BAILOUT_EMPTYSECTION         :;
     SCCVW_BAILOUT_NOFILTER             :;
     SCCVW_BAILOUT_WRITEERROR           :;
     SCCVW_BAILOUT_FILECHANGED          :;
     SCCVW_BAILOUT_GPFAULT              :;
     SCCVW_BAILOUT_DIVIDEBYZERO         :;
     SCCVW_BAILOUT_NOSUPPORTEDFILE      :;
     SCCVW_BAILOUT_OTHEREXCEPTION       :;
     SCCVW_BAILOUT_NOENGINE             :;
     SCCVW_BAILOUT_NODATATORENDER       :;
     SCCVW_BAILOUT_UNKNOWNNOTVIEWED     :;
     SCCVW_BAILOUT_FILTERTIMEOUT        :;
     SCCVW_BAILOUT_CANCEL               :;
     SCCVW_BAILOUT_BADCREDENTIALS       :;
  end;
  Message.Result := Integer(Handled);
end;                                    
                                        
procedure TOutsideInViewer.SCCVWEnableApp(var Message: TMessage);
begin                                   
  if Assigned(FOnEnableApp) then        
    FOnEnableApp(Self, LongBool(Message.lParam));
end;


var
  HLibraryInstance: THandle;

function HaveSCCVWLibrary(APath: string = ''): Boolean;
const
	FileNameBufSize = 1000;
var
	FileName: string;
  dummy: PChar;
begin
  Result := (HLibraryInstance <> 0);
  if Result then
    Exit;
  if APath = '' then
    begin
      SetLength(FileName, FileNameBufSize);
      Result := SearchPath(nil, 'SCCVW.DLL', nil, FileNameBufSize, PChar(FileName), dummy) <> 0;
    end
  else
    Result := FileExists(ExcludeTrailingPathDelimiter(APath) + '\SCCVW.DLL');
end;

procedure LoadSCCVWLibrary(APath: string = '');
begin
  if HLibraryInstance <> 0 then
    Exit;
  try
    HLibraryInstance := SCCLoadViewerDLL(APath);
    if HLibraryInstance = 0 then
      RaiseLastOSError;

    VWSetupDllLoadCallback := GetProcAddress(HLibraryInstance, 'VWSetupDllLoadCallback');
    VWSetStatCallback      := GetProcAddress(HLibraryInstance, 'VWSetStatCallback');
  except
    MarkException(['{DAC6F7FE-395C-4992-A107-6CC7CB19EC81}', APath, 'sccvw.dll'])
  end;
end;

initialization
  HLibraryInstance := 0;
finalization
  if HLibraryInstance <> 0 then
    FreeLibrary(HLibraryInstance);
end.
