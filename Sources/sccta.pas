unit sccta;
interface
uses scctype, sccda;
{
  Automatically converted by H2Pas 1.0.0 from D:\work\FPC\ooi\sccta.tmp.h
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
//  PVTHTEXT  = ^VTHTEXT;
//  PVTLPHTEXT  = ^VTLPHTEXT;


  { Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved.  }
  {
  |   Text Access
  |   Include File sccta.h
  |
  |   TTTTT    A
  |     T     A A
  |     T    A   A
  |     T    AAAAA
  |     T    A   A
  |     T    A   A
  |
  |
 }

  {
  |  T Y P E D E F S
 }
  type

     VTHTEXT = VTHDOC;
     PVTHTEXT = ^VTHTEXT;

     VTLPHTEXT = VTLPHDOC;
     PVTLPHTEXT = ^VTLPHTEXT;
  {
  |  P R O T O T Y P E S
  }
  function TAOpenText(hDoc:VTHDOC; phText:VTLPHTEXT):DAERR;cdecl;external External_library name 'TAOpenText';
  function TACloseText(hText:VTHTEXT):DAERR;cdecl;external External_library name 'TACloseText';
  function TAReadFirst(hText:VTHTEXT; lpBuf:VTLPBYTE; dwBufSize:VTDWORD; lpRet:VTLPDWORD):DAERR;cdecl;external External_library name 'TAReadFirst';
  function TAReadNext(hText:VTHTEXT; pText:VTLPBYTE; dwBufSize:VTDWORD; lpRetCount:VTLPDWORD):DAERR;cdecl;external External_library name 'TAReadNext';

implementation

end.
