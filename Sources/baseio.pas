
unit baseio;
interface
uses scctype;
{
  Automatically converted by H2Pas 1.0.0 from D:\work\FPC\ooi\baseio.tmp.h
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
  
type
  PVTVOID  = Pointer;
  HIOFILE = VTSYSVAL;
  IOERR = longint;
  TArray0to2OfPVTVOID = array[0..2] of PVTVOID;
  IOSEEK64PROC = function (hFile:HIOFILE; wFrom:VTWORD; Offset:VTOFF_T):IOERR;cdecl;
  IOTELL64PROC = function (hFile:HIOFILE; var Offset:VTOFF_T):IOERR;cdecl;
  IOOPENPROC = function (var phFile:HIOFILE; dwType:VTDWORD; pSpec: Pointer; dwFlags:VTDWORD):IOERR;cdecl;
  IOCLOSEPROC = function (hFile:HIOFILE):IOERR;cdecl;
  IOREADPROC = function (hFile:HIOFILE; var pData:VTBYTE; dwSize:VTDWORD; var pCount:VTDWORD):IOERR;cdecl;
  IOWRITEPROC = function (hFile:HIOFILE; var pData:VTBYTE; dwSize:VTDWORD; var pCount:VTDWORD):IOERR;cdecl;
  IOSEEKPROC = function (hFile:HIOFILE; wFrom:VTWORD; dwOffset:VTLONG):IOERR;cdecl;
  IOTELLPROC = function (hFile:HIOFILE; var dwOffset:VTDWORD):IOERR;cdecl;
  IOGETINFOPROC = function (hFile:HIOFILE; dwInfoId:VTDWORD; pInfo: Pointer):IOERR;cdecl;

  PBASEIO  = ^TBASEIO;
  TBASEIO = record
    pClose : IOCLOSEPROC;
    pRead : IOREADPROC;
    pWrite : IOWRITEPROC;
    pSeek : IOSEEKPROC;
    pTell : IOTELLPROC;
    pGetInfo : IOGETINFOPROC;
    pOpen : IOOPENPROC;
    pSeek64 : IOSEEK64PROC;
    pTell64 : IOTELL64PROC;
    aDummy : TArray0to2OfPVTVOID;
  end;

  PHIOFILE  = ^HIOFILE;
  PIOERR  = ^IOERR;
  PVTTCHAR  = ^VTTCHAR;

  PIOGENSECONDARY  = ^IOGENSECONDARY;
  IOGENSECONDARY = record
    dwSize : VTDWORD;
    pFileName : PVTTCHAR;
    dwSpecType : VTDWORD;
    pSpec : PVTVOID;
    dwOpenFlags : VTDWORD;
  end;

  PVTWORD  = ^VTWORD;

  PIOGENSECONDARYW  = ^IOGENSECONDARYW;
  IOGENSECONDARYW = record
    dwSize : VTDWORD;
    pFileName : PVTWORD;
    dwSpecType : VTDWORD;
    pSpec : PVTVOID;
    dwOpenFlags : VTDWORD;
  end;

  PPBASEIO  = ^PBASEIO;
  PPIOGENSECONDARY  = ^PIOGENSECONDARY;
  PPIOGENSECONDARYW  = ^PIOGENSECONDARYW;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved.  }
  {* BASEIO.H * }
  {
   This file contains the #defines and typedefs for the fundamental
   OIT abstraction layer on file I/O.
   }
{$ifndef BASEIO_H}
{$ifdef WINDOWS}
{$ifndef SCC_PACK_SET}

  const
     SCC_PACK_SET = 1;     
     SCC_PACKED_BY_BASEIO_H = 1;     
