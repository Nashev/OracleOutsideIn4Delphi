unit scctype;
interface
uses Types;
{
  Automatically converted by H2Pas 1.0.0 from D:\work\FPC\ooi\scctype.tmp.h
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
{
  |  Outside In Viewer Technology - Include
  |
  |  Include:      SCCTYPE.H
  |  Environment:  Portable
  |  Function:     Define the Base VT* types
  |
}

type
  UINT_PTR  = LongWord;
  DWORD_PTR = LongWord;
  LONG_PTR  = LongInt;

  VTBOOL = LongBool;
  VTBYTE = byte;
  VTCHAR = char;
  VTDWORD = dword;
  VTFLOAT = single;
  VTLONG = longint;
  VTWORD = word;
  VTSHORT = smallint;
  VTOFF_T = int64;

  VTHANDLE = Pointer;
  VTHPALETTE = VTHANDLE;

  VTLPBOOL = ^VTBOOL;
  VTLPBYTE = ^VTBYTE;
  VTLPCSTR = ^VTCHAR;// const
  VTLPFLOAT = ^VTFLOAT;
  VTTCHAR = VTCHAR;
  VTLPCTSTR = ^VTTCHAR;// const

  VTWCHAR = word;
  VTLPWSTR = ^VTWCHAR;
  VTLPCWSTR = ^VTWCHAR;// const

  VTLPDWORD = ^VTDWORD;
  VTLPWORD = ^VTWORD;
  VTLPSHORT = ^VTSHORT;

  VTLPHANDLE = ^VTHANDLE;
  VTLPLONG = ^VTLONG;

  VTLPSTR = ^VTCHAR;
  VTLPTSTR = ^VTTCHAR;

  VTLPVOID = Pointer;//^VTVOID;

  VTCRITICAL = Pointer;//CRITICAL_SECTION;
  VTSYSPARAM = DWORD_PTR;
  VTSYSVAL = pointer;

  {#define VTVOID              void }

implementation
end.
