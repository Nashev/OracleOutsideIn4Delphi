unit sccra;
interface
uses
  scctype, sccda, sccio;

{
  Automatically converted by H2Pas 1.0.0 from D:\work\FPC\ooi\sccra.tmp.h
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
    External_library='sccra.dll'; {Setup as you need}

//  { Pointers to basic pascal types, inserted by h2pas conversion program.}
//  Type
//    PLongint  = ^Longint;
//    PSmallInt = ^SmallInt;
//    PByte     = ^Byte;
//    PWord     = ^Word;
//    PDWord    = ^DWord;
//    PDouble   = ^Double;
//
//  Type
//  PVTHREMOTE  = ^VTHREMOTE;
//  PVTLPHREMOTE  = ^VTLPHREMOTE;
//{$IFDEF FPC}
//{$PACKRECORDS C}
//{$ENDIF}


  { Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved.  }
  {
      |	Remote Filter Access
      |	Include File sccra.h
      |
      |	RRRR     A
      |	R   R   A A
      |	RRRR   A   A
      |	R R    AAAAA
      |	R  R   A   A
      |	R   R  A   A
      |
      |
   }

  {
  |  T Y P E D E F S
   }

  type

     PVTHREMOTE = ^VTHREMOTE;
     VTHREMOTE = VTHDOC;

     PVTLPHREMOTE = ^VTLPHREMOTE;
     VTLPHREMOTE = VTLPHDOC;
  {
  |  P R O T O T Y P E S
  }
  function RAOpenRemote(hDoc:VTHDOC; phRemote:VTLPHREMOTE):DAERR; cdecl;external External_library name 'RAOpenRemote';
  function RACloseRemote(hRemote:VTHREMOTE):DAERR;                cdecl;external External_library name 'RACloseRemote';
  function RAGetRemoteData(hRemote:VTHREMOTE; pRequest:PIORFAREQUEST; var ppDataBuffer:VTLPBYTE; var pdwDataSize:VTDWORD):DAERR;cdecl;external External_library name 'RAGetRemoteData';


implementation


end.
