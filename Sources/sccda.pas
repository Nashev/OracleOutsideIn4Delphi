unit sccda;
interface
uses scctype, sccop, sccfi, sccanno, sccerrUnit;

{
  Automatically converted by H2Pas 1.0.0 from D:\work\FPC\ooi\sccda.tmp.h
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

//  Type
//  PDADRAMAMINEINFO1  = ^DADRAMAMINEINFO1;
//  PDADRAMAMINEINFO1tag  = ^DADRAMAMINEINFO1tag;
//  PDAERR  = ^DAERR;
//  PDAFILEFORMATTYPE  = ^DAFILEFORMATTYPE;
//  PDAFILEFORMATTYPEtag  = ^DAFILEFORMATTYPEtag;
//  PDAFILESPEC  = ^DAFILESPEC;
//  PDAFILESPECtag  = ^DAFILESPECtag;
//  PDATREENODELOCATORtag  = ^DATREENODELOCATORtag;
//  PDATREENODEtag  = ^DATREENODEtag;
//  PPDADRAMAMINEINFO1  = ^PDADRAMAMINEINFO1;
//  PPDAFILESPEC  = ^PDAFILESPEC;
//  PPSCCDAOBJECT  = ^PSCCDAOBJECT;
//  PPSCCDAOBJECTINFOW  = ^PSCCDAOBJECTINFOW;
//  PPSCCDAPOS  = ^PSCCDAPOS;
//  PPSCCDATREENODE  = ^PSCCDATREENODE;
//  PPSCCDATREENODELOCATOR  = ^PSCCDATREENODELOCATOR;
//  PPVTSELECTION  = ^PVTSELECTION;
//  PSCCDAOBJECT  = ^SCCDAOBJECT;
//  PSCCDAOBJECTINFOW  = ^SCCDAOBJECTINFOW;
//  PSCCDAOBJECTINFOWtag  = ^SCCDAOBJECTINFOWtag;
//  PSCCDAOBJECTtag  = ^SCCDAOBJECTtag;
//  PSCCDAPOS  = ^SCCDAPOS;
//  PSCCDATREENODE  = ^SCCDATREENODE;
//  PSCCDATREENODELOCATOR  = ^SCCDATREENODELOCATOR;
//  PVTHDOC  = ^VTHDOC;
//  PVTLPHDOC  = ^VTLPHDOC;
//  PVTSELECTION  = ^VTSELECTION;
//  PVTSELECTIONtag  = ^VTSELECTIONtag;
//  PVTVOID  = ^VTVOID;


  { Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved.  }
  {
      |   Data Access
      |   Include File sccda.h
      |
      |   DDDD     A
      |   D   D   A A
      |   D   D  A   A
      |   D   D  AAAAA
      |   D   D  A   A
      |   DDDD   A   A
      |
      |   Data Access
      |
       }

  const
     SCC_PACK_SET = 1;
     SCC_PACKED_BY_SCCDA_H = 1;

  type
     PVTHDOC = ^VTHDOC;
     VTHDOC = VTSYSPARAM;
     VTLPHDOC = PVTHDOC;
     PVTLPHDOC = ^VTLPHDOC;

  const
     VTHDOC_INVALID = 0;
  {
  | SCCDAPOS  structure
  }

  type

     SCCDAPOS = SCCPOS;
     PSCCDAPOS = ^SCCDAPOS;
     PPSCCDAPOS = ^PSCCDAPOS;

  { Initialize to sizeof(VTSELECTION)   }
  { Selection type (see below)          }

     PVTSELECTION = ^VTSELECTION;
     VTSELECTION = record
          dwStructSize : VTDWORD;
          dwType : VTDWORD;
          uSelection : record
              case longint of
                 0 : ( wSection : VTWORD );
              end;
       end;
     PPVTSELECTION = ^PVTSELECTION;
  { Values for VTSELECTION.dwType  }

  const
     VTSEL_SECTIONNUMBER = 1;     

  type

     PDAERR = ^DAERR;
     DAERR = SCCERR;

  const
     DAERR_OK = SCCERR_OK;     
     DAERR_BADFILE = SCCERR_BADFILE;     
     DAERR_EMPTYFILE = SCCERR_EMPTYFILE;     
     DAERR_PROTECTEDFILE = SCCERR_PROTECTEDFILE;     
     DAERR_DRMFILE = SCCERR_DRMFILE;     
     DAERR_SUPFILEOPENFAILS = SCCERR_SUPFILEOPENFAILED;     
     DAERR_MEMORY = SCCERR_OUTOFMEMORY;     
     DAERR_EOF = SCCERR_EOF;     
     DAERR_ABORT = SCCERR_ABORT;     
     DAERR_FILTERNOTAVAIL = SCCERR_NOFILTER;     
     DAERR_FILTERLOADFAILED = SCCERR_FILTERLOADFAILED;     
     DAERR_FILEOPENFAILED = SCCERR_FILEOPENFAILED;     
     DAERR_CHARMAPFAILED = SCCERR_CHARMAPFAILED;     
     DAERR_UNKNOWN = SCCERR_UNKNOWN;     
     DAERR_FILECREATE = SCCERR_FILECREATE;     
     DAERR_FILEWRITEFAILED = SCCERR_FILEWRITEFAILED;     
     DAERR_MORE = SCCERR_MORE;     
     DAERR_BADPARAM = SCCERR_BADPARAM;     
     DAERR_NOFILE = SCCERR_NOFILE;     
     DAERR_UNSUPPORTEDCOMPRESSION = SCCERR_UNSUPPORTEDCOMPRESSION;     
     DAERR_MISALIGNMENT = SCCERR_EXCEPT_DATATYPE_MISALIGNMENT;     
     DAERR_NODATATORENDER = SCCERR_NODATATORENDER;     
     DAERR_EXTERNALURLREFERENCE = SCCERR_EXTERNALURLREFERENCE;     
     DAERR_LINKTOFILE = SCCERR_LINKTOFILE;     
     DAERR_NOTARCHIVEFILE = SCCERR_NOTARCHIVEFILE;     
     DAERR_NOTSUPPORTEDARCHIVEFILE = SCCERR_NOTSUPPORTEDARCHIVEFILE;     
     DAERR_BADCREDENTIALS = SCCERR_BADCREDENTIALS;     
     DA_PATHSIZE = 1024;     
     DA_EXTENSIONSIZE = 8;     
  { For tree file access, 8-9-99  }

  type

     PDATREENODE = ^DATREENODE;
     DATREENODE = record
          dwSize : VTDWORD;
          dwNode : VTDWORD;
          szName : array[0..(DA_PATHSIZE)-1] of VTBYTE;
          dwFileSize : VTDWORD;
          dwTime : VTDWORD;
          dwFlags : VTDWORD;
          dwCharSet : VTDWORD;
       end;
     SCCDATREENODE = DATREENODE;
     PSCCDATREENODE = ^SCCDATREENODE;
     PPSCCDATREENODE = ^PSCCDATREENODE;

  const
     SCCDA_TREENODEFLAG_FOLDER = $00000001;     
     SCCDA_TREENODEFLAG_SELECTED = $00000002;     
     SCCDA_TREENODEFLAG_FOCUS = $00000004;     
     SCCDA_TREENODEFLAG_ENCRYPT = $00000010;     
     SCCDA_TREENODEFLAG_ARCKNOWNENCRYPT = $00000020;     
     SCCDA_TREENODEFLAG_BUFFEROVERFLOW = $00000100;     
  { the size of the DATREENODELOCATOR structure  }
  { the archive tree node special flag  }

  type

     PDATREENODELOCATOR = ^DATREENODELOCATOR;
     DATREENODELOCATOR = record
          dwSize : VTDWORD;
          dwSpecialFlags : VTDWORD;
          dwData1 : VTDWORD;
          dwData2 : VTDWORD;
       end;
     SCCDATREENODELOCATOR = DATREENODELOCATOR;
     PSCCDATREENODELOCATOR = ^SCCDATREENODELOCATOR;
     PPSCCDATREENODELOCATOR = ^PSCCDATREENODELOCATOR;
  { For Dramamine support  }

     PDADRAMAMINEINFO1 = ^DADRAMAMINEINFO1;
     DADRAMAMINEINFO1 = record
          word1 : VTWORD;
          szByte1 : array[0..63] of VTBYTE;
          szByte2 : array[0..63] of VTBYTE;
       end;
     PPDADRAMAMINEINFO1 = ^PDADRAMAMINEINFO1;
  { maximum size of a subdocument specification  }

  const
     DA_MAXSUBDOCSPEC = 256;

  type

     PDAFILESPEC = ^DAFILESPEC;
     DAFILESPEC = record
          dwSpecType : VTDWORD;
          pSpec : VTLPVOID;
          hThis : VTHANDLE;
       end;
     PPDAFILESPEC = ^PDAFILESPEC;
  {
  |  DAFILEFORMATTYPE enumeration
   }
  { Unknown format  }
  { Word processor  }
  { Spreadsheet  }
  { Database  }
  { Bitmap image  }
  { Archive  }
  { Vector Drawing  }
  { Presentation  }
  { Chart  }
  { Multimedia  }
  { File supports multiple file types  }
  { A format not otherwise listed  }

     DAFILEFORMATTYPE =  Longint;
     PDAFILEFORMATTYPE = ^DAFILEFORMATTYPE;
     Const
       DAFORMAT_UNKNOWN = 0;
       DAFORMAT_WP = 1;
       DAFORMAT_SS = 2;
       DAFORMAT_DB = 3;
       DAFORMAT_IM = 5;
       DAFORMAT_AR = 6;
       DAFORMAT_DR = 7;
       DAFORMAT_PR = 8;
       DAFORMAT_CH = 9;
       DAFORMAT_MM = 10;
       DAFORMAT_MULTIPLE = 98;
       DAFORMAT_OTHER = 99;
  {
  |  SCCDAOBJECT structure
  |
  |  Object identifier. Used in calls to DASaveObject and DAGetInputObjectInfoX
   }
  { Filled in by caller with sizeof(SCCDAOBJECT)  }
  { Filled in by caller with the DA handle for the document containing the object  }
  { SCCCA_EMBEDDEDOBJECT, SCCCA_LINKEDOBJECT, SCCCA_COMPRESSEDFILE, or SCCCA_ATTACHMENT  }
  { Additional data identifying the object  }
  { Additional data identifying the object  }
  { Additional data identifying the object  }
  { Additional data identifying the object  }

  type

     PSCCDAOBJECT = ^SCCDAOBJECT;
     SCCDAOBJECT = record
          dwSize : VTDWORD;
          hDoc : VTHDOC;
          dwObjectType : VTDWORD;
          dwData1 : VTDWORD;
          dwData2 : VTDWORD;
          dwData3 : VTDWORD;
          dwData4 : VTDWORD;
       end;
     PPSCCDAOBJECT = ^PSCCDAOBJECT;
  {
  |  SCCDAOBJECTINFOW structure
  |
  |  Object information
   }
  { Filled in by caller with sizeof(SCCDAOBJECTINFO)  }
  { Object name (2 byte characters)  }
  { Type of object: SCCCA_EMBEDDEDOBJECT, SCCCA_LINKEDOBJECT, SCCCA_COMPRESSEDFILE, or SCCCA_ATTACHMENT  }
  { File format identifier           }
  { Compression type (if known)      }
  { Additional flags (See below)     }
  { File format type (see DAFILEFORMATTYPE enum)  }
  { Commonly used filename extension for this file format  }

     PSCCDAOBJECTINFOW = ^SCCDAOBJECTINFOW;
     SCCDAOBJECTINFOW = record
          dwSize : VTDWORD;
          name : array[0..(DA_PATHSIZE)-1] of VTWORD;
          dwObjectType : VTDWORD;
          dwFormatId : VTDWORD;
          dwCompression : VTDWORD;
          dwFlags : VTDWORD;
          formatType : DAFILEFORMATTYPE;
          commonExtension : array[0..(DA_EXTENSIONSIZE)-1] of VTWORD;
          bGetObjectFromOLELocator : VTBOOL;
          bGetObjectFromOLEPackage : VTBOOL;
          bGetObjectInfo : VTBOOL;
       end;
     PPSCCDAOBJECTINFOW = ^PSCCDAOBJECTINFOW;
  {
  |  DAGetObjectInfo and DAGetOutputObjectInfo parameters
   }
  { Retrieves the name of the object, in 8-bit characters.  pInfo points to a buffer of size DA_PATHSIZE.                        }

  const
     DAOBJECT_NAME_A = 1;
  { Retrieves the name of the object in Unicode characters.  pInfo points to a buffer of 16 bit characters of size DA_PATHSIZE.  }
     DAOBJECT_NAME_W = 2;
  { Retrieves the OIT file ID of the object.  pInfo points to a VTDWORD value.                                                   }
     DAOBJECT_FORMATID = 3;
  { Retrieves an identifier of the type of compression used to store the object, if known.  pInfo points to a VTDWORD value.     }
     DAOBJECT_COMPRESSIONTYPE = 4;
  { Retrieves a bitfield of flags indicating additional attributes of the object.  pInfo points to a VTDWORD value.              }
     DAOBJECT_FLAGS = 5;
  { Type of object                                                                                                               }
     DAOBJECT_OBJECTTYPE = 6;
  { File format type (see DAFILEFORMATTYPE enum)                                                                                 }
     DAOBJECT_FORMATTYPE = 7;
  { Commonly used filename extension for this file format in 8-bit characters.                                                   }
     DAOBJECT_COMMONEXTENSION_A = 8;
  { Commonly used filename extension for this file format in Unicode characters.                                                 }
     DAOBJECT_COMMONEXTENSION_W = 9;
  { Flags for DAGetObjectInfo( DAOBJECT_FLAGS )  }
  { Object would not normally exist outside the source document  }
     DAOBJECTFLAG_PARTIALFILE = $00000001;
  { Object is encrypted or password protected                    }
     DAOBJECTFLAG_PROTECTEDFILE = $00000002;
  { Object uses an unsupported compression mechanism             }
     DAOBJECTFLAG_UNSUPPORTEDCOMP = $00000004;
  { Object uses Digital Rights Management protection             }
     DAOBJECTFLAG_DRMFILE = $00000008;
  { Object is extracted, but can not successfully identified     }
     DAOBJECTFLAG_UNIDENTIFIEDFILE = $00000010;
  { Object links to file, it can not be extracted                }
     DAOBJECTFLAG_LINKTOFILE = $00000020;
  { Object is encrypted and can be decryped with the known password   }
     DAOBJECTFLAG_ARCKNOWNENCRYPT = $00000040;
  {
  |  DA Component types
  |  Used in calls to DAAddPipelineComponent, DAGetCurrentPipelineComponentType
  |    DAGetPipelineComponent, and DAOpenPipelineComponent
   }
  { Unknown/any component type  }
     DACOMP_UNKNOWN = $C000;     
  { SCCIO (HIOFILE)  }
     DACOMP_HIOFILE = $C001;     
  { SO Filter (HFILTER)  }
     DACOMP_SOFILTER = $C002;     
  { Export filter  }
     DACOMP_EXFILTER = $C003;     
  { Passive component filter (HCOMPONENT)  }
     DACOMP_PASSIVECOMPONENT = $C004;     
  { Active component filter (HCOMPONENT)  }
     DACOMP_ACTIVECOMPONENT = $C005;     
  { Standard chunker (HCHUNKER)  }
     DACOMP_CHUNKER = $C006;     
  { XChunker (HCHUNKER) }
     DACOMP_XCHUNKER = $C007;     
  { I/O Spec/spec type (PDAFILESPEC) }
     DACOMP_FILESPEC = $C008;     
  { XTree (HXTREE)  }
     DACOMP_XTREE = $C009;     
  {
  |  DA Component flags
  |  Used in calls to DAAddPipelineComponent
   }
  { Set if component handle should be closed on DACloseDocument  }
     DACOMPF_CLOSEHANDLE = $00000001;     
  { Set if component handle should be freed on DACloseDocument (by calling UTGlobalFree)  }
     DACOMPF_FREEHANDLE = $00000002;     
  {
  |  DAGetFileInfoEx() flags
   }
     DA_FILEINFO_RAWFI = $00000001;
  {
  |  DA Internal flags
   }
     DAOLE_COPYSTORAGE_DOTEMPFILE = $01;
     DAOLE_COPYSTORAGE_DOUSERFILE = $02;
  {
  |  Additional flags for DAOpenDocument
   }
  { Return a valid VTHDOC that can be used to obtain information  }
     DAOPENDOCUMENT_CONTINUEONFAILURE = $80000000;
  { about a document even if a failure occurs.                    }
  { Currently used by DAGetObjectInfo                             }  { When the flag is set, only archive document can be opened     }
     DAOPENDOCUMENT_ARCHIVEONLYMODE = $04000000;
  { All other file formats will return an error                   }
  { File Access callback function signature  }

  type

     DAFILEACCESSCALLBACKFN = function (dwID:VTDWORD; pRequestData:VTSYSVAL; pReturnData:VTSYSVAL; dwReturnDataSize:VTDWORD):VTDWORD;cdecl;
  { - defines for file access callback  }
{$ifndef SCCVW_H}

  const
     OIT_FILEACCESS_PASSWORD = 1;
     OIT_FILEACCESS_NOTESID = 2;     
{$endif}
  { The sig of the UT status callback function  }

  type

     DASTATCALLBACKFN = function (hUnique:VTHANDLE; dwID:VTDWORD; pCallbackData:VTSYSVAL; pAppData:VTSYSVAL):VTDWORD;cdecl;
{$ifndef SCCVW_H}
  { 
  	  |  Defines for DA status callback
        }

  const
     OIT_STATUS_WORKING = 0;     
     OIT_STATUS_CONTINUE = DAERR_OK;     
     OIT_STATUS_CANCEL = SCCERR_CANCEL;     
     OIT_STATUS_ABORT = DAERR_ABORT;     
{$endif}

  const
     DASTAT_WORKING = 0;     
  {
  |  P R O T O T Y P E S
   }
type
  TCallbackFunction = function (_para1:PVTVOID):VTLONG;

  function DAInit:DAERR;cdecl;                     external External_library name 'DAInit';
  function DAThreadInitExt(Lock, Unlock: TCallbackFunction):VTLONG;cdecl;external External_library name 'DAThreadInitExt';
  function DAThreadInit(ThreadOption:VTSHORT):VTLONG;cdecl;external External_library name 'DAThreadInit';
  function DADeInit:DAERR;cdecl;external External_library name 'DADeInit';
  function DAOpenDocument(phDoc:VTLPHDOC; dwSpecType:VTDWORD; pSpec:VTLPVOID; dwFlags:VTDWORD):DAERR;cdecl;external External_library name 'DAOpenDocument';
  function DAOpenNextDocument(hDoc:VTHDOC; dwSpecType:VTDWORD; pSpec:VTLPVOID; dwFlags:VTDWORD):DAERR;cdecl;external External_library name 'DAOpenNextDocument';
  function DACloseDocument(hDoc:VTHDOC):DAERR;cdecl;external External_library name 'DACloseDocument';
  function DARetrieveDocHandle(hItem:VTHDOC; phDoc:VTLPHDOC):DAERR;cdecl;external External_library name 'DARetrieveDocHandle';
  function DASetOption(hItem:VTHDOC; dwOptionId:VTDWORD; pValue:VTLPVOID; dwSize:VTDWORD):DAERR;cdecl;external External_library name 'DASetOption';
  function DASetFileSpecOption(hItem:VTHDOC; dwOptionId:VTDWORD; dwType:VTDWORD; pSpec:PVTVOID):DAERR;cdecl;external External_library name 'DASetFileSpecOption';
  function DAGetOption(hItem:VTHDOC; dwOptionId:VTDWORD; pValue:VTLPVOID; pSize:VTLPDWORD):DAERR;cdecl;external External_library name 'DAGetOption';
  function DAGetFileId(hItem:VTHDOC; pdwFileId:VTLPDWORD):DAERR;cdecl;external External_library name 'DAGetFileId';
  function DAGetFileIdEx(hItem:VTHDOC; pdwFileId:VTLPDWORD; dwFlags:VTDWORD):DAERR;cdecl;external External_library name 'DAGetFileIdEx';
  procedure DAGetErrorString(deError:DAERR; pBuffer:VTLPVOID; dwSize:VTDWORD);cdecl;external External_library name 'DAGetErrorString';
  function DAGetTreeCount(hDoc:VTHDOC; lpRecordCount:VTLPDWORD):DAERR;cdecl;external External_library name 'DAGetTreeCount';
  function DAGetTreeRecord(hDoc:VTHDOC; pTreeRecord:PSCCDATREENODE):DAERR;cdecl;external External_library name 'DAGetTreeRecord';
  function DAOpenTreeRecord(hDoc:VTHDOC; lphDoc:VTLPHDOC; dwRecord:VTDWORD):DAERR;cdecl;external External_library name 'DAOpenTreeRecord';
  function DAOpenRandomTreeRecord(hDoc:VTHDOC; lphDoc:VTLPHDOC; sTreeNodeLocator:SCCDATREENODELOCATOR):DAERR;cdecl;external External_library name 'DAOpenRandomTreeRecord';
  function DASaveTreeRecord(hDoc:VTHDOC; dwRecord:VTDWORD; dwSpecType:VTDWORD; pSpec:VTLPVOID; dwFlags:VTDWORD):DAERR;cdecl;external External_library name 'DASaveTreeRecord';
  function DASaveRandomTreeRecord(hDoc:VTHDOC; sTreeNodeLocator:SCCDATREENODELOCATOR; dwSpecType:VTDWORD; pSpec:VTLPVOID; dwFlags:VTDWORD):DAERR;cdecl;external External_library name 'DASaveRandomTreeRecord';
  function DACloseTreeRecord(hDoc:VTHDOC):DAERR;cdecl;external External_library name 'DACloseTreeRecord';
  function DAGetObjectInfo(hDoc:VTHDOC; dwInfoId:VTDWORD; pInfo:VTLPVOID):DAERR;cdecl;external External_library name 'DAGetObjectInfo';
  function DAGetOutputObjectInfo(hDoc:VTHDOC; dwOutputFileId:VTDWORD; dwInfoId:VTDWORD; pInfo:VTLPVOID):DAERR;cdecl;external External_library name 'DAGetOutputObjectInfo';
  function DASaveInputObject(hDoc:VTHDOC; dwSpecType:VTDWORD; pSpec:VTLPVOID; dwFlags:VTDWORD):DAERR;cdecl;external External_library name 'DASaveInputObject';
  function DAOpenSubdocumentById(hDoc:VTHDOC; lphDoc:VTLPHDOC; dwSubdocumentId:VTDWORD; dwFlags:VTDWORD):DAERR;cdecl;external External_library name 'DAOpenSubdocumentById';
  function DASetStatCallback(pCallback:DASTATCALLBACKFN; hUnique:VTHANDLE; pAppData:VTLPVOID):DAERR;cdecl;external External_library name 'DASetStatCallback';
  function DASetFileAccessCallback(pCallback:DAFILEACCESSCALLBACKFN):DAERR;cdecl;external External_library name 'DASetFileAccessCallback';

// { defines for thread initialization.  Needed only for UNIX  }
//
//  const
//     DATHREAD_INIT_PTHREADS = 0;
//     DATHREAD_INIT_NOTHREADS = 1;
//     DATHREAD_INIT_NATIVETHREADS = 2;
//     DATHREAD_INIT_SUCCESS = 0;
//     DATHREAD_INIT_FAILED = 1;
//     DATHREAD_INIT_ALREADY_CALLED = 2;
//

implementation


end.
