unit xsccvwp;
interface
uses
  sccvw,
  X11_IntrinsicP, X11_CoreP;
{
  Automatically converted by H2Pas 1.0.0 from D:\work\FPC\ooi\xsccvwp.h
  The following command line parameters were used:
    -e
    -p
    -D
    -v
    -w
    -o
  And handmade update after it.
}

{ Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved.  }

{ Widget Class Declaration  }
type
  PSccViewerClassPart = ^SccViewerClassPart;
  SccViewerClassPart = record
    dummy: longint;
  end;

  PSccViewerClassRec = ^SccViewerClassRec;
  SccViewerClassRec = record
    core_class: CoreClassPart;
    sccViewer_class: SccViewerClassPart;
  end;

//    var
//       sccViewerClassRec : SccViewerClassRec;cvar;external;

{ Widget Instance Declaration  }
type
  PSccViewerPart = ^SccViewerPart;
  SccViewerPart = record
    // resources
    sccViewerScrollBarWidth: Dimension;
    sccViewerHScrollBar: Widget;
    sccViewerVScrollBar: Widget;
    sccViewerViewWindow: Widget;
    sccViewerMessageFont: PXFontStruct;
    sccViewerCallBack: XtCallbackList;
    // Private data
    pViewInfo: pointer;
  end;

  PSccViewerRec = ^SccViewerRec;
  SccViewerRec = record
    core: CorePart;
    sccViewer: SccViewerPart;
  end;

implementation


end.
