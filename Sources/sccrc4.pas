unit sccrc4;
interface
uses scctype;
type
  TArray0to255OfVTBYTE = array[0..255] of VTBYTE;

{
  Automatically converted by H2Pas 1.0.0 from D:\work\FPC\ooi\sccrc4.tmp.h
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
  






  Type
  VTRC4_CTXtag = record
          state : TArray0to255OfVTBYTE;
          x : VTBYTE;
          y : VTBYTE;
       end;
  VTRC4_CTX = VTRC4_CTXtag;
  PVTRC4_CTX  = ^VTRC4_CTX;
  PPVTRC4_CTX  = ^PVTRC4_CTX;
  PVTRC4_CTXtag  = ^VTRC4_CTXtag;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved.  }
{$ifndef _SCCRC4_H}
{$ifdef WINDOWS}
{$ifndef SCC_PACK_SET}

  const
     SCC_PACK_SET = 1;     
     SCC_PACKED_BY_SCCRC4_H = 1;     
(** unsupported pragma#pragma pack(push,8)*)
{$endif}
  { SCC_PACK_SET  }
{$endif}
  { WINDOWS  }

  { SCC_PACKED_BY_SCCRC4_H  }
{$endif}
  { _SCCRC4_H  }

implementation


end.
