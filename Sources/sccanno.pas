unit sccanno;
interface
uses Types, scctype;
{
  Automatically converted by H2Pas 1.0.0 from D:\work\FPC\ooi\sccanno.tmp.h
  The following command line parameters were used:
    -e
    -p
    -D
    -v
    -w
    -o
  And handmade update after it.
}

  const
    External_library='kernel32'; {Setup as you need}

  { Pointers to basic pascal types, inserted by h2pas conversion program.}
(*
  Type
    PLongint  = ^Longint;
    PSmallInt = ^SmallInt;
    PByte     = ^Byte;
    PWord     = ^Word;
    PDWord    = ^DWord;
    PDouble   = ^Double;

type
  PPSCCANNOFINDANNOTATION41  = ^PSCCANNOFINDANNOTATION41;
  PPSCCANNOGEN  = ^PSCCANNOGEN;
  PPSCCANNOHIDEPARABREAK80  = ^PSCCANNOHIDEPARABREAK80;
  PPSCCANNOHIDEPARABREAK81  = ^PSCCANNOHIDEPARABREAK81;
  PPSCCANNOHIDETEXT40  = ^PSCCANNOHIDETEXT40;
  PPSCCANNOHIDETEXT41  = ^PSCCANNOHIDETEXT41;
  PPSCCANNOHIDETEXT80  = ^PSCCANNOHIDETEXT80;
  PPSCCANNOHIDETEXT81  = ^PSCCANNOHIDETEXT81;
  PPSCCANNOHILITESTYLE41  = ^PSCCANNOHILITESTYLE41;
  PPSCCANNOHILITESTYLE81  = ^PSCCANNOHILITESTYLE81;
  PPSCCANNOHILITETEXT40  = ^PSCCANNOHILITETEXT40;
  PPSCCANNOHILITETEXT41  = ^PSCCANNOHILITETEXT41;
  PPSCCANNOHILITETEXT81  = ^PSCCANNOHILITETEXT81;
  PPSCCANNOINSERTBITMAP42  = ^PSCCANNOINSERTBITMAP42;
  PPSCCANNOINSERTBITMAP81  = ^PSCCANNOINSERTBITMAP81;
  PPSCCANNOINSERTICON40  = ^PSCCANNOINSERTICON40;
  PPSCCANNOINSERTICON41  = ^PSCCANNOINSERTICON41;
  PPSCCANNOINSERTICON81  = ^PSCCANNOINSERTICON81;
  PPSCCANNOINSERTPARABREAK80  = ^PSCCANNOINSERTPARABREAK80;
  PPSCCANNOINSERTPARABREAK81  = ^PSCCANNOINSERTPARABREAK81;
  PPSCCANNOINSERTTEXT80  = ^PSCCANNOINSERTTEXT80;
  PPSCCANNOINSERTTEXT81  = ^PSCCANNOINSERTTEXT81;
  PPSCCANNOTATIONEVENT40  = ^PSCCANNOTATIONEVENT40;
  PPSCCANNOTATIONEVENT41  = ^PSCCANNOTATIONEVENT41;
  PPSCCPOS  = ^PSCCPOS;
  PSCCANNOFINDANNOTATION41  = ^SCCANNOFINDANNOTATION41;
  PSCCANNOFINDANNOTATION41  = ^SCCANNOFINDANNOTATION41;
  PSCCANNOGEN  = ^SCCANNOGEN;
  PSCCANNOGEN  = ^SCCANNOGEN;
  PSCCANNOHIDEPARABREAK80  = ^SCCANNOHIDEPARABREAK80;
  PSCCANNOHIDEPARABREAK80  = ^SCCANNOHIDEPARABREAK80;
  PSCCANNOHIDEPARABREAK81  = ^SCCANNOHIDEPARABREAK81;
  PSCCANNOHIDEPARABREAK81  = ^SCCANNOHIDEPARABREAK81;
  PSCCANNOHIDETEXT40  = ^SCCANNOHIDETEXT40;
  PSCCANNOHIDETEXT40  = ^SCCANNOHIDETEXT40;
  PSCCANNOHIDETEXT41  = ^SCCANNOHIDETEXT41;
  PSCCANNOHIDETEXT41  = ^SCCANNOHIDETEXT41;
  PSCCANNOHIDETEXT80  = ^SCCANNOHIDETEXT80;
  PSCCANNOHIDETEXT80  = ^SCCANNOHIDETEXT80;
  PSCCANNOHIDETEXT81  = ^SCCANNOHIDETEXT81;
  PSCCANNOHIDETEXT81  = ^SCCANNOHIDETEXT81;
  PSCCANNOHILITESTYLE41  = ^SCCANNOHILITESTYLE41;
  PSCCANNOHILITESTYLE41  = ^SCCANNOHILITESTYLE41;
  PSCCANNOHILITESTYLE81  = ^SCCANNOHILITESTYLE81;
  PSCCANNOHILITESTYLE81  = ^SCCANNOHILITESTYLE81;
  PSCCANNOHILITETEXT40  = ^SCCANNOHILITETEXT40;
  PSCCANNOHILITETEXT40  = ^SCCANNOHILITETEXT40;
  PSCCANNOHILITETEXT41  = ^SCCANNOHILITETEXT41;
  PSCCANNOHILITETEXT41  = ^SCCANNOHILITETEXT41;
  PSCCANNOHILITETEXT81  = ^SCCANNOHILITETEXT81;
  PSCCANNOHILITETEXT81  = ^SCCANNOHILITETEXT81;
  PSCCANNOINSERTBITMAP42  = ^SCCANNOINSERTBITMAP42;
  PSCCANNOINSERTBITMAP42  = ^SCCANNOINSERTBITMAP42;
  PSCCANNOINSERTBITMAP81  = ^SCCANNOINSERTBITMAP81;
  PSCCANNOINSERTBITMAP81  = ^SCCANNOINSERTBITMAP81;
  PSCCANNOINSERTICON40  = ^SCCANNOINSERTICON40;
  PSCCANNOINSERTICON40  = ^SCCANNOINSERTICON40;
  PSCCANNOINSERTICON41  = ^SCCANNOINSERTICON41;
  PSCCANNOINSERTICON41  = ^SCCANNOINSERTICON41;
  PSCCANNOINSERTICON81  = ^SCCANNOINSERTICON81;
  PSCCANNOINSERTICON81  = ^SCCANNOINSERTICON81;
  PSCCANNOINSERTPARABREAK80  = ^SCCANNOINSERTPARABREAK80;
  PSCCANNOINSERTPARABREAK80  = ^SCCANNOINSERTPARABREAK80;
  PSCCANNOINSERTPARABREAK81  = ^SCCANNOINSERTPARABREAK81;
  PSCCANNOINSERTPARABREAK81  = ^SCCANNOINSERTPARABREAK81;
  PSCCANNOINSERTTEXT80  = ^SCCANNOINSERTTEXT80;
  PSCCANNOINSERTTEXT80  = ^SCCANNOINSERTTEXT80;
  PSCCANNOINSERTTEXT81  = ^SCCANNOINSERTTEXT81;
  PSCCANNOINSERTTEXT81  = ^SCCANNOINSERTTEXT81;
  PSCCANNOTATIONEVENT40  = ^SCCANNOTATIONEVENT40;
  PSCCANNOTATIONEVENT40  = ^SCCANNOTATIONEVENT40;
  PSCCANNOTATIONEVENT41  = ^SCCANNOTATIONEVENT41;
  PSCCANNOTATIONEVENT41  = ^SCCANNOTATIONEVENT41;
  PSCCPOS  = ^SCCPOS;
  PSCCPOS  = ^SCCPOS;
*)


  { Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved.  }
  {
   |  SCCANNO.H
   |
   |  Annotation definitions
    }

  type

     PSCCPOS = ^SCCPOS;
     SCCPOS = record
          dwChangeId : VTDWORD;
          dwExtraId : VTDWORD;
          dwData1 : VTDWORD;
          dwData2 : VTDWORD;
       end;
     PPSCCPOS = ^PSCCPOS;
  {
   |  Color ref
    }

     PSCCANNOCOLORREF = ^SCCANNOCOLORREF;
     SCCANNOCOLORREF = VTDWORD;
  {
   | Macro used to set SCCANNOCOLORREF structure
    }

