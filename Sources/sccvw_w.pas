unit sccvw_w;
interface
uses scctype, Windows, Messages;
{
  Automatically converted by H2Pas 1.0.0 from D:\work\FPC\ooi\sccvw_w.tmp.h
  The following command line parameters were used:
    -e
    -p
    -D
    -v
    -w
    -o
  And handmade update after it.
}

  { Pointers to basic pascal types, inserted by h2pas conversion program.}
//  Type
//    PLongint  = ^Longint;
//    PSmallInt = ^SmallInt;
//    PByte     = ^Byte;
//    PWord     = ^Word;
//    PDWord    = ^DWord;
//    PDouble   = ^Double;
//
//  Type
//  PLPSCCVWPRINTEX40  = ^LPSCCVWPRINTEX40;
//  PPSCCVWDRAWPAGE40  = ^PSCCVWDRAWPAGE40;
//  PPSCCVWDRAWPAGE41  = ^PSCCVWDRAWPAGE41;
//  PPSCCVWDRAWPAGEINFO  = ^PSCCVWDRAWPAGEINFO;
//  PSCCVWDRAWPAGE40  = ^SCCVWDRAWPAGE40;
//  PSCCVWDRAWPAGE40  = ^SCCVWDRAWPAGE40;
//  PSCCVWDRAWPAGE41  = ^SCCVWDRAWPAGE41;
//  PSCCVWDRAWPAGE41  = ^SCCVWDRAWPAGE41;
//  PSCCVWDRAWPAGEINFO  = ^SCCVWDRAWPAGEINFO;
//  PSCCVWDRAWPAGEINFO  = ^SCCVWDRAWPAGEINFO;
//  PSCCVWPRINTEX40  = ^SCCVWPRINTEX40;
//  PSCCVWPRINTEX40  = ^SCCVWPRINTEX40;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved.  }
  {
    |  SCC Viewer Technology - Include
    |
    |  Include:       SCCVW_W.H (included in SCCVW.H)
    |  Environment:   Windows
    |  Function:      Windows specific definitions for
    |                 Outside In Viewer Technology Specification 4.0
    |
     }
{$ifndef SCC_PACK_SET}

  const
     SCC_PACK_SET = 1;     
     SCC_PACKED_BY_SCCVW_W_H = 1;     