(** unsupported pragma#pragma pack(push,8)*)
{$endif}
  { SCC_PACK_SET  }
{$endif}
  { WINDOWS  }
  {WIN32 }
  {UNIX }
  {NLM }
  {
    |   A file handle
     }

  const
     HIOFILE_INVALID = -(1);     
  {
    |   Error handling typedef and defines
     }

  const
     IOERR_OK = 0;     
     IOERR_TRUE = 0;     
     IOERR_UNKNOWN = -(1);     
     IOERR_INVALIDSPEC = -(2);     
  { The file spec given (IOSPEC) cannot be used in this environment  }
     IOERR_ALLOCFAIL = -(3);     
  { The IO system could not allocate memory  }
     IOERR_BADPARAM = -(4);     
  { The one of the parameter contained bad or insufficient info  }
     IOERR_NOFILE = -(5);     
  { File not found  }
     IOERR_NOCREATE = -(6);     
  { File could not be created  }
     IOERR_BADINFOID = -(7);     
  { dwInfoId parameter to IOGetInfo was invalid  }
     IOERR_SEEKOUTOFRANGE = -(8);     
  { Seeking out of range in a range type file  }
     IOERR_EOF = -(9);     
  { End of file reached  }
     IOERR_FALSE = -(10);     
     IOERR_LOCKFAIL = -(11);     
  { Failed to lock allocated memory (Windows)  }
     IOERR_BADFILESIZE = -(12);     
     IOERR_INVALIDSTATE = -(13);     
     IOERR_SHORTREAD = -(14);     
  { Failed to read the expected bytecount  }
     IOERR_SHORTWRITE = -(15);     
  { Failed to write the expected bytecount  }
     IOERR_UNABLETOEXPAND = -(16);     
  { Tried to expand an OLE2 file and failed.  }
     IOERR_BADFILENAME = -(17);     
  { Full file name length exceed the exceeds OS limits  }
  {
    |   Base IO routine definitions
     }
{$ifndef NLM}

{$endif}

  type







  {
   | Encryption routines
    }

     IOUTMD5 = function (var pMsg:VTBYTE; dwMsgLength:VTDWORD; var pDigest:VTBYTE):IOERR;cdecl;
  {
    |   Defines for dwFlags in IOOPEN function
     }

  const
     IOOPEN_READ = $00000001;     
     IOOPEN_WRITE = $00000002;     
     IOOPEN_READWRITE = $00000003;     
     IOOPEN_DELETEONCLOSE = $00000004;     
     IOOPEN_NOOLESTORAGE = $00000008;     
     IOOPEN_CREATE = $00000010;     
  { For Transformation Server }
     IOOPEN_CLEAR = $00000020;     
  { For IX on Unix; when we used to open a file read/write, the contents would not be cleared out before we started to write to the file  }
     IOOPEN_RANDOMACCESS = $00000040;     
  { Windows optimization for random access caching  }
     IOOPEN_MEMORYMAPPED = $00000080;     
  { Optimization to load entire file into RAM before processing  }
     IOOPEN_WRITEXCLUSIVE = $00000100;     
  { For writing options files. We don't want multiple writes at the same time.  }
  {
    |   Defines for wFrom in IOSEEK function
     }
     IOSEEK_TOP = 0;     
     IOSEEK_CURRENT = 1;     
     IOSEEK_BOTTOM = 2;     
  {
    |   Defines for dwInfoId in IOGETINFO function
     }
     IOGETINFO_OSHANDLE = 1;     
     IOGETINFO_HSPEC = 2;     
     IOGETINFO_FILENAME = 3;     
     IOGETINFO_ISOLE2STORAGE = 4;     
     IOGETINFO_OLE2CLSID = 5;     
     IOGETINFO_PATHNAME = 6;     
  { Human readable path name to the file (includes file name)  }
     IOGETINFO_ISOLE2ROOTSTORAGE = 7;     
     IOGETINFO_ISOLE2SUBSTORAGE = 8;     
     IOGETINFO_ISOLE2SUBSTREAM = 9;     
     IOGETINFO_PARENTHANDLE = 10;     
     IOGETINFO_FILESIZE = 11;     
     IOGETINFO_ISREADONLY = 12;     
     IOGETINFO_TIMEDATE = 13;     
  { # seconds since Jan.1, 1970  }
     IOGETINFO_PATHTYPE = 14;     
  { OITYPE of the path returned by IOGETINFO_PATHNAME,
                                                 this can be different than the original spec type
                                                 in the case of certain Mac types and redirected IO  }
     IOGETINFO_GENSECONDARY = 15;     
     IOGETINFO_ISDELETEONCLOSE = 16;     
     IOGETINFO_FILENAME_UNICODE = 17;     
  { Returns name using Unicode chars.  }
     IOGETINFO_PATHNAME_UNICODE = 18;     
     IOGETINFO_GENSECONDARYFULL = 19;     
     IOGETINFO_SUBDOC_SPEC = 20;     
     IOGETINFO_COMPRESSEDBYTESUSED = 21;     
     IOGETINFO_ZIPRANGE = 22;     
  { returns start/end offsets of zip node  }
     IOGETINFO_FILESIZE64 = 23;     
     IOGETINFO_64BITIO = 24;     
     IOGETINFO_COMPRESSTYPE = 25;     
     IOGETINFO_IOTYPE = 26;     
  { values above 127 are reserved for Transformation Server  }

  { pOpen *MUST* be set to nil.  }

  { SCC_PACKED_BY_BASEIO_H  }
{$endif}
  { BASEIO_H  }

implementation


end.