//{$if defined(WINDOWS)}
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  function SCCANNORGB(r,g,b : VTBYTE) : SCCANNOCOLORREF;
//(*** was #elif ****){$else defined(UNIX)}
//  { was #define dname(params) para_def_expr }
//  { argument types are unknown }
//  function SCCANNORGB(r,g,b : longint) : SCCANNOCOLORREF;
//
//(*** was #elif ****){$else defined(NLM)}
//  { was #define dname(params) para_def_expr }
//  { argument types are unknown }
//  function SCCANNORGB(r,g,b : longint) : SCCANNOCOLORREF;
//
//{$else}
//  { was #define dname(params) para_def_expr }
//  { argument types are unknown }
//  function SCCANNORGB(r,g,b : longint) : SCCANNOCOLORREF;
//
//{$endif}
  {
  |  Annotation types
   }

  const
     SCCANNO_HILITETEXT = 1;
     SCCANNO_INSERTICON = 2;     
     SCCANNO_HIDETEXT = 3;     
     SCCANNO_INSERTBITMAP = 4;     
     SCCANNO_INSERTTEXT = 5;     
     SCCANNO_INSERTPARABREAK = 6;     
     SCCANNO_HIDEPARABREAK = 7;     
  {
  |
  |  SCCANNOHIDETEXT structure
  |
   }

  type

     PSCCANNOHIDETEXT40 = ^SCCANNOHIDETEXT40;
     SCCANNOHIDETEXT40 = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          dwStartPos : SCCPOS;
          dwEndPos : SCCPOS;
       end;
     PPSCCANNOHIDETEXT40 = ^PSCCANNOHIDETEXT40;

     PSCCANNOHIDETEXT41 = ^SCCANNOHIDETEXT41;
     SCCANNOHIDETEXT41 = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          sStartPos : SCCPOS;
          sEndPos : SCCPOS;
          dwFiller1 : VTDWORD;
          dwData : VTDWORD;
       end;
     PPSCCANNOHIDETEXT41 = ^PSCCANNOHIDETEXT41;
  { sizeof(SCCANNOHIDETEXT80)  }
  { Start position of the annotation  }
  { End position of the annotation  }

     PSCCANNOHIDETEXT80 = ^SCCANNOHIDETEXT80;
     SCCANNOHIDETEXT80 = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          sStartPos : SCCPOS;
          sEndPos : SCCPOS;
          dwData : VTDWORD;
       end;
     PPSCCANNOHIDETEXT80 = ^PSCCANNOHIDETEXT80;
  { sizeof(SCCANNOHIDETEXT81)  }
  { Start position of the annotation  }
  { End position of the annotation  }

     PSCCANNOHIDETEXT81 = ^SCCANNOHIDETEXT81;
     SCCANNOHIDETEXT81 = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          sStartPos : SCCPOS;
          sEndPos : SCCPOS;
          dwData : VTSYSPARAM;
       end;
     PPSCCANNOHIDETEXT81 = ^PSCCANNOHIDETEXT81;
  {
  |
  |  SCCANNOHILITETEXT structure
  |
   }

     PSCCANNOHILITETEXT40 = ^SCCANNOHILITETEXT40;
     SCCANNOHILITETEXT40 = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          dwStartPos : SCCPOS;
          dwEndPos : SCCPOS;
          dwInteraction : VTDWORD;
          dwDisplay : VTDWORD;
       end;
     PPSCCANNOHILITETEXT40 = ^PSCCANNOHILITETEXT40;

     PSCCANNOHILITETEXT41 = ^SCCANNOHILITETEXT41;
     SCCANNOHILITETEXT41 = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          sStartPos : SCCPOS;
          sEndPos : SCCPOS;
          dwInteraction : VTDWORD;
          dwData : VTDWORD;
          dwDummy1 : VTDWORD;
          dwDummy2 : VTDWORD;
          dwDisplay : VTDWORD;
       end;
     PPSCCANNOHILITETEXT41 = ^PSCCANNOHILITETEXT41;

     PSCCANNOHILITETEXT81 = ^SCCANNOHILITETEXT81;
     SCCANNOHILITETEXT81 = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          sStartPos : SCCPOS;
          sEndPos : SCCPOS;
          dwInteraction : VTDWORD;
          dwData : VTSYSPARAM;
          dwDummy1 : VTDWORD;
          dwDummy2 : VTDWORD;
          dwDisplay : VTDWORD;
       end;
     PPSCCANNOHILITETEXT81 = ^PSCCANNOHILITETEXT81;
  {
  |
  |  SCCANNOINSERTICON40 structure
  |
   }

     PSCCANNOINSERTICON40 = ^SCCANNOINSERTICON40;
     SCCANNOINSERTICON40 = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          dwIconPos : VTDWORD;
          dwIconEnd : VTDWORD;
          dwInteraction : VTDWORD;
          hIcon : VTHANDLE;
       end;
     PPSCCANNOINSERTICON40 = ^PSCCANNOINSERTICON40;

     PSCCANNOINSERTICON41 = ^SCCANNOINSERTICON41;
     SCCANNOINSERTICON41 = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          sIconPos : SCCPOS;
          sIconEnd : SCCPOS;
          dwInteraction : VTDWORD;
          dwData : VTDWORD;
          dwDummy1 : VTDWORD;
          dwDummy2 : VTDWORD;
          hIcon : VTHANDLE;
       end;
     PPSCCANNOINSERTICON41 = ^PSCCANNOINSERTICON41;

     PSCCANNOINSERTICON81 = ^SCCANNOINSERTICON81;
     SCCANNOINSERTICON81 = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          sIconPos : SCCPOS;
          sIconEnd : SCCPOS;
          dwInteraction : VTDWORD;
          dwData : VTSYSPARAM;
          dwDummy1 : VTDWORD;
          dwDummy2 : VTDWORD;
          hIcon : VTHANDLE;
       end;
     PPSCCANNOINSERTICON81 = ^PSCCANNOINSERTICON81;
  {
  |
  |  SCCANNOINSERTBITMAP42 structure
  |
   }

     PSCCANNOINSERTBITMAP42 = ^SCCANNOINSERTBITMAP42;
     SCCANNOINSERTBITMAP42 = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          sBitmapPos : SCCPOS;
          sBitmapEnd : SCCPOS;
          dwInteraction : VTDWORD;
          dwData : VTDWORD;
          dwDummy1 : VTDWORD;
          dwDummy2 : VTDWORD;
          hBitmap : VTHANDLE;
       end;
     PPSCCANNOINSERTBITMAP42 = ^PSCCANNOINSERTBITMAP42;

     PSCCANNOINSERTBITMAP81 = ^SCCANNOINSERTBITMAP81;
     SCCANNOINSERTBITMAP81 = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          sBitmapPos : SCCPOS;
          sBitmapEnd : SCCPOS;
          dwInteraction : VTDWORD;
          dwData : VTSYSPARAM;
          dwDummy1 : VTDWORD;
          dwDummy2 : VTDWORD;
          hBitmap : VTHANDLE;
       end;
     PPSCCANNOINSERTBITMAP81 = ^PSCCANNOINSERTBITMAP81;
  {
  |
  |  SCCANNOINSERTTEXT80 structure
  |
   }

  const
     INSERTTEXTALLOCGRAN = 64;

  type

     PSCCANNOINSERTTEXT80 = ^SCCANNOINSERTTEXT80;
     SCCANNOINSERTTEXT80 = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          sTextPos : SCCPOS;
          dwData : VTDWORD;
          pText : VTLPWORD;
          dwLength : VTDWORD;
       end;
     PPSCCANNOINSERTTEXT80 = ^PSCCANNOINSERTTEXT80;

     PSCCANNOINSERTTEXT81 = ^SCCANNOINSERTTEXT81;
     SCCANNOINSERTTEXT81 = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          sTextPos : SCCPOS;
          dwData : VTSYSPARAM;
          pText : VTLPWORD;
          dwLength : VTDWORD;
       end;
     PPSCCANNOINSERTTEXT81 = ^PSCCANNOINSERTTEXT81;
  {
  |
  |  SCCANNOINSERTPARABREAK80 structure
  |
   }

     PSCCANNOINSERTPARABREAK80 = ^SCCANNOINSERTPARABREAK80;
     SCCANNOINSERTPARABREAK80 = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          sParaPos : SCCPOS;
          dwData : VTDWORD;
       end;
     PPSCCANNOINSERTPARABREAK80 = ^PSCCANNOINSERTPARABREAK80;

     PSCCANNOINSERTPARABREAK81 = ^SCCANNOINSERTPARABREAK81;
     SCCANNOINSERTPARABREAK81 = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          sParaPos : SCCPOS;
          dwData : VTSYSPARAM;
       end;
     PPSCCANNOINSERTPARABREAK81 = ^PSCCANNOINSERTPARABREAK81;
  {
  |
  |  SCCANNOHIDEPARABREAK80 structure
  |
   }

     PSCCANNOHIDEPARABREAK80 = ^SCCANNOHIDEPARABREAK80;
     SCCANNOHIDEPARABREAK80 = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          sParaPos : SCCPOS;
          dwData : VTDWORD;
       end;
     PPSCCANNOHIDEPARABREAK80 = ^PSCCANNOHIDEPARABREAK80;

     PSCCANNOHIDEPARABREAK81 = ^SCCANNOHIDEPARABREAK81;
     SCCANNOHIDEPARABREAK81 = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          sParaPos : SCCPOS;
          dwData : VTSYSPARAM;
       end;
     PPSCCANNOHIDEPARABREAK81 = ^PSCCANNOHIDEPARABREAK81;
  {
  |
  |  SCCANNOGEN structure
  |
   }

     PSCCANNOGEN = ^SCCANNOGEN;
     SCCANNOGEN = record
          dwSize : VTDWORD;
          dwUser : VTDWORD;
          sStartPos : SCCPOS;
          sEndPos : SCCPOS;
          dwInteraction : VTDWORD;
          dwData : VTSYSPARAM;
          dwFlags : VTDWORD;
          dwCookieId : VTDWORD;
       end;
     PPSCCANNOGEN = ^PSCCANNOGEN;
  { Flags that can be specified in the dwFlags portion of annotations <XXX>80 and higher.  }
  { This annotation is marked as undone.  }

  const
     SCCANNOUNDONE = $00000001;
  {
     | SCCANNOHILITESTYLE structure
      }

  type

     PSCCANNOHILITESTYLE41 = ^SCCANNOHILITESTYLE41;
     SCCANNOHILITESTYLE41 = record
          dwSize : VTDWORD;
          dwStyleId : VTDWORD;
          dwOptions : VTDWORD;
          sForeground : SCCANNOCOLORREF;
          sBackground : SCCANNOCOLORREF;
          wCharAttr : VTWORD;
       end;
     PPSCCANNOHILITESTYLE41 = ^PSCCANNOHILITESTYLE41;
  { Only apply attributes for which
                                          corresponding bits are set in the
                                          mask.  }

     PSCCANNOHILITESTYLE81 = ^SCCANNOHILITESTYLE81;
     SCCANNOHILITESTYLE81 = record
          dwSize : VTDWORD;
          dwStyleId : VTDWORD;
          dwOptions : VTDWORD;
          sForeground : SCCANNOCOLORREF;
          sBackground : SCCANNOCOLORREF;
          wCharAttr : VTWORD;
          wCharAttrMask : VTWORD;
          sUnderline : SCCANNOCOLORREF;
       end;
     PPSCCANNOHILITESTYLE81 = ^PSCCANNOHILITESTYLE81;
  { dwOptions of SCCCVWHILITESTYLE  }

  const
     SCCANNO_USEFOREGROUND = $00000001;
     SCCANNO_USEBACKGROUND = $00000002;
     SCCANNO_USECHARATTR = $00000004;
     SCCANNO_USEUNDERLINECOLOR = $00000008;
     SCCANNO_USETHINUNDERLINE = $00000010;
  {
  |
  |  SCCANNOTATIONEVENT structure
  |
   }

  type

     PSCCANNOTATIONEVENT40 = ^SCCANNOTATIONEVENT40;
     SCCANNOTATIONEVENT40 = record
          dwSize : VTDWORD;
          dwEvent : VTDWORD;
          dwUser : VTDWORD;
       end;
     PPSCCANNOTATIONEVENT40 = ^PSCCANNOTATIONEVENT40;

     PSCCANNOTATIONEVENT41 = ^SCCANNOTATIONEVENT41;
     SCCANNOTATIONEVENT41 = record
          dwSize : VTDWORD;
          dwEvent : VTDWORD;
          dwUser : VTDWORD;
          dwData : VTSYSPARAM;
       end;
     PPSCCANNOTATIONEVENT41 = ^PSCCANNOTATIONEVENT41;

  const
     SCCANNO_EVENTSINGLECLICK = $0001;     
     SCCANNO_EVENTDOUBLECLICK = $0002;     
     SCCANNO_EVENTTRANSITIONINTO = $0004;     
     SCCANNO_EVENTTRANSITIONOUTOF = $0008;     
  { Reserved for internal SCC use  }
     SCCANNO_EVENTTRANSITION = $0010;     
     SCCANNO_EVENTSINGLERIGHTCLICK = $0020;     
  {
  |  dwDisplay values for SCCANNOHILITETEXT
   }
     SCCANNO_BDEFAULT = $10000000;     
     SCCANNO_FDEFAULT = $20000000;     
     SCCANNO_USESTYLE = $40000000;     
     SCCANNO_BBLACK = $00000000;     
     SCCANNO_BDARKRED = $00000001;     
     SCCANNO_BDARKGREEN = $00000002;     
     SCCANNO_BDARKYELLOW = $00000003;     
     SCCANNO_BDARKBLUE = $00000004;     
     SCCANNO_BDARKMAGENTA = $00000005;     
     SCCANNO_BDARKCYAN = $00000006;     
     SCCANNO_BLIGHTGRAY = $00000007;     
     SCCANNO_BGRAY = $00000008;     
     SCCANNO_BRED = $00000009;     
     SCCANNO_BGREEN = $0000000A;     
     SCCANNO_BYELLOW = $0000000B;     
     SCCANNO_BBLUE = $0000000C;     
     SCCANNO_BMAGENTA = $0000000D;     
     SCCANNO_BCYAN = $0000000E;     
     SCCANNO_BWHITE = $0000000F;     
     SCCANNO_FBLACK = $00000000;     
     SCCANNO_FDARKRED = $00000010;     
     SCCANNO_FDARKGREEN = $00000020;     
     SCCANNO_FDARKYELLOW = $00000030;     
     SCCANNO_FDARKBLUE = $00000040;     
     SCCANNO_FDARKMAGENTA = $00000050;     
     SCCANNO_FDARKCYAN = $00000060;     
     SCCANNO_FLIGHTGRAY = $00000070;     
     SCCANNO_FGRAY = $00000080;     
     SCCANNO_FRED = $00000090;     
     SCCANNO_FGREEN = $000000A0;     
     SCCANNO_FYELLOW = $000000B0;     
     SCCANNO_FBLUE = $000000C0;     
     SCCANNO_FMAGENTA = $000000D0;     
     SCCANNO_FCYAN = $000000E0;     
     SCCANNO_FWHITE = $000000F0;     
  {
  | SCCANNOFINDANNOTATION41 structure
   }

  type

     PSCCANNOFINDANNOTATION41 = ^SCCANNOFINDANNOTATION41;
     SCCANNOFINDANNOTATION41 = record
          dwSize : VTDWORD;
          dwFindOptions : VTDWORD;
          dwUserTest : VTDWORD;
          sSearchPos : SCCPOS;
          dwUserResult : VTDWORD;
          sStartPos : SCCPOS;
          sEndPos : SCCPOS;
          dwData : VTSYSPARAM;
       end;
     PPSCCANNOFINDANNOTATION41 = ^PSCCANNOFINDANNOTATION41;
  {
  | dwFindOptions for SCCANNOFINDANNOTATION
  | note: can be or'ed with SCCANNO_ABSOLUTE or SCCANNO_MASK
   }

  const
     SCCANNO_FINDFIRST = 1;
     SCCANNO_FINDLAST = 2;
     SCCANNO_FINDPREV = 3;
     SCCANNO_FINDNEXT = 4;
     SCCANNO_FINDFIRSTFROMPOS = 5;
     SCCANNO_LASTFINDFLAG = 5;
     SCCANNO_MASK = $1000;
     SCCANNO_ABSOLUTE = $2000;
  {
   |  dwUser flags for internal annotations (bookmarks, hyperlinks, etc.)
    }
  {
  |   Bad design! No supper for you!
  |   The use of these bits (OR'ed with the ACC)
  |   (e.g. vwanno.cpp:2460)
  |   insure that the size of a file being searched
  |   cannot exceed 1MB (previous version) or 32MB (this version)
  |   Compacting the bits until this can be fixed for real.
  |   Temporary fix for BUG 6295451  jrw  9/13/07
   }
     SCCANNO_USERBOOKMARK = $82000000;
     SCCANNO_USERHYPER = $84000000;     
     SCCANNO_USERVWSEARCH = $88000000;     
     SCCANNO_USERSEARCH = $90000000;     
     SCCANNO_USERPAGE = $a0000000;     
     SCCANNO_USEROBJECT = $c0000000;     
  { Any of the above.  }
     SCCANNO_LOOKINGFORNONTEXT = $80000000;     
  {
  | Internal use of dwDisplay
   }
     SCCANNO_STYLESEARCH = $00001000;     
     SCCANNO_STYLEOBJECT = $00001001;     
     SCCANNO_STYLEHYPER = $00001002;     
     SCCANNO_STYLEBOOKMARK = $00001004;

implementation

function SCCANNORGB(r,g,b : VTBYTE) : SCCANNOCOLORREF;
begin
  SCCANNORGB:=SCCANNOCOLORREF(((VTBYTE(r)) or ((VTDWORD(VTBYTE(g))) shl 8)) or ((VTDWORD(VTBYTE(b))) shl 16));
end;

end.
