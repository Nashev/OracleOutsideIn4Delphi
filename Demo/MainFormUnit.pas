unit MainFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OutsideInViewerUnit, StdCtrls, ComCtrls, ShellCtrls,
  ExtCtrls, ActnList;

type
  TMainForm = class(TForm)
    grp1: TGroupBox;
    pnl2: TPanel;
    btnFree: TButton;
    btnText: TButton;
    ShellTreeView1: TShellTreeView;
    ShellListView1: TShellListView;
    spl1: TSplitter;
    pnl1: TPanel;
    ShellComboBox1: TShellComboBox;
    pnlViewer: TPanel;
    spl2: TSplitter;
    rb1: TRadioButton;
    rbAsStream: TRadioButton;
    lblFileType: TLabel;
    ActionList: TActionList;
    actClose: TAction;
    procedure FormCreate(Sender: TObject);
    procedure ShellListView1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure btnTextClick(Sender: TObject);
    procedure actCloseClick(Sender: TObject);
    procedure ViewerFileChange(Sender: TObject);
    procedure lblFileTypeClick(Sender: TObject);
    procedure actCloseUpdate(Sender: TObject);
  private
    FViewer: TOutsideInViewer;
    FS: TFileStream;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation


{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  LoadSCCVWLibrary(ExtractFileDir(Application.ExeName)+'\Plugins\OracleOutsideInTechnology');
  FViewer := TOutsideInViewer.Create(Self);
  FViewer.Parent := pnlViewer;
  FViewer.Align := alClient;
  FViewer.Show;
  FViewer.InternalFilesMode := ifmShowFloat;
  FViewer.OnFileChange := ViewerFileChange;
end;

procedure TMainForm.ShellListView1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
  if Item <> nil then
    if not ShellListView1.Folders[Item.Index].IsFolder then
      begin
//        FViewer.LoadFromFile(ShellListView1.Folders[Item.Index].PathName);
        Caption := ShellListView1.Folders[Item.Index].PathName;
      end;
end;

procedure TMainForm.btnTextClick(Sender: TObject);
begin
  FViewer.CloseFile;
  FreeAndNil(FS);
  if rbAsStream.Checked then
    begin
      FS := TFileStream.Create(
        ShellListView1.Folders[ShellListView1.ItemFocused.Index].PathName, fmOpenRead
      );
      FViewer.LoadFromStream(TStream(FS), ExtractFileName(ShellListView1.Folders[ShellListView1.ItemFocused.Index].PathName));
    end
  else
    begin
      FViewer.LoadFromFile(ShellListView1.Folders[ShellListView1.ItemFocused.Index].PathName);
    end;
end;

procedure TMainForm.actCloseClick(Sender: TObject);
begin
  FViewer.CloseFile;
end;

procedure TMainForm.ViewerFileChange(Sender: TObject);
begin
  lblFileType.Caption := FViewer.GetFileType;
end;

procedure TMainForm.lblFileTypeClick(Sender: TObject);
begin
  ViewerFileChange(nil)
end;

procedure TMainForm.actCloseUpdate(Sender: TObject);
begin
  actClose.Enabled := FViewer.IsFileLoaded;
end;

end.
