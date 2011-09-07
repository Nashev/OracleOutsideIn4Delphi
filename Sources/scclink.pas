unit scclink;
interface
uses
  Windows, SysUtils;
{
  Automatically converted by H2Pas 1.0.0 from
  D:\work\FPC\ooi\sources\api\c_sources\scclink.h
  The following command line parameters were used:
    -e
    -p
    -D
    -v
    -w
    -o
  And handmade update after it.
  D:\work\FPC\ooi\sources\api\c_sources\scclink.c
}

  { Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved.  }

function SCCLoadViewerDLL(AViewerPath: string): THandle;
function SCCGetModulePath(AHInststance: THandle): string;

implementation

function SCCLoadViewerDLL(AViewerPath: string): THandle;
begin
  if AViewerPath = '' then
    AViewerPath := 'SCCVW.DLL'
  else
    AViewerPath :=  ExcludeTrailingPathDelimiter(AViewerPath) + '\SCCVW.DLL';
  Result := LoadLibraryEx(PChar(AViewerPath), 0, LOAD_WITH_ALTERED_SEARCH_PATH);
end;

function SCCGetModulePath(AHInststance: THandle): string;
const
	FileNameBufSize = 1000;
var
	FileName: string;
begin
  SetLength(FileName, FileNameBufSize);
  GetModuleFileName(AHInststance, PChar(FileName), FileNameBufSize);
  Result := ExtractFilePath(FileName);
end;

end.