(** unsupported pragma#pragma pack(push,8)*)
{$endif}
  { SCC_PACK_SET  }

  const
     SCCVW_START = WM_USER;
  { #define SCCVIEWER_DLL(a)    "SC"#a"VW.DLL" }
  { #define SCCVIEWER_CLASS(a)  "SCCVIEWER"#a }
  {
    |  Size defines
     }
     SCCVW_DISPLAYNAMEMAX = MAX_PATH;
     SCCVW_FILENAMEMAX = MAX_PATH;     
     SCCVW_FILEIDNAMEMAX = 80;     
     SCCVW_DEFAULTMENUMAX = 5000;     
{$define SCCVW_ENTRY}  
  {
   | The following structures/constants/etc. are defined in the Win32V-specific
   | header file
   |
   |  But the application interface won't have Win32V stuff exposed,
   |  so we still need these definitions
    }
  {
    |
    |  SCCVWPRINTEX structures
    |
     }
  { sizeof(SCCVWPRINTEX40)  }
  { in twips  }

  type

     PSCCVWPRINTEX40 = ^SCCVWPRINTEX40;
     SCCVWPRINTEX40 = record
          dwSize : VTDWORD;
          dwFlags : VTDWORD;
          hParentWnd : HWND;
          hPrinterDC : HDC;
          szPrinter : array[0..127] of VTTCHAR;
          szPort : array[0..127] of VTTCHAR;
          szDriver : array[0..127] of VTTCHAR;
          bPrintSelectionOnly : VTBOOL;
          bDoSetupDialog : VTBOOL;
          bDoAbortDialog : VTBOOL;
          bPrintHeader : VTBOOL;
          bStartDocAlreadyDone : VTBOOL;
          szJobName : array[0..39] of VTTCHAR;
          dwTopMargin : VTDWORD;
          dwBottomMargin : VTDWORD;
          dwLeftMargin : VTDWORD;
          dwRightMargin : VTDWORD;
          szDefaultFont : array[0..31] of VTTCHAR;
          wDefaultFontSize : VTWORD;
          pAbortProc : FARPROC;
          bCollate : VTBOOL;
          dwCopies : VTDWORD;
          hDevMode : VTHANDLE;
       end;
     LPSCCVWPRINTEX40 = PSCCVWPRINTEX40;
     PLPSCCVWPRINTEX40 = ^LPSCCVWPRINTEX40;

  const
     SCCVW_USEPRINTERDC = $00000001;     
     SCCVW_USEPRINTERNAME = $00000002;     
     SCCVW_USEPRINTSELECTIONONLY = $00000004;     
     SCCVW_USEJOBNAME = $00000008;     
     SCCVW_USEMARGINS = $00000010;     
     SCCVW_USEPRINTHEADER = $00000020;     
     SCCVW_USEDEFAULTFONT = $00000040;     
     SCCVW_USEABORTPROC = $00000080;     
  { no longer used  }
     SCCVW_DONTDISABLEPARENTS = $00000100;     
     SCCVW_USECOLLATE = $00000200;     
     SCCVW_USECOPIES = $00000400;     
     SCCVW_USEDEVMODE = $00000800;     
  {
    |
    |  SCCVWDRAWPAGE40 structure
    |
     }

  type

     PSCCVWDRAWPAGE40 = ^SCCVWDRAWPAGE40;
     SCCVWDRAWPAGE40 = record
          dwSize : VTDWORD;
          dwPageToDraw : VTDWORD;
          dwReserved : VTDWORD;
          dwFlags : VTDWORD;
          lUnitsPerInch : VTLONG;
          lFormatWidth : VTLONG;
          lFormatHeight : VTLONG;
          lTop : VTLONG;
          lLeft : VTLONG;
          lBottom : VTLONG;
          lRight : VTLONG;
          lResultTop : VTLONG;
          lResultLeft : VTLONG;
          lResultBottom : VTLONG;
          lResultRight : VTLONG;
          hOutputDC : HDC;
          hFormatDC : HDC;
       end;
     PPSCCVWDRAWPAGE40 = ^PSCCVWDRAWPAGE40;
  {
    |
    |  SCCVWDRAWPAGE41 structure
    |
     }

     PSCCVWDRAWPAGE41 = ^SCCVWDRAWPAGE41;
     SCCVWDRAWPAGE41 = record
          dwSize : VTDWORD;
          dwPageToDraw : VTDWORD;
          dwReserved : VTDWORD;
          dwFlags : VTDWORD;
          lUnitsPerInch : VTLONG;
          lFormatWidth : VTLONG;
          lFormatHeight : VTLONG;
          lTop : VTLONG;
          lLeft : VTLONG;
          lBottom : VTLONG;
          lRight : VTLONG;
          lResultTop : VTLONG;
          lResultLeft : VTLONG;
          lResultBottom : VTLONG;
          lResultRight : VTLONG;
          hOutputDC : HDC;
          hFormatDC : HDC;
          hPalette : HPALETTE;
       end;
     PPSCCVWDRAWPAGE41 = ^PSCCVWDRAWPAGE41;

  const
     SCCVW_DPFLAG_RETURNPALETTE = $0001;     
     SCCVW_DPFLAG_NOTMETAFILE = $0002;     
     SCCVW_DPFLAG_IGNOREBACKGROUND = $0004;     
     SCCVW_DPFLAG_DETERMINEOUTPUTTYPE = $0008;     
  {
    |
    |  SCCVWDRAWPAGEINFO structure
    |
     }

  type

     PSCCVWDRAWPAGEINFO = ^SCCVWDRAWPAGEINFO;
     SCCVWDRAWPAGEINFO = record
          dwSize : VTDWORD;
          dwPageToDraw : VTDWORD;
          dwReserved : VTDWORD;
          dwFlags : VTDWORD;
          lUnitsPerInch : VTLONG;
          lFormatWidth : VTLONG;
          lFormatHeight : VTLONG;
          hOutputDC : HDC;
          hFormatDC : HDC;
       end;
     PPSCCVWDRAWPAGEINFO = ^PSCCVWDRAWPAGEINFO;
{$ifdef SCC_PACKED_BY_SCCVW_W_H}
(** unsupported pragma#pragma pack(pop)*)
{$undef SCC_PACKED_BY_SCCVW_W_H}
{$undef SCC_PACK_SET}
{$endif}
  { SCC_PACKED_BY_SCCVW_W_H  }

implementation


end.
