unit xsccvw;
interface
uses sccvw;
{
  Automatically converted by H2Pas 1.0.0 from D:\work\FPC\ooi\xsccvw.tmp.h
  The following command line parameters were used:
    -e
    -p
    -D
    -v
    -w
    -o
  And handmade update after it.
}

//  const
//    External_library='kernel32'; {Setup as you need}
//
//  { Pointers to basic pascal types, inserted by h2pas conversion program.}
//  Type
//    PLongint  = ^Longint;
//    PSmallInt = ^SmallInt;
//    PByte     = ^Byte;
//    PWord     = ^Word;
//    PDWord    = ^DWord;
//    PDouble   = ^Double;

//  Type
//  P_SccViewerCallbackStruct  = ^_SccViewerCallbackStruct;
//  PSccViewerCallbackPtr  = ^SccViewerCallbackPtr;
//  PSccViewerCallbackStruct  = ^SccViewerCallbackStruct;
//  PSccViewerWidget  = ^SccViewerWidget;
//  PSccViewerWidgetClass  = ^SccViewerWidgetClass;


  { Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved.  }
  {
  |   SCC Viewer Technology  X Windows Implementation
  |
  |   Include File Xsccvw.h (SCC Viewer Widget Public Header File)
  |
  |   Outside In
   }
{$ifndef xsccvw_h}
{$define xsccvw_h}
{$ifndef UNIX}
{$define UNIX}
{$endif}
{$ifndef XWINDOWS}
{$define XWINDOWS}
{$endif}

    var
       sccViewerWidgetClass : WidgetClass;cvar;external;

  type

     PSccViewerWidgetClass = ^SccViewerWidgetClass;
     SccViewerWidgetClass = _SccViewerClassRec;

     PSccViewerWidget = ^SccViewerWidget;
     SccViewerWidget = _SccViewerRec;

{$ifndef XtIsSccViewerWidget}
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }
  function XtIsSccViewerWidget(w : longint) : longint;

{$endif}
  { Resource Definition  }

  const
     XtNsccViewerScrollBarWidth = 'sccViewerScrollBarWidth';
     XtNsccViewerHScrollBar = 'sccViewerHorizontalScrollBar';
     XtNsccViewerVScrollBar = 'sccViewerVerticalScrollBar';
     XtNsccViewerViewWindow = 'sccViewerViewWindow';
     XtNsccViewerMessageFont = 'sccViewerMessageFont';
     XtNsccViewerCallback = 'sccViewerCallback';
     XtCSccViewerScrollBarWidth = 'SccViewerScrollBarWidth';     
     XtCSccViewerHScrollBar = 'SccViewerHorizontalScrollBar';     
     XtCSccViewerVScrollBar = 'SccViewerVerticalScrollBar';     
     XtCSccViewerViewWindow = 'SccViewerViewWindow';     
     XtCSccViewerMessageFont = 'SccViewerMessageFont';     
     XtCSccViewerCallback = 'SccViewerCallback';     
  { Public Function Declaration  }

  function XsccViewerAcceptMessage(sccViewer:Widget; dwMessage:VTDWORD; wParam:VTSYSVAL; lParam:VTSYSVAL):longint;cdecl;external External_library name 'XsccViewerAcceptMessage';


  type

     P_SccViewerCallbackStruct = ^_SccViewerCallbackStruct;
     _SccViewerCallbackStruct = record
          reason : longint;
          dwMessage : dword;
          wParam : dword;
          lParam : dword;
          lAppReturn : longint;
       end;
     SccViewerCallbackStruct = _SccViewerCallbackStruct;
     PSccViewerCallbackStruct = ^SccViewerCallbackStruct;
     SccViewerCallbackPtr = P_SccViewerCallbackStruct;
     PSccViewerCallbackPtr = ^SccViewerCallbackPtr;
{$endif}
  { sccvw.h  }

implementation

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function XtIsSccViewerWidget(w : longint) : longint;
    begin
       XtIsSccViewerWidget:=XtIsSubclass(w,sccViewerWidgetClass);
    end;


end.
