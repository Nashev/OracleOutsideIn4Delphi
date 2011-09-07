unit sccio;
interface
uses scctype, baseio, sccrc4;

{
  Automatically converted by H2Pas 1.0.0 from D:\work\FPC\ooi\sccio.tmp.h
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
    External_library='sccio.dll'; {Setup as you need}

//  { Pointers to basic pascal types, inserted by h2pas conversion program.}
//  Type
//    PLongint  = ^Longint;
//    PSmallInt = ^SmallInt;
//    PByte     = ^Byte;
//    PWord     = ^Word;
//    PDWord    = ^DWord;
//    PDouble   = ^Double;
//
type
//  PCABDATA  = ^CABDATA;
//  PCABDATAtag  = ^CABDATA;
//  PCABFILEINFO  = ^CABFILEINFO;
//  PCABFILEINFOtag  = ^CABFILEINFO;
//  PCABFOLDERINFO  = ^CABFOLDERINFO;
//  PCABFOLDERINFOtag  = ^CABFOLDERINFO;
//  PCODEINFO  = ^CODEINFO;
//  PCODEINFOtag  = ^CODEINFO;
//  PDCT_MARKER  = ^DCT_MARKER;
//  PDCT_MARKERtag  = ^DCT_MARKER;
//  PDCTCOMP_INFO  = ^DCTCOMP_INFO;
//  PDCTCOMP_INFOtag  = ^DCTCOMP_INFO;
//  PDCTHUFF_TBL  = ^DCTHUFF_TBL;
//  PDCTHUFF_TBLtag  = ^DCTHUFF_TBL;
//  PDCTQUANT_TBL  = ^DCTQUANT_TBL;
//  PDCTQUANT_TBLtag  = ^DCTQUANT_TBL;
//  PDICTTTREEtag  = ^DICTTTREE;
//  PFLATECODE  = ^FLATECODE;
//  PFLATECODEtag  = ^FLATECODE;
//  PFLATEDECODE  = ^FLATEDECODE;
//  PFLATEDECODEtag  = ^FLATEDECODE;
//  PFLATEHUFFMANTABLE  = ^FLATEHUFFMANTABLE;
//  PFLATEHUFFMANTABLEtag  = ^FLATEHUFFMANTABLE;
//  PFZFILEINFO  = ^FZFILEINFO;
//  PHIOSPEC  = ^HIOSPEC;
//  PHUFFMAN_ROW_TYPE  = ^HUFFMAN_ROW_TYPE;
//  PHUFFMAN_ROW_TYPEtag  = ^HUFFMAN_ROW_TYPE;
//  PIO_OSHANDLETYPE  = ^IO_OSHANDLETYPE;
//  PIOAESDATA  = ^IOAESDATA;
//  PIOAESDATAtag  = ^IOAESDATA;
//  PIOASCII85DATA  = ^IOASCII85DATA;
//  PIOASCII85DATAtag  = ^IOASCII85DATA;
//  PIOASCIIHEXDATA  = ^IOASCIIHEXDATA;
//  PIOASCIIHEXDATAtag  = ^IOASCIIHEXDATA;
//  PIOBASE64DATA  = ^IOBASE64DATA;
//  PIOBASE64DATAtag  = ^IOBASE64DATA;
//  PIOBASERFA  = ^IOBASERFA;
//  PIOBASERFAtag  = ^IOBASERFA;
//  PIOBINHEXDATA  = ^IOBINHEXDATA;
//  PIOBinHexDATAtag  = ^IOBinHexDATA;
//  PIOBTOADATA  = ^IOBTOADATA;
//  PIOBTOADATAtag  = ^IOBTOADATA;
//  PIOCABFILE  = ^IOCABFILE;
//  PIOCABFILEtag  = ^IOCABFILE;
//  PIOCABFOLDER  = ^IOCABFOLDER;
//  PIOCABFOLDERtag  = ^IOCABFOLDER;
//  PIOCABINET  = ^IOCABINET;
//  PIOCABINETtag  = ^IOCABINET;
//  PIOCOMPRESSEDRTFDATA  = ^IOCOMPRESSEDRTFDATA;
//  PIOCOMPRESSEDRTFDATAtag  = ^IOCOMPRESSEDRTFDATA;
//  PIOCOMPRESSFILE  = ^IOCOMPRESSFILE;
//  PIOCOMPRESSFILEtag  = ^IOCOMPRESSFILE;
//  PIODATETIME  = ^IODATETIME;
//  PIODATETIMEtag  = ^IODATETIME;
//  PIODCTDATA  = ^IODCTDATA;
//  PIODCTDATAtag  = ^IODCTDATA;
//  PIOFLATEDATA  = ^IOFLATEDATA;
//  PIOFLATEDATAtag  = ^IOFLATEDATA;
//  PIOGENMEMFILE  = ^IOGENMEMFILE;
//  PIOGENMEMFILEtag  = ^IOGENMEMFILE;
//  PIOJBIG2DATA  = ^IOJBIG2DATA;
//  PIOJBIG2DATAtag  = ^IOJBIG2DATA;
//  PIOLOCATOR  = ^IOLOCATOR;
//  PIOLOCATORSEGMENT  = ^IOLOCATORSEGMENT;
//  PIOLOCATORSEGMENTtag  = ^IOLOCATORSEGMENT;
//  PIOLOCATORtag  = ^IOLOCATOR;
//  PIOLZSSDATA  = ^IOLZSSDATA;
//  PIOLZSSDATAtag  = ^IOLZSSDATA;
//  PIOLZWDATA  = ^IOLZWDATA;
//  PIOLZWDATAtag  = ^IOLZWDATA;
//  PIOLZXDATA  = ^IOLZXDATA;
//  PIOLZXDATAtag  = ^IOLZXDATA;
//  PIOMEMORYFILE  = ^IOMEMORYFILE;
//  PIOMEMORYFILEtag  = ^IOMEMORYFILE;
//  PIOMIFAsciiDecode  = ^IOMIFAsciiDecode;
//  PIOMIFAsciiDecodetag  = ^IOMIFAsciiDecode;
//  PIOPKMPLODDATA  = ^IOPKMPLODDATA;
//  PIOPKMPLODDATAtag  = ^IOPKMPLODDATA;
//  PIOPREDICTORDATA  = ^IOPREDICTORDATA;
//  PIOPREDICTORDATAtag  = ^IOPREDICTORDATA;
//  PIOQPDATA  = ^IOQPDATA;
//  PIOQPDATAtag  = ^IOQPDATA;
//  PIORANGEFILE  = ^IORANGEFILE;
//  PIORANGEFILEtag  = ^IORANGEFILE;
//  PIORC4DATA  = ^IORC4DATA;
//  PIORC4DATAtag  = ^IORC4DATA;
//  PIOREQUESTDATA  = ^IOREQUESTDATA;
//  PIOREQUESTDATAtag  = ^IOREQUESTDATA;
//  PIORFAREQUEST  = ^IORFAREQUEST;
//  PIORFAREQUESTtag  = ^IORFAREQUEST;
//  PIOSPEC  = ^IOSPEC;
//  PIOSPECARCHIVEOBJECT  = ^IOSPECARCHIVEOBJECT;
//  PIOSPECARCHIVEOBJECTtag  = ^IOSPECARCHIVEOBJECT;
//  PIOSPECCABFILE  = ^IOSPECCABFILE;
//  PIOSPECCABFILEtag  = ^IOSPECCABFILE;
//  PIOSPECCOMPRESS  = ^IOSPECCOMPRESS;
//  PIOSPECCOMPRESStag  = ^IOSPECCOMPRESS;
//  PIOSPECLINKEDOBJECT  = ^IOSPECLINKEDOBJECT;
//  PIOSPECLINKEDOBJECTtag  = ^IOSPECLINKEDOBJECT;
//  PIOSPECMACHFS  = ^IOSPECMACHFS;
//  PIOSPECMACHFStag  = ^IOSPECMACHFS;
//  PIOSPECMROOTSTORAGE  = ^IOSPECMROOTSTORAGE;
//  PIOSPECMROOTSTORAGEtag  = ^IOSPECMROOTSTORAGE;
//  PIOSPECMSTORAGE  = ^IOSPECMSTORAGE;
//  PIOSPECMSTORAGEtag  = ^IOSPECMSTORAGE;
//  PIOSPECMSTREAM  = ^IOSPECMSTREAM;
//  PIOSPECMSTREAMtag  = ^IOSPECMSTREAM;
//  PIOSPECOLE2ROOTSTORAGE  = ^IOSPECOLE2ROOTSTORAGE;
//  PIOSPECOLE2ROOTSTORAGEtag  = ^IOSPECOLE2ROOTSTORAGE;
//  PIOSPECOLE2STORAGE  = ^IOSPECOLE2STORAGE;
//  PIOSPECOLE2STORAGEtag  = ^IOSPECOLE2STORAGE;
//  PIOSPECOLE2STREAM  = ^IOSPECOLE2STREAM;
//  PIOSPECOLE2STREAMtag  = ^IOSPECOLE2STREAM;
//  PIOSPECRANGE  = ^IOSPECRANGE;
//  PIOSPECRANGEtag  = ^IOSPECRANGE;
//  PIOSPECSECONDARY  = ^IOSPECSECONDARY;
//  PIOSPECSECONDARYtag  = ^IOSPECSECONDARY;
//  PIOSPECSUBOBJECT  = ^IOSPECSUBOBJECT;
//  PIOSPECSUBOBJECTtag  = ^IOSPECSUBOBJECT;
//  PIOSPECSUBSTORAGE  = ^IOSPECSUBSTORAGE;
//  PIOSPECSUBSTORAGEtag  = ^IOSPECSUBSTORAGE;
//  PIOSPECSUBSTREAM  = ^IOSPECSUBSTREAM;
//  PIOSPECSUBSTREAMtag  = ^IOSPECSUBSTREAM;
//  PIOSPECtag  = ^IOSPEC;
//  PIOSPECZIPNODE  = ^IOSPECZIPNODE;
//  PIOSPECZIPNODEtag  = ^IOSPECZIPNODE;
//  PIOUTF7DATA  = ^IOUTF7DATA;
//  PIOUTF7DATAtag  = ^IOUTF7DATA;
//  PIOUUEDATA  = ^IOUUEDATA;
//  PIOUUEDATAtag  = ^IOUUEDATA;
//  PIOXXEDATA  = ^IOXXEDATA;
//  PIOXXEDATAtag  = ^IOXXEDATA;
//  PIOYENCDATA  = ^IOYENCDATA;
//  PIOYENCDATAtag  = ^IOYENCDATA;
//  PIOZIPCRYPTODATA  = ^IOZIPCRYPTODATA;
//  PIOZIPCRYPTODATAtag  = ^IOZIPCRYPTODATA;
//  PIOZIPFILE  = ^IOZIPFILE;
//  PIOZIPFILEtag  = ^IOZIPFILE;
//  PIOZIPNODE  = ^IOZIPNODE;
//  PIOZIPNODEtag  = ^IOZIPNODE;
//  PIOZIPRANGE  = ^IOZIPRANGE;
//  PIOZIPRANGEtag  = ^IOZIPRANGE;
//  PIOZLIBDATA  = ^IOZLIBDATA;
//  PIOZLIBDATAtag  = ^IOZLIBDATA;
//  PJBIG_STRUCT  = ^JBIG_STRUCT;
//  PJBIG2_Arithmetic  = ^JBIG2_Arithmetic;
//  PJBIG2_Arithmetic_tag  = ^JBIG2_Arithmetic_;
//  PJBIG2_Bitmap  = ^JBIG2_Bitmap;
//  PJBIG2_Bitmap_tag  = ^JBIG2_Bitmap_;
//  PJBIG2_BitmapHeader  = ^JBIG2_BitmapHeader;
//  PJBIG2_BitmapHeader_tag  = ^JBIG2_BitmapHeader_;
//  PJBIG2_GenericSettings  = ^JBIG2_GenericSettings;
//  PJBIG2_GenericSettings_tag  = ^JBIG2_GenericSettings_;
//  PJBIG2_Huffman  = ^JBIG2_Huffman;
//  PJBIG2_HUFFMAN_LINE  = ^JBIG2_HUFFMAN_LINE;
//  PJBIG2_HUFFMAN_LINEtag  = ^JBIG2_HUFFMAN_LINE;
//  PJBIG2_HUFFMAN_NODE_tag  = ^JBIG2_HUFFMAN_NODE_;
//  PJBIG2_HUFFMAN_TABLE  = ^JBIG2_HUFFMAN_TABLE;
//  PJBIG2_HUFFMAN_TABLEtag  = ^JBIG2_HUFFMAN_TABLE;
//  PJBIG2_Huffman_tag  = ^JBIG2_Huffman_;
//  PJBIG2_RefinementSettings  = ^JBIG2_RefinementSettings;
//  PJBIG2_RefinementSettings_tag  = ^JBIG2_RefinementSettings_;
//  PJBIG2_RegionSegmentInfo  = ^JBIG2_RegionSegmentInfo;
//  PJBIG2_RegionSegmentInfo_tag  = ^JBIG2_RegionSegmentInfo_;
//  PJBIG2_SymbolDictionary  = ^JBIG2_SymbolDictionary;
//  PJBIG2_SymbolDictionary_tag  = ^JBIG2_SymbolDictionary_;
//  PJBIG2_SymbolSettings  = ^JBIG2_SymbolSettings;
//  PJBIG2_SymbolSettings_tag  = ^JBIG2_SymbolSettings_;
//  PJBIG2_TextInstance  = ^JBIG2_TextInstance;
//  PJBIG2_TextInstance_tag  = ^JBIG2_TextInstance_;
//  PJBIG2_TextSettings  = ^JBIG2_TextSettings;
//  PJBIG2_TextSettings_tag  = ^JBIG2_TextSettings_;
//  PJBIGHEADERDATA  = ^JBIGHEADERDATA;
//  PLPJBIG_STRUCT  = ^LPJBIG_STRUCT;
//  PLZWDICTTREE  = ^LZWDICTTREE;
//  PPCABDATA  = ^PCABDATA;
//  PPCABFILEINFO  = ^PCABFILEINFO;
//  PPCABFOLDERINFO  = ^PCABFOLDERINFO;
//  PPCODEINFO  = ^PCODEINFO;
//  PPFLATECODE  = ^PFLATECODE;
//  PPFLATEDECODE  = ^PFLATEDECODE;
//  PPFLATEHUFFMANTABLE  = ^PFLATEHUFFMANTABLE;
//  PPFZFILEINFO  = ^PFZFILEINFO;
//  PPIOAESDATA  = ^PIOAESDATA;
//  PPIOASCII85DATA  = ^PIOASCII85DATA;
//  PPIOASCIIHEXDATA  = ^PIOASCIIHEXDATA;
//  PPIOBASE64DATA  = ^PIOBASE64DATA;
//  PPIOBASERFA  = ^PIOBASERFA;
//  PPIOBINHEXDATA  = ^PIOBINHEXDATA;
//  PPIOBTOADATA  = ^PIOBTOADATA;
//  PPIOCABFILE  = ^PIOCABFILE;
//  PPIOCABFOLDER  = ^PIOCABFOLDER;
//  PPIOCABINET  = ^PIOCABINET;
//  PPIOCOMPRESSEDRTFDATA  = ^PIOCOMPRESSEDRTFDATA;
//  PPIOCOMPRESSFILE  = ^PIOCOMPRESSFILE;
//  PPIODATETIME  = ^PIODATETIME;
//  PPIODCTDATA  = ^PIODCTDATA;
//  PPIOFLATEDATA  = ^PIOFLATEDATA;
//  PPIOGENMEMFILE  = ^PIOGENMEMFILE;
//  PPIOJBIG2DATA  = ^PIOJBIG2DATA;
//  PPIOLOCATOR  = ^PIOLOCATOR;
//  PPIOLOCATORSEGMENT  = ^PIOLOCATORSEGMENT;
//  PPIOLZSSDATA  = ^PIOLZSSDATA;
//  PPIOLZWDATA  = ^PIOLZWDATA;
//  PPIOLZXDATA  = ^PIOLZXDATA;
//  PPIOMEMORYFILE  = ^PIOMEMORYFILE;
//  PPIOMIFAsciiDecode  = ^PIOMIFAsciiDecode;
//  PPIOPKMPLODDATA  = ^PIOPKMPLODDATA;
//  PPIOPREDICTORDATA  = ^PIOPREDICTORDATA;
//  PPIOQPDATA  = ^PIOQPDATA;
//  PPIORANGEFILE  = ^PIORANGEFILE;
//  PPIORC4DATA  = ^PIORC4DATA;
//  PPIOREQUESTDATA  = ^PIOREQUESTDATA;
//  PPIORFAREQUEST  = ^PIORFAREQUEST;
//  PPIOSPEC  = ^PIOSPEC;
//  PPIOSPECARCHIVEOBJECT  = ^PIOSPECARCHIVEOBJECT;
//  PPIOSPECCABFILE  = ^PIOSPECCABFILE;
//  PPIOSPECCOMPRESS  = ^PIOSPECCOMPRESS;
//  PPIOSPECLINKEDOBJECT  = ^PIOSPECLINKEDOBJECT;
//  PPIOSPECMACHFS  = ^PIOSPECMACHFS;
//  PPIOSPECMROOTSTORAGE  = ^PIOSPECMROOTSTORAGE;
//  PPIOSPECMSTORAGE  = ^PIOSPECMSTORAGE;
//  PPIOSPECMSTREAM  = ^PIOSPECMSTREAM;
//  PPIOSPECOLE2ROOTSTORAGE  = ^PIOSPECOLE2ROOTSTORAGE;
//  PPIOSPECOLE2STORAGE  = ^PIOSPECOLE2STORAGE;
//  PPIOSPECOLE2STREAM  = ^PIOSPECOLE2STREAM;
//  PPIOSPECRANGE  = ^PIOSPECRANGE;
//  PPIOSPECSECONDARY  = ^PIOSPECSECONDARY;
//  PPIOSPECSUBOBJECT  = ^PIOSPECSUBOBJECT;
//  PPIOSPECSUBSTORAGE  = ^PIOSPECSUBSTORAGE;
//  PPIOSPECSUBSTREAM  = ^PIOSPECSUBSTREAM;
//  PPIOSPECZIPNODE  = ^PIOSPECZIPNODE;
//  PPIOUTF7DATA  = ^PIOUTF7DATA;
//  PPIOUUEDATA  = ^PIOUUEDATA;
//  PPIOXXEDATA  = ^PIOXXEDATA;
//  PPIOYENCDATA  = ^PIOYENCDATA;
//  PPIOZIPCRYPTODATA  = ^PIOZIPCRYPTODATA;
//  PPIOZIPFILE  = ^PIOZIPFILE;
//  PPIOZIPNODE  = ^PIOZIPNODE;
//  PPIOZIPRANGE  = ^PIOZIPRANGE;
//  PPIOZLIBDATA  = ^PIOZLIBDATA;
//  PPJBIG2_Arithmetic  = ^PJBIG2_Arithmetic;
//  PPJBIG2_Bitmap  = ^PJBIG2_Bitmap;
//  PPJBIG2_BitmapHeader  = ^PJBIG2_BitmapHeader;
//  PPJBIG2_GenericSettings  = ^PJBIG2_GenericSettings;
//  PPJBIG2_Huffman  = ^PJBIG2_Huffman;
//  PPJBIG2_HUFFMAN_LINE  = ^PJBIG2_HUFFMAN_LINE;
//  PPJBIG2_HUFFMAN_NODE  = ^PJBIG2_HUFFMAN_NODE;
//  PPJBIG2_HUFFMAN_TABLE  = ^PJBIG2_HUFFMAN_TABLE;
//  PPJBIG2_RefinementSettings  = ^PJBIG2_RefinementSettings;
//  PPJBIG2_RegionSegmentInfo  = ^PJBIG2_RegionSegmentInfo;
//  PPJBIG2_SymbolDictionary  = ^PJBIG2_SymbolDictionary;
//  PPJBIG2_SymbolSettings  = ^PJBIG2_SymbolSettings;
//  PPJBIG2_TextInstance  = ^PJBIG2_TextInstance;
//  PPJBIG2_TextSettings  = ^PJBIG2_TextSettings;
//  PPLZWDICTTREE  = ^PLZWDICTTREE;
//  PPSCCOLE2CLSID  = ^PSCCOLE2CLSID;
//  PPSFNODE  = ^PSFNODE;
//  PSCCOLE2CLSID  = ^SCCOLE2CLSID;
//  PSCCOLE2CLSIDtag  = ^SCCOLE2CLSID;
//  PSFNODE  = ^SFNODE;
//  PSFNODEtag  = ^SFNODE;
//  PtagFZFILEINFO  = ^tagFZFILEINFO;
  PVTBYTE  = ^VTBYTE;
  PVTCHAR  = ^VTCHAR;
  PVTLONG  = ^VTLONG;
//  PVTVOID  = ^VTVOID;
  PVTWCHAR  = ^VTWCHAR;


  { Copyright (c) 2001, 2010, Oracle and/or its affiliates.
  All rights reserved.  }
  {
    |  SCC Viewer Technology - Include
    |
    |  Include:       SCCIO.H
    |  Environment:   Portable
    |  Function:      Defines for redirectable IO in Viewer Technology
    |
     }


  const
     SCC_PACK_SET = 1;
     SCC_PACKED_BY_SCCIO_H = 1;

  type
     IO_OSHANDLETYPE = VTHANDLE;

//{$ifdef UNIX}
//{$if defined(_DARWIN_SOURCE)}
//{$if defined(__OBJC__)}
//
//  type
//
//     PIO_OSHANDLETYPE = ^IO_OSHANDLETYPE;
//     IO_OSHANDLETYPE = NSFileHandle;
//{$else}
//
//  type
//
//     PIO_OSHANDLETYPE = ^IO_OSHANDLETYPE;
//     IO_OSHANDLETYPE = VTLPVOID;
//{$endif}
//  { __OBJC__  }
//{$else}
//
//  const
//     IO_OSHANDLETYPE = longint;
//{$endif}
//  { Mac OS X  }
//{$endif}
//  {UNIX }
//{$ifdef NLM}
//
//  const
//     IO_OSHANDLETYPE = longint;
//{$endif}
//  {NLM }
  {
    |  Defines for dwType in IOOPEN function
     }

  const
     IOTYPE_DOSPATH = 1;
     IOTYPE_OEMPATH = IOTYPE_DOSPATH;
     IOTYPE_ANSIPATH = 2;
     IOTYPE_MACPATH = 3;
     IOTYPE_UNICODEPATH = 4;
     IOTYPE_MACFSSPEC = 5;
     IOTYPE_MACHFS = 6;
     IOTYPE_TEMP = 7;
     IOTYPE_RANGE = 8;
     IOTYPE_SECONDARY = 9;
     IOTYPE_ISTREAM = 10;
     IOTYPE_SUBSTREAM = 11;
     IOTYPE_SUBSTORAGE = 12;     
     IOTYPE_REDIRECT = 13;     
     IOTYPE_ISTORAGE = 14;     
     IOTYPE_UNIXPATH = 15;     
     IOTYPE_SUBOBJECT = 16;     
     IOTYPE_REMOTEFILTERACCESS = 17;     
     IOTYPE_CHUNKER = 18;     
     IOTYPE_COMPRESS = 19;     
     IOTYPE_SECONDARYFULL = 20;     
  { reserved  }
     IOTYPE_IOSPEC = 21;     
     IOTYPE_MEMORY = 22;     
  {** for using an open file handle, See sccda.c ** }
     IOTYPE_HANDLE = 23;     
  {** IOTYPE_URL reserved for Transformation Server  }
     IOTYPE_URL = 24;     
     IOTYPE_FITEMP = 25;     
  { generic file system path (used by transformation server)  }
     IOTYPE_PATH = 26;     
  { IOLOCATOR path  }
     IOTYPE_LOCATOR = 27;     
  { Linked object (attachment).   }
     IOTYPE_LINKEDOBJECT = 28;     
  { Used in DAOpenDocument to open Archive Nodes }
     IOTYPE_ARCHIVEOBJECT = 29;     
  { These IOTYPEs were added to support writable OLE2 using
  * Microsoft's interface.
   }
     IOTYPE_MSTREAM = 30;     
     IOTYPE_MSTORAGE = 31;     
     IOTYPE_MROOTSTORAGE = 32;     
  { These IOTYPEs were added to support writable OLE2 using
  * our portable interface.
   }
     IOTYPE_OLE2STREAM = 33;     
     IOTYPE_OLE2STORAGE = 34;     
     IOTYPE_OLE2ROOTSTORAGE = 35;     
  { added to support OLE Package embeddings  }
     IOTYPE_OLEPACKAGE = 36;     
  { added for DASaveObject  }
     IOTYPE_OBJECT = 37;     
  { added for in-memory temp files  }
     IOTYPE_PHYSICALTEMP = 38;     
  { support for zip archive files  }
     IOTYPE_ZIPFILE = 39;     
     IOTYPE_ZIPNODE = 40;     
  { support for cab files  }
     IOTYPE_CABINET = 41;     
     IOTYPE_CABFILE = 42;
{$ifdef WINDOWS}
     IOTYPE_WIN32VPATH = IOTYPE_ANSIPATH;
{$endif}

//{$ifdef UNIX}
//  const
//     IOTYPE_WIN32VPATH = IOTYPE_UNIXPATH;
//{$endif}
//{$ifdef NLM}
//
//  const
//     IOTYPE_WIN32VPATH = IOTYPE_DOSPATH;
//{$endif}
  {** Only used by DA to request opening a file requested through DASaveTreeNode  }

  const
     IOTYPE_USERREQUEST = 29;
  {
    |  Structures passed to IOOPEN function
     }

  type

     PIOSPECMACHFS = ^IOSPECMACHFS;
     IOSPECMACHFS = record
          vRefNum : smallint;
          dirId : VTLONG;
          fileName : array[0..255] of VTTCHAR;
       end;
     PPIOSPECMACHFS = ^PIOSPECMACHFS;

  type
     PIOSPECRANGE = ^IOSPECRANGE;
     IOSPECRANGE = record
          hRefFile : HIOFILE;
{$ifdef SCCFEATURE_64BITIO}
          dwFirstByte : VTOFF_T;
          dwLastByte : VTOFF_T;
{$else}
          dwFirstByte : VTDWORD;
          dwLastByte : VTDWORD;
{$endif}
       end;
     PPIOSPECRANGE = ^PIOSPECRANGE;
  { type of compression  }

     PIOSPECCOMPRESS = ^IOSPECCOMPRESS;
     IOSPECCOMPRESS = record
          hRefFile : HIOFILE;
          dwFlags : VTDWORD;
          dwType : VTDWORD;
          dwReserved1 : VTDWORD;
          dwReserved2 : VTDWORD;
          dwReserved3 : VTDWORD;
          pResPointer1 : VTSYSVAL;
       end;
     PPIOSPECCOMPRESS = ^PIOSPECCOMPRESS;

     PIOSPECSECONDARY = ^IOSPECSECONDARY;
     IOSPECSECONDARY = record
          hRefFile : HIOFILE;
          szFileName : array[0..255] of VTTCHAR;
       end;
     PPIOSPECSECONDARY = ^PIOSPECSECONDARY;

     PIOSPECSUBSTREAM = ^IOSPECSUBSTREAM;
     IOSPECSUBSTREAM = record
          hRefStorage : HIOFILE;
          szStreamName : array[0..255] of VTTCHAR;
       end;
     PPIOSPECSUBSTREAM = ^PIOSPECSUBSTREAM;

     PIOSPECSUBSTORAGE = ^IOSPECSUBSTORAGE;
     IOSPECSUBSTORAGE = record
          hRefStorage : HIOFILE;
          szStorageName : array[0..255] of VTTCHAR;
       end;
     PPIOSPECSUBSTORAGE = ^PIOSPECSUBSTORAGE;
  { Through NTFS, the maximum filename size is 255 UNICODE
      * characters plus the terminator.
       }

     PIOSPECMROOTSTORAGE = ^IOSPECMROOTSTORAGE;
     IOSPECMROOTSTORAGE = record
          hRefFile : HIOFILE;
          szFileName : array[0..511] of VTTCHAR;
          dwFlags : VTDWORD;
       end;
     PPIOSPECMROOTSTORAGE = ^PIOSPECMROOTSTORAGE;
  { Maximum stream name size is 31 UNICODE characters
      * plus the terminator.
       }

     PIOSPECMSTREAM = ^IOSPECMSTREAM;
     IOSPECMSTREAM = record
          hRefStorage : HIOFILE;
          szStreamName : array[0..255] of VTTCHAR;
       end;
     PPIOSPECMSTREAM = ^PIOSPECMSTREAM;
  { Maximum storage name size is 31 UNICODE characters
      * plus the terminator.
       }

     PIOSPECMSTORAGE = ^IOSPECMSTORAGE;
     IOSPECMSTORAGE = record
          hRefStorage : HIOFILE;
          szStorageName : array[0..255] of VTTCHAR;
       end;
     PPIOSPECMSTORAGE = ^PIOSPECMSTORAGE;
  { Parameters to the IOGetInfo() / IOSetInfo() calls for Microsoft OLE2.  }

  const
  { These mirror the STGM defines in objbase.h  }
     SCC_STGM_CREATE = $00001000;
     SCC_STGM_DIRECT = $00000000;
     SCC_STGM_READWRITE = $00000002;
     SCC_STGM_SHARE_EXCLUSIVE = $00000010;
     SCC_STGM_SHARE_DENY_WRITE = $00000020;
     SCC_STGM_DELETEONRELEASE = $04000000;

  type

     PIOSPECOLE2ROOTSTORAGE = ^IOSPECOLE2ROOTSTORAGE;
     IOSPECOLE2ROOTSTORAGE = record
          hRefFile : HIOFILE;
          szFileName : array[0..511] of VTTCHAR;
          dwFlags : VTDWORD;
       end;
     PPIOSPECOLE2ROOTSTORAGE = ^PIOSPECOLE2ROOTSTORAGE;
  { When opening an OLE2 root storage, we can wrap the provided
  * reference file and not re-open it on OLE2 document open and
  * not close it on OLE2 document close.  Normal behavior is to
  * create/open a new file that the OLE2 document owns and let it
  * close it on document close.
   }

  const
     SCC_WRAP_REFERENCE_FILE = $00000001;

  type

     PIOSPECOLE2STREAM = ^IOSPECOLE2STREAM;
     IOSPECOLE2STREAM = record
          hRefStorage : HIOFILE;
          szStreamName : array[0..255] of VTTCHAR;
       end;
     PPIOSPECOLE2STREAM = ^PIOSPECOLE2STREAM;

     PIOSPECOLE2STORAGE = ^IOSPECOLE2STORAGE;
     IOSPECOLE2STORAGE = record
          hRefStorage : HIOFILE;
          szStorageName : array[0..255] of VTTCHAR;
       end;
     PPIOSPECOLE2STORAGE = ^PIOSPECOLE2STORAGE;
  { VTHDOC is Defined in SCCDA.H, which is not included here  }

     PIOSPECSUBOBJECT = ^IOSPECSUBOBJECT;
     IOSPECSUBOBJECT = record
          dwStructSize : VTDWORD;
          hDoc : VTSYSPARAM;
          dwObjectId : VTDWORD;
          dwStreamId : VTDWORD;
          dwReserved1 : VTDWORD;
          dwReserved2 : VTDWORD;
       end;
     PPIOSPECSUBOBJECT = ^PIOSPECSUBOBJECT;
  { used to access items in zip archive files,
   * added for MS Office 12 support  }
  { zip file (block I/O)  }

     PIOSPECZIPNODE = ^IOSPECZIPNODE;
     IOSPECZIPNODE = record
          hRefFile : HIOFILE;
          szNodeName : array[0..511] of VTCHAR;
       end;
     PPIOSPECZIPNODE = ^PIOSPECZIPNODE;
  { used to access items in cabinet archive files  }
  { cab file (block I/O)  }
  { see values below  }
  { file index  }
  { null terminated file name  }

     PIOSPECCABFILE = ^IOSPECCABFILE;
     IOSPECCABFILE = record
          hRefFile : HIOFILE;
          wFlags : VTWORD;
          wFileIndex : VTWORD;
          wszFileName : array[0..511] of VTWORD;
       end;
     PPIOSPECCABFILE = ^PIOSPECCABFILE;
  { possible values for IOSPECCABNODE.dwFlags  }

  const
     IO_CABFLAG_INDEX = $0000;
     IO_CABFLAG_NAME = $0001;
  { used for archive objects in DA  }
  { Parent Doc hDoc. VTHDOC is Defined in SCCDA.H, which is not included here  }
  { Node ID  }
  { I'm not sure if this is necessary  }
  { Must always be 0  }
  { Must always be 0  }

  type

     PIOSPECARCHIVEOBJECT = ^IOSPECARCHIVEOBJECT;
     IOSPECARCHIVEOBJECT = record
          dwStructSize : VTDWORD;
          hDoc : VTSYSPARAM;
          dwNodeId : VTDWORD;
          dwStreamId : VTDWORD;
          dwReserved1 : VTDWORD;
          dwReserved2 : VTDWORD;
       end;
     PPIOSPECARCHIVEOBJECT = ^PIOSPECARCHIVEOBJECT;
  {
      Linked objects.
   }
  {  VTHDOC is Defined in SCCDA.H, which is not included here  }
  {  Object identifier.   }
  {  Linked Object type.  (SO_LOCATORTYPE_*)   }
  {  Parameter for DoSpecial call.   }
  {  Parameter for DoSpecial call.   }
  {  Unused.   }
  {  Unused.   }

     PIOSPECLINKEDOBJECT = ^IOSPECLINKEDOBJECT;
     IOSPECLINKEDOBJECT = record
          dwStructSize : VTDWORD;
          hDoc : VTSYSPARAM;
          dwObjectId : VTDWORD;
          dwType : VTDWORD;
          dwParam1 : VTDWORD;
          dwParam2 : VTDWORD;
          dwReserved1 : VTDWORD;
          dwReserved2 : VTDWORD;
       end;
     PPIOSPECLINKEDOBJECT = ^PIOSPECLINKEDOBJECT;

  const
     IO_FILEOPEN = $0001;
     IO_FILEISTEMP = $0002;
  { Locator type (SO_LOCATORTYPE_* from sodefs.h)  }
  { Parameter 1, use depends on locator segment type:
                             OLEPATH, FILENAME, HYPERLINK, BOOKMARK:  Pointer to double-byte string
                             SECTION:            Section number
                             TAGREFERENCE:       Tag ID
                             DOSPECIAL:          Optional parameter
                             RANGE:              Offset
                             WINDOWSRESOURCE:    Resource type
                             COMPRESSION:        Compression type  }
  { Parameter 2, use depends on locator segment type:
                             OLEPATH, FILENAME, HYPERLINK, BOOKMARK:  Length of double-byte string
                             DOSPECIAL:          Optional parameter
                             RANGE:              Length
                             WINDOWSRESOURCE:    Resource ID
                             COMPRESSION:        Compression flags  }

  type

     PIOLOCATORSEGMENT = ^IOLOCATORSEGMENT;
     IOLOCATORSEGMENT = record
          dwType : VTDWORD;
          param1 : VTSYSPARAM;
          param2 : VTSYSPARAM;
       end;
     PPIOLOCATORSEGMENT = ^PIOLOCATORSEGMENT;
  { sizeof(IOLOCATOR)  }
  { VTHDOC is Defined in SCCDA.H, which is not included here  }
  { Number of segments in this locator  }
  { Pointer to an array of locator segments  }

     PIOLOCATOR = ^IOLOCATOR;
     IOLOCATOR = record
          dwStructSize : VTDWORD;
          hDoc : VTSYSPARAM;
          dwSegmentCount : VTDWORD;
          pSegments : PIOLOCATORSEGMENT;
       end;
     PPIOLOCATOR = ^PIOLOCATOR;

  const
     IOLOCATOR_MAXSEGMENTS = 256;
  {
    |  Structure used for specifying the date and time of a file.
     }
  { Year A.D.  }
  { Month, Jan == 1  }
  { Day of month  }
  { Number of miliseconds since midnight  }

  type

     PIODATETIME = ^IODATETIME;
     IODATETIME = record
          dwYear : VTDWORD;
          dwMonth : VTDWORD;
          dwDay : VTDWORD;
          dwTime : VTDWORD;
       end;
     PPIODATETIME = ^PIODATETIME;

     PIORFAREQUEST = ^IORFAREQUEST;
     IORFAREQUEST = record
          dwReserved1 : VTDWORD;
          dwReserved2 : VTDWORD;
          dwReserved3 : VTDWORD;
          dwReserved4 : VTDWORD;
       end;
     PPIORFAREQUEST = ^PIORFAREQUEST;
  { LOWORD of request is one of the following:  }

  const
     RAREQ_CHUNKERDATA = 1;
     RAREQ_RAWDATA = 2;

  type

     IOGETREMOTEDATAPROC = function (hFile:HIOFILE; pRequest:PIORFAREQUEST; var ppData:PVTVOID; var pdwDataSize:VTDWORD):IOERR;cdecl;

     IOCLOSEREMOTEDATAPROC = function (hFile:HIOFILE):IOERR;cdecl;

     IOOPENREMOTESUBOBJECTPROC = function (hFile:HIOFILE; dwObjectId:VTDWORD; dwStreamId:VTDWORD; dwReserved1:VTDWORD; dwReserved2:VTDWORD;
                  var pdwSpecType:VTDWORD; var pSpec:PVTVOID):IOERR;cdecl;
  { Remote Filter Access  }

     PIOBASERFA = ^IOBASERFA;
     IOBASERFA = record
          pGetRemoteData : IOGETREMOTEDATAPROC;
          pCloseRemoteData : IOCLOSEREMOTEDATAPROC;
          pOpenRemoteSubObject : IOOPENREMOTESUBOBJECTPROC;
          pDummy : array[0..4] of PVTVOID;
       end;
     PPIOBASERFA = ^PIOBASERFA;
  {
    |   Structures for different types
  }

  { Underlying IO system  }
  { Underlying IO system's handle to the file  }
  { Info flags  }
  { Handle to this structure  }
  { Pointer position of the reference file when the range was opened  }
  type
     PIORANGEFILE = ^IORANGEFILE;
     IORANGEFILE = record
          sBaseIO : TBASEIO;
          hFile : HIOFILE;
          dwFlags : VTDWORD;
          hThis : VTHANDLE;
{$ifdef SCCFEATURE_64BITIO}
  { Offset of the begining of the logical file  }
  { Offset of the end of the logical file  }
  { Offset in this rangefile wrt dwFirstByte  }
          dwFirstByte : VTOFF_T;
          dwLastByte : VTOFF_T;
          dwCurPos : VTOFF_T;
{$else}
  { Offset of the begining of the logical file  }
  { Offset of the end of the logical file  }
  { Offset in this rangefile wrt dwFirstByte  }
          dwFirstByte : VTDWORD;
          dwLastByte : VTDWORD;
          dwCurPos : VTDWORD;
{$endif}
          dwSavedPos : VTDWORD;
       end;
     PPIORANGEFILE = ^PIORANGEFILE;
  { Underlying IO system  }
  { Underlying IO system's handle to the file  }
  { Type of compression  }
  { Info flags  }
  { Handle to this structure  }
  { Handle to a cached buffer of decompressed data  }
  { pointer to cached buffer of decompressed data  }
  { Handle for data needed for decompression  }
  { pointer to data needed for decompression  }
  { Tell of current buffer start position  }
  { size in bytes of valid buffer  }
  { Temp file to store extra  }
  { keep the last byte read for easy bit reading  }
  { handle to buffer for input  }
  { pointer to buffer for input  }
  { size of read buffer  }
  { position in the read buffer  }
  { position of start of read buffer in the file  }
  { is the read buffer at EOF  }

  type

     PIOCOMPRESSFILE = ^IOCOMPRESSFILE;
     IOCOMPRESSFILE = record
          sBaseIO : TBASEIO;
          hFile : HIOFILE;
          dwType : VTDWORD;
          dwFlags : VTDWORD;
          hThis : VTHANDLE;
          hBuffer : VTHANDLE;
          pBuffer : PVTBYTE;
          hData : VTHANDLE;
          pData : PVTBYTE;
          dwBufferStartPos : VTDWORD;
          dwBufferSize : VTDWORD;
          hTempFile : HIOFILE;
{$ifdef SCCFEATURE_64BITIO}
  { Current temp file size  }
  { Current position in the current temp file of decompressed data  }
  { Current absolute file position of decompressed data  }
          dwTempFileSize : VTOFF_T;
          dwTempFilePos : VTOFF_T;
          dwCurFilePos : VTOFF_T;
{$else}
  { Current temp file size  }
  { Current position in the current temp file of decompressed data  }
  { Current absolute file position of decompressed data  }
          dwTempFileSize : VTDWORD;
          dwTempFilePos : VTDWORD;
          dwCurFilePos : VTDWORD;
{$endif}
          LastByte : VTBYTE;
          nBitsLeft : VTBYTE;
          hReadBuffer : VTHANDLE;
          pReadBuffer : PVTBYTE;
          dwReadBufferSize : VTDWORD;
          dwReadBufferPos : VTDWORD;
          dwReadBufferFilePos : VTDWORD;
          bReadBufferEOF : VTBOOL;
          dwReserved1 : VTDWORD;
          dwReserved2 : VTDWORD;
          dwReserved3 : VTDWORD;
          pResPointer1 : VTSYSVAL;
       end;
     PPIOCOMPRESSFILE = ^PIOCOMPRESSFILE;

  const
     IO_COMPRESSREADBUFFERSIZE = 16384;
  {
  |  256KB seems to be the right balance between going to the disk infrequently
  |  and not having too much memory to schlep around when we do go to disk
   }
     IO_COMPRESSBUFFERSIZE = $00040000;
     IO_COMPRESSTYPE_NONE = 0;
     IO_COMPRESSTYPE_ZLIB = 1;
     IO_COMPRESSTYPE_BASE64 = 2;
  { LZSS Support added Nov 18, 1999  }
     IO_COMPRESSTYPE_LZSS = 3;
  { Nov 2, 2000 PDF Decoding and Decompression methods types  }
     IO_COMPRESSTYPE_ASCII85 = 4;
     IO_COMPRESSTYPE_ASCIIHEX = 5;
     IO_COMPRESSTYPE_RLE = 6;
     IO_COMPRESSTYPE_FLATE = 7;
     IO_COMPRESSTYPE_LZW = 8;
     IO_COMPRESSTYPE_DCT = 9;
     IO_COMPRESSTYPE_CCITT = 11;
     IO_COMPRESSTYPE_RC4 = 13;
  { PK Implode added Sept 11, 2000, currently supports Binary only  }
     IO_COMPRESSTYPE_PKMPLOD = 10;
  { MIF Ascii decode support  }
     IO_COMPRESSTYPE_MIFASCIIDECODE = 12;
  { Same as zlib compression, but without any header information  }
     IO_COMPRESSTYPE_ZLIB_NOHEADER = 14;
     IO_COMPRESSTYPE_UUENCODED = 15;
     IO_COMPRESSTYPE_XXENCODED = 16;
     IO_COMPRESSTYPE_BINHEX = 17;
     IO_COMPRESSTYPE_YENC = 18;
     IO_COMPRESSTYPE_BTOA = 19;
     IO_COMPRESSTYPE_QUOTEDPRINTABLE = 20;
     IO_COMPRESSTYPE_UTF7 = 21;
     IO_COMPRESSTYPE_COMPRESSEDRTF = 22;
  { JBIG 2 added May 14, 2004  }
     IO_COMPRESSTYPE_JBIG2 = 23;
  { CAB support for MSZIP decompression  }
     IO_COMPRESSTYPE_MSZIP = 24;
  { CAB support for LZX decompression  }
     IO_COMPRESSTYPE_LZX = 25;
  { Advanced Encryption Standard (AES) decryption - 9/29/09  }
     IO_COMPRESSTYPE_AES128 = 26;
     IO_COMPRESSTYPE_AES192 = 27;
     IO_COMPRESSTYPE_AES256 = 28;
  { ZIP Crypto  }
     IO_COMPRESSTYPE_ZIPCRYPTO = 29;
  { define unknown compression  }
     IO_COMPRESSTYPE_UNKNOWN = 255;
  {
  |  Structure definitions for memory mapped IO.
   }
     IO_MEMFILE_INITSIZE = 1024;
  { should be set to the size of this structure  }
  { size of valid data  }
  { size of allocated buffer (must be >= dwDataSize)  }

  type

     PIOGENMEMFILE = ^IOGENMEMFILE;
     IOGENMEMFILE = record
          dwSize : VTDWORD;
          pData : PVTVOID;
          dwDataSize : VTDWORD;
          hData : VTHANDLE;
          dwMemSize : VTDWORD;
       end;
     PPIOGENMEMFILE = ^PIOGENMEMFILE;
  { size of valid data  }
  { size of allocated buffer (must be >= dwDataSize)  }
  { if we need a ral temp file, use this  }

     PIOMEMORYFILE = ^IOMEMORYFILE;
     IOMEMORYFILE = record
          sBaseIO : TBASEIO;
          pDataStart : VTLPBYTE;
          pCurrPos : VTLPBYTE;
          dwDataSize : VTDWORD;
          hThis : VTHANDLE;
          dwFlags : VTDWORD;
          hData : VTHANDLE;
          dwMemSize : VTDWORD;
          hRealFile : HIOFILE;
       end;
     PPIOMEMORYFILE = ^PIOMEMORYFILE;
  {
  |  Structure definitions for file access callbacks
   }
  { sizeof(IOREQUESTDATA)           }
  { FI id of reference file         }
  { file spec type                  }
  { pointer to a file spec          }
  { root file spec type             }
  { pointer to the root file spec   }
  { The number of times the callback has already been called for the currently requested item of information  }

     PIOREQUESTDATA = ^IOREQUESTDATA;
     IOREQUESTDATA = record
          dwSize : VTDWORD;
          wFIId : VTWORD;
          dwSpecType : VTDWORD;
          pSpec : PVTVOID;
          dwRootSpecType : VTDWORD;
          pRootSpec : PVTVOID;
          dwAttemptNumber : VTDWORD;
       end;
     PPIOREQUESTDATA = ^PIOREQUESTDATA;
  {****************************************************************************
   * Start of Zip stuff
   *************************************************************************** }
  { Entry in table that stores sorted file names contained in zip file  }

  type

     PFZFILEINFO = ^FZFILEINFO;
     FZFILEINFO = record
          { offset of filename in Fzu.pNames  }
          dwNameLoc : VTDWORD;
          { length of filename  }
          wNameLen : VTWORD;
{$ifdef SCCFEATURE_64BITIO}
  { offset of actual file header  }
  { length of compressed data  }
          dwLoc : VTOFF_T;
          dwDataLen : VTOFF_T;
{$else}
  { offset of actual file header  }
  { length of compressed data  }
          dwLoc : VTDWORD;
          dwDataLen : VTDWORD;
{$endif}
       end;
     PPFZFILEINFO = ^PFZFILEINFO;
  { Support for Zip file I/O system  }
  { Underlying IO system  }
  { Handle to this structure  }
  { zip file  }
  { filenames are case insensitive  }
  { handle to pFileTable array  }
  { sorted array of files in zip  }
  { number of files in zip  }
  { handle to pNames  }
  { concatenation of all filenames  }
  { allocated bytes in pNames  }
  { bytes used in pNames  }

     PIOZIPFILE = ^IOZIPFILE;
     IOZIPFILE = record
          sBaseIO : TBASEIO;
          hThis : VTHANDLE;
          hRefFile : HIOFILE;
          bCaseAware : VTBOOL;
          hFileTable : VTHANDLE;
          pFileTable : PFZFILEINFO;
          dwFileCnt : VTDWORD;
          hNames : VTHANDLE;
          pNames : PVTCHAR;
          dwNamesMax : VTDWORD;
          dwNamesUse : VTDWORD;
       end;
     PPIOZIPFILE = ^PIOZIPFILE;
  { I/O struct for opened nodes within a zip file  }
  { Underlying IO system  }
  { Handle to this structure  }
  { either .hRange or .hCompress  }
  { index into IOZIPFILE.pFileTable  }
  { handle to range file  }
  { handle to compressed file  }
  { space for buffered I/O  }
  { amt of valid data in buffer  }

  type

     PIOZIPNODE = ^IOZIPNODE;
     IOZIPNODE = record
          sBaseIO : TBASEIO;
          hThis : VTHANDLE;
          hRefFile : HIOFILE;
          dwIndex : VTDWORD;
          hRange : HIOFILE;
          hCompress : HIOFILE;
          Buffer : array[0..511] of VTBYTE;
{$ifdef SCCFEATURE_64BITIO}
  { file location of start of buffer  }
          dwBufLoc : VTOFF_T;
{$else}
  { file location of start of buffer  }
          dwBufLoc : VTDWORD;
{$endif}
          dwBufCnt : VTDWORD;
{$ifdef SCCFEATURE_64BITIO}
  { buffer offset wrt dwBufLoc  }
  { for verifying buffered zip IO  }
          lBufPos : VTOFF_T;
          dwVerify : VTOFF_T;
{$else}
  { buffer offset wrt dwBufLoc  }
  { for verifying buffered zip IO  }
          lBufPos : VTLONG;
          dwVerify : VTDWORD;
{$endif}
       end;
     PPIOZIPNODE = ^PIOZIPNODE;
  { Structure returned by IOGetInfo(IOGETINFO_ZIPRANGE)  }
  { IO_COMPRESSTYPE_xxxx  }

  type

     PIOZIPRANGE = ^IOZIPRANGE;
     IOZIPRANGE = record
{$ifdef SCCFEATURE_64BITIO}
          dwFirstByte : VTOFF_T;
          dwLastByte : VTOFF_T;
{$else}
          dwFirstByte : VTDWORD;
          dwLastByte : VTDWORD;
{$endif}
          dwCompressType : VTDWORD;
       end;
     PPIOZIPRANGE = ^PIOZIPRANGE;
  {****************************************************************************
   * End of Zip stuff
   *************************************************************************** }
  {****************************************************************************
   * Start of CAB stuff
   *************************************************************************** }
  { structure to provide access to CFDATA block structure  }
  { range I/O file  }
  { # of compressed bytes in block  }
  { # of uncompressed bytes in block  }

     PCABDATA = ^CABDATA;
     CABDATA = record
          hRefFile : HIOFILE;
          wCompressedSize : VTWORD;
          wUncompressedSize : VTWORD;
       end;
     PPCABDATA = ^PCABDATA;
  { structure to provide access to CFFILE info  }
  { offset into CABFILE.pNames  }
  { uncompressed size of this file in bytes  }
  { uncompressed offset of file in the folder  }
  { index into the CFFOLDER area  }
  { date stamp for this file  }
  { time stamp for this file  }

     PCABFILEINFO = ^CABFILEINFO;
     CABFILEINFO = record
          dwNameLoc : VTDWORD;
          dwNameLen : VTDWORD;
          dwFileSize : VTDWORD;
          dwFileLoc : VTDWORD;
          wFolderIndex : VTWORD;
          wDate : VTWORD;
          wTime : VTWORD;
       end;
     PPCABFILEINFO = ^PCABFILEINFO;
  { Underlying IO system  }
  { Handle to this structure  }
  { handle to parent IOCABFILE  }
  { range within folder  }
  { IOCABINET.pFileInfo array index to obtain the cabfile info  }

     PIOCABFILE = ^IOCABFILE;
     IOCABFILE = record
          sBaseIO : TBASEIO;
          hThis : VTHANDLE;
          hCabinet : HIOFILE;
          hRange : HIOFILE;
          wFileIdx : VTWORD;
       end;
     PPIOCABFILE = ^PIOCABFILE;
  { Underlying IO system  }
  { handle to parent IOCABFILE  }
  { handle to pData array  }
  { array of cab data blocks  }
  { index into folder's pDataArray  }
  { offset within current data block  }
  { offset for 1st CFDATA block in folder  }
  { # of CFDATA blocks in this folder  }
  { compression type for CFDATAs in folder  }

     PIOCABFOLDER = ^IOCABFOLDER;
     IOCABFOLDER = record
          sBaseIO : TBASEIO;
          hCabinet : HIOFILE;
          hData : VTHANDLE;
          pData : PCABDATA;
          wDataIdx : VTWORD;
          dwDataLoc : VTDWORD;
          dwDataOffset : VTDWORD;
          wDataCnt : VTWORD;
          wCompressType : VTWORD;
       end;
     PPIOCABFOLDER = ^PIOCABFOLDER;
  { struct facilitating access of continguous uncompressed cab folder data  }
  { handle to either &Folder or hCompress  }
  { underlying folder I/O handle  }
  { valid when folder is compressed  }

     PCABFOLDERINFO = ^CABFOLDERINFO;
     CABFOLDERINFO = record
          hRefFile : HIOFILE;
          Folder : IOCABFOLDER;
          hCompress : HIOFILE;
       end;
     PPCABFOLDERINFO = ^PCABFOLDERINFO;
  { Underlying IO system  }
  { Handle to this structure  }
  { cab file  }
  { count of folders  }
  { count of files  }
  { bytes in header reserve field  }
  { bytes in folder reserve field  }
  { bytes in data reserve field  }
  { offset of first file location  }
  { handle to pFldrInfo array  }
  { array of all CABFOLDERINFOs in cab  }
  { handle to pFileInfo array  }
  { array of file info structs  }
  { handle to pNames  }
  { concatenation of all filenames  }
  { allocated bytes in pNames  }
  { bytes used in pNames  }

     PIOCABINET = ^IOCABINET;
     IOCABINET = record
          sBaseIO : TBASEIO;
          hThis : VTHANDLE;
          hRefFile : HIOFILE;
          wFolderCnt : VTWORD;
          wFileCnt : VTWORD;
          wHdrReserve : VTWORD;
          ubFldrReserve : VTBYTE;
          ubDataReserve : VTBYTE;
          dwFileLoc : VTDWORD;
          hFldrInfo : VTHANDLE;
          pFldrInfo : PCABFOLDERINFO;
          hFileInfo : VTHANDLE;
          pFileInfo : PCABFILEINFO;
          hNames : VTHANDLE;
          pNames : PVTWCHAR;
          dwNamesMax : VTDWORD;
          dwNamesUse : VTDWORD;
       end;
     PPIOCABINET = ^PIOCABINET;
  {****************************************************************************
   * End of CAB stuff
   *************************************************************************** }
  {
  |       Node of a Shannon-Fano tree
  |       0 is the root.
  |       A zero in left field
  |       means the right field is the value.
   }

     PSFNODE = ^SFNODE;
     SFNODE = record
          left : VTLONG;
          right : VTLONG;
       end;
     PPSFNODE = ^PSFNODE;

  type
     HPSFNODE = PSFNODE;
  {
  |       Structure to store input for creating the Shannon-Fano tree.
   }

  type

     PCODEINFO = ^CODEINFO;
     CODEINFO = record
          lValue : VTLONG;
          nLength : VTSHORT;
       end;
     PPCODEINFO = ^PCODEINFO;
  { is this the final block?  }
  { no more compression. eof  }
  { what type of compression: 0=none, 1=fixed codes, 2=dynamic codes  }
  { bytes left when bType==0  }

     PIOZLIBDATA = ^IOZLIBDATA;
     IOZLIBDATA = record
          hLitLenTree : VTHANDLE;
          pLitLenTree : PSFNODE;
          hDistanceTree : VTHANDLE;
          pDistanceTree : PSFNODE;
          hCodeLenTree : VTHANDLE;
          pCodeLenTree : PSFNODE;
          hTree : VTHANDLE;
          pTree : PSFNODE;
          bFinal : VTBOOL;
          bFinished : VTBOOL;
          bType : VTBYTE;
          wLength : VTWORD;
       end;
     PPIOZLIBDATA = ^PIOZLIBDATA;
  {******************************************************************* }
  {******************************************************************* }
  {************************                   ************************ }
  {************************        LZSS       ************************ }
  {************************                   ************************ }
  {******************************************************************* }
  {******************************************************************* }

  const
     IO_CIRCBUF_SIZE = $1000;
  { LZSS Support added Nov 18, 1999  }
  { the current lzss flags }
  { which flag bit to look at next  }

  type

     PIOLZSSDATA = ^IOLZSSDATA;
     IOLZSSDATA = record
          bCurFlags : VTBYTE;
          bFlagCount : VTBYTE;
          hCircBuf : VTHANDLE;
          pCircBuf : PVTBYTE;
          wCircBufPos : VTWORD;
       end;
     PPIOLZSSDATA = ^PIOLZSSDATA;
  {******************************************************************* }
  {******************************************************************* }
  {************************                   ************************ }
  {************************      PKMPLOD      ************************ }
  {************************                   ************************ }
  {******************************************************************* }
  {******************************************************************* }
  { PKMPLOD Support added Sept 11, 2000  }
  { these values correspond to the format, do not change  }

  const
     BINARYCOMPRESSION = 0;
     ASCIICOMPRESSION = 1;
     ONEKDICTIONARY = 4;
     TWOKDICTIONARY = 5;
     FOURKDICTIONARY = 6;
     LITERALDATA = 0;
     CODEDATA = 1;
  { Binary or ASCII, currently only support Binary  }
  { 1k, 2k, or 4k  }
  { the current data type to read: literal or code  }

  type

     PIOPKMPLODDATA = ^IOPKMPLODDATA;
     IOPKMPLODDATA = record
          bCompressionType : VTBYTE;
          bDictionarySize : VTBYTE;
          bDataType : VTBYTE;
       end;
     PPIOPKMPLODDATA = ^PIOPKMPLODDATA;
  {******************************************************************* }
  {******************************************************************* }
  {****************                                ******************* }
  {**************** PDF DECODING AND DECOMPRESSION ******************* }
  {****************                                ******************* }
  {******************************************************************* }
  {******************************************************************* }
  {******************************************************************* }
  { ASCII85 decoding support added Nov 2, 2000 }
  {******************************************************************* }
  {******************************************************************* }
  {************************                   ************************ }
  {************************      ASCII85      ************************ }
  {************************                   ************************ }
  {******************************************************************* }
  {******************************************************************* }
  { buffer size for character data    }

  const
     ASCII85_CHARDATA_SIZE = 5;
  { buffer size for binary data       }
     ASCII85_BINARYDATA_SIZE = 4;

  type

     PIOASCII85DATA = ^IOASCII85DATA;
     IOASCII85DATA = record
          byCharData : array[0..(ASCII85_CHARDATA_SIZE)-1] of VTBYTE;
          byBinaryData : array[0..(ASCII85_BINARYDATA_SIZE)-1] of VTBYTE;
          bEOD : VTBOOL;
          byNumber : VTBYTE;
          byIndex : VTBYTE;
       end;
     PPIOASCII85DATA = ^PIOASCII85DATA;

     PIOYENCDATA = ^IOYENCDATA;
     IOYENCDATA = record
          Line : array[0..255] of VTBYTE;
          wCurrentPosition : VTWORD;
          wUncompressedLength : VTWORD;
          bWithinPart : VTBOOL;
       end;
     PPIOYENCDATA = ^PIOYENCDATA;

     PIOBTOADATA = ^IOBTOADATA;
     IOBTOADATA = record
          Line : array[0..31] of VTBYTE;
          wCurrentPosition : VTWORD;
          wUncompressedLength : VTWORD;
          dwValue : VTDWORD;
          wCount : VTWORD;
       end;
     PPIOBTOADATA = ^PIOBTOADATA;

     PIOQPDATA = ^IOQPDATA;
     IOQPDATA = record
          Line : array[0..127] of VTBYTE;
          wCurrentPosition : VTWORD;
          wUncompressedLength : VTWORD;
       end;
     PPIOQPDATA = ^PIOQPDATA;

     PIOBinHexDATA = ^IOBinHexDATA;
     IOBinHexDATA = record
          dwReadLength : VTDWORD;
          dwDataLength : VTDWORD;
          Line : array[0..7] of VTBYTE;
          wCurrentPosition : VTWORD;
          wUncompressedLength : VTWORD;
          cchLastCharacter : VTSHORT;
          wRepeatCount : VTWORD;
       end;
     PPIOBINHEXDATA = ^PIOBINHEXDATA;

     PIOCOMPRESSEDRTFDATA = ^IOCOMPRESSEDRTFDATA;
     IOCOMPRESSEDRTFDATA = record
          hLine : VTHANDLE;
          Line : VTLPBYTE;
          bFlagByte : VTBYTE;
          wBitsLeft : VTWORD;
          wCurrentPosition : VTWORD;
          wPositionsBuffered : VTWORD;
          wNextWritePosition : VTWORD;
          dwCompressedSize : VTDWORD;
          dwUnCompressedSize : VTDWORD;
          dwSignature : VTDWORD;
          dwCrc : VTDWORD;
       end;
     PPIOCOMPRESSEDRTFDATA = ^PIOCOMPRESSEDRTFDATA;

     PIOXXEDATA = ^IOXXEDATA;
     IOXXEDATA = record
          Line : array[0..127] of VTBYTE;
          wCurrentPosition : VTWORD;
          wUncompressedLength : VTWORD;
       end;
     PPIOXXEDATA = ^PIOXXEDATA;

     PIOUUEDATA = ^IOUUEDATA;
     IOUUEDATA = record
          Line : array[0..127] of VTBYTE;
          wCurrentPosition : VTWORD;
          wUncompressedLength : VTWORD;
       end;
     PPIOUUEDATA = ^PIOUUEDATA;

     PIOBASE64DATA = ^IOBASE64DATA;
     IOBASE64DATA = record
          Line : array[0..131] of VTBYTE;
          wCurrentPosition : VTWORD;
          wUncompressedLength : VTWORD;
       end;
     PPIOBASE64DATA = ^PIOBASE64DATA;

     PIOUTF7DATA = ^IOUTF7DATA;
     IOUTF7DATA = record
          UnCompressedLine : array[0..127] of VTWORD;
          Line : array[0..127] of VTBYTE;
          wCurrentPosition : VTWORD;
          wUncompressedLength : VTWORD;
       end;
     PPIOUTF7DATA = ^PIOUTF7DATA;
  { ASCIIHex decoding support added Nov 6, 2000 }
  {******************************************************************* }
  {******************************************************************* }
  {************************                   ************************ }
  {************************     ASCIIHEX      ************************ }
  {************************                   ************************ }
  {******************************************************************* }
  {******************************************************************* }
  { used when the least significant part is padded with '0'  }

     PIOASCIIHEXDATA = ^IOASCIIHEXDATA;
     IOASCIIHEXDATA = record
          bEOD : VTBOOL;
       end;
     PPIOASCIIHEXDATA = ^PIOASCIIHEXDATA;
  { Flate decoding support added Nov 17, 2000  }
  {******************************************************************* }
  {******************************************************************* }
  {************************                   ************************ }
  {************************       FLATE       ************************ }
  {************************                   ************************ }
  {******************************************************************* }
  {******************************************************************* }
  { buffer size  }

  const
     FLATE_WINDOW = 32768;
     FLATE_MASK = FLATE_WINDOW-1;
  { max Huffman code length  }
     FLATE_MAX_HUFFMAN = 15;
  { max number of code length codes  }
     FLATE_MAX_CODE_LEN_CODES = 19;
  { max number of literal codes  }
     FLATE_MAX_LIT_CODES = 288;
  { max number of distance codes  }
     FLATE_MAX_DIST_CODES = 30;
  { max number of length for  <length, backward distance> pair  }
     FLATE_MAX_LENGTH = 260;
  { (it is max 258 bytes according to RFC 1951)  }
  { Structure to store input for creating the Huffman tree (Huffman code table entry)  }
  { produced code lengths     }
  { produced codes            }
  { TODO:??                   }

  type

     PFLATECODE = ^FLATECODE;
     FLATECODE = record
          nLength : VTSHORT;
          lCode : VTLONG;
          lValue : VTLONG;
       end;
     PPFLATECODE = ^PFLATECODE;
  { Huffman code table  }
  { handle  to indexes of the first code of each length [IO_FLATE_MAX_HUFFMAN+2]  }
  { pointer to indexes of the first code of each length [IO_FLATE_MAX_HUFFMAN+2]  }

     PFLATEHUFFMANTABLE = ^FLATEHUFFMANTABLE;
     FLATEHUFFMANTABLE = record
          hStart : VTHANDLE;
          pStart : PVTLONG;
          pFlateCodes : PFLATECODE;
       end;
     PPFLATEHUFFMANTABLE = ^PFLATEHUFFMANTABLE;
  { Decoding info for length and distance code words  }
  { number of extra bits  }
  { first length/distance  }

     PFLATEDECODE = ^FLATEDECODE;
     FLATEDECODE = record
          lBits : VTLONG;
          lFirst : VTLONG;
       end;
     PPFLATEDECODE = ^PFLATEDECODE;
  { literal code table  }
  { distance code table  }
  { handle to literal and distance codes.  }
  { pointer to literal and distance codes [IO_FLATE_MAX_LIT_CODES + IO_FLATE_MAX_DIST_CODES].  }
  { input buffer  }
  { number of bits in input buffer  }
  { set if reading a compressed block  }
  { remaining length of uncompressed block  }
  { set when end of block is reached  }
  { set when end of stream is reached  }
  { handle to decompressed data buffer extracted form  <length, backward distance> pair.  }
  { buffer which will keep extracted decompressed data  }
  { number valid bytes in output buffer  }
  { predictor support  }
  { calculated from CINFO flag, and used to allocate buffer for sliding window  }
  { handle to the predictor sturcture.  }
  { pointer to predictor sturcture [FLATE_MAX_LENGTH].  }

     PIOFLATEDATA = ^IOFLATEDATA;
     IOFLATEDATA = record
          sLiteralCodeTab : FLATEHUFFMANTABLE;
          sDistanceCodeTab : FLATEHUFFMANTABLE;
          hAllCodes : VTHANDLE;
          pAllCodes : PFLATECODE;
          lCodeBuf : VTLONG;
          lCodeSize : VTLONG;
          bCompressedBlock : VTBOOL;
          dwBlockLen : VTDWORD;
          bEndOfBlock : VTBOOL;
          bEOD : VTBOOL;
          hDecompData : VTHANDLE;
          pDecompData : PVTBYTE;
          dwRemain : VTDWORD;
          wSlidingWindowSize : VTWORD;
          hPredictorData : VTHANDLE;
          pPredictorData : PVTBYTE;
       end;
     PPIOFLATEDATA = ^PIOFLATEDATA;
  {******************************************************************* }
  {******************************************************************* }
  {************************                   ************************ }
  {************************        LZW        ************************ }
  {************************                   ************************ }
  {******************************************************************* }
  {******************************************************************* }
  { max number of bits that can be used.  }

  const
     MAX_CODE_SIZE = 12;
  { min number of bits that can be used.  }
     MIN_CODE_SIZE = 8;
  { size of the dictionary table (for 12 bits = 4096).  }
     DICT_SIZE = 1 shl MAX_CODE_SIZE;
  { 256  }
     CLEAR_CODE = 1 shl MIN_CODE_SIZE;
  { 257  }
     END_OF_DATA_CODE = CLEAR_CODE+1;
  { 258  }
     FIRST_CODE = CLEAR_CODE+2;
  { this code determines the stop condition when traversing  }
     STOP_CODE = $FFFF;
  { multiway tree.  (initially was 0, but it turned out, that it was  }
  { failing when parent contains 0 which should be retrieved.  }
  { This data structure defines the dictionary.  Each entry in the dictionary has a code value.
   * which is emitted by the compressor.  Each node is actually made up of two pieces:
   *          - parent_code
              - character.
   * Code values of less than 256 are actually plain text codes.
    }

  type

     PDICTTTREE = ^DICTTTREE;
     DICTTTREE = record
          wParentCode : VTWORD;
          byCharacter : VTBYTE;
       end;
     LZWDICTTREE = DICTTTREE;
     PLZWDICTTREE = ^LZWDICTTREE;
     PPLZWDICTTREE = ^PLZWDICTTREE;
  { next code to be added to the dictionary.                                          }
  { for reversing strings that come out of the tree.                                  }
  { contains number of bits, which are currently read from the file.                  }
  { defines the code that will trigger the next jump in bits size. 511, 1023, 2047)   }
  { previous code rad from the input file.                                            }
  { current code read from the input file.                                            }
  { first character of the prevous code, used to construct dictionary entry.          }
  { set true when END_OF_DATA_CODE is reached.                                        }
  { contains bits used for reading specified number of bits.                          }
  { number of bits in dwBitsBuf (used for transforming big-endian to little-endian).  }
  { handle to the predictor sturcture.                                                }
  { pointer to predictor sturcture.                                                   }

     PIOLZWDATA = ^IOLZWDATA;
     IOLZWDATA = record
          hDictTreeArray : VTHANDLE;
          pDictTreeArray : PLZWDICTTREE;
          wDictNextCode : VTWORD;
          hDecodeStack : VTHANDLE;
          pDecodeStack : PVTBYTE;
          wStackPointer : VTWORD;
          byCurrentCodeSize : VTBYTE;
          wNextBumpCode : VTWORD;
          wPrevCode : VTWORD;
          wCurrentCode : VTWORD;
          byFirstChar : VTBYTE;
          bEOD : VTBOOL;
          dwBitsBuf : VTDWORD;
          dwBitsLeft : VTDWORD;
          hPredictorData : VTHANDLE;
          pPredictorData : PVTBYTE;
       end;
     PPIOLZWDATA = ^PIOLZWDATA;

//  const
//     IO_COMPRESSTYPE_NONE = 0;
//     IO_COMPRESSTYPE_ZLIB = 1;
//     IO_COMPRESSTYPE_BASE64 = 2;
  {******************************************************************* }
  {******************************************************************* }
  {************************                   ************************ }
  {************************     PREDICTOR     ************************ }
  {************************                   ************************ }
  {******************************************************************* }
  {******************************************************************* }
  const
  { Predictor types:  }
     IO_PREDICTION_NONE = 0;
  { also no prediction    }
     IO_PREDICTION_DEFAULT = 1;
     IO_PREDICTION_TIFF = 2;
  { no prediction         }
     IO_PREDICTION_PNG_NONE = 10;
     IO_PREDICTION_PNG_SUB = 11;
     IO_PREDICTION_PNG_UP = 12;
     IO_PREDICTION_PNG_AVERAGE = 13;
     IO_PREDICTION_PNG_PEATH = 14;
     IO_PREDICTION_PNG_OPTIMUM = 15;
  { Masks for extracting data from the reserved words.  }
     PREDICTOR_MASK_COLORS = $FF;
     PREDICTOR_MASK_BITS = $FF00;
     PREDICTOR_MASK_EARLY = $FF0000;
  { When predictors are used we need to keep data in sliding window.  To get the size of
   * the slididng window CINFO flag from ZLIB header is read.  Its max value can be CINFO=7,
   * which gives sliding window size of 32k (2pow(CINFO+8).  Everything less than CINFO=7
   * will give smaller sliding widnow smaller and the value will be get by right shift.
    }
  { 32k  }
     SLIDING_WINDOW_MAX = 1 shl 15;
  {
   | For transfering extra parmeters needed for prediction from IOCOMPRESSDATA, following is used:
   |      dwReserved1 - prediction values (1 - no prediction, 2 - TIFF prediction, 10 - 15 PNG prediction)
   |                (for more info see PDF Reference Pg. 48, and PNG specification - filter algorithms)
   |      dwReserved2 - number of colmuns (pixels per line)
   |      dwReserved3 - number of color components (last siginivicant byte 0xFF
   |      dwReserved3 - bits per pixel (second byte 0xFF00)
   |      dwReserved3 - early change (third byte 0xFF0000)
   | They are either repeated or extracted in this structure.
    }
  { dwReserved1 - predictor type  }
  { dwReserved2 - columns (pixels per line).  }
  { dwReserved3 - number of color components (0xFF)  }
  { dwReserved3 - lower byte of dwReserved3  0xFF00  }
  { dwReserved3 - higher byte of dwReserved3  0xFF0000  }
  { dwWidth*byColorComponents. - components per line  }
  { bytes per pixel.  }
  { bytes per line.  }
  { handle to predictor line buffer  }
  { pointer to predictor line buffer.  }
  { current index in predictor line.  }
  { handle to sliding window buffer  }
  { pointer to sliding widnow buffer  }
  { current index in sliding window.  }
  { contains mask for wrapping of index in Sliding window (as circular buffer).  }

  type

     PIOPREDICTORDATA = ^IOPREDICTORDATA;
     IOPREDICTORDATA = record
          byPredictor : VTBYTE;
          dwWidth : VTDWORD;
          byColorComponents : VTBYTE;
          byBitsPerComponent : VTBYTE;
          byEarlyChange : VTBYTE;
          dwVals : VTDWORD;
          dwPixBytes : VTDWORD;
          dwRowBytes : VTDWORD;
          hPredictorLine : VTHANDLE;
          pPredictorLine : PVTBYTE;
          dwPredictorIndex : VTDWORD;
          hSlidingWindow : VTHANDLE;
          pSlidingWindow : PVTBYTE;
          wSlidingIndex : VTWORD;
          wSlidingMask : VTWORD;
       end;
     PPIOPREDICTORDATA = ^PIOPREDICTORDATA;
  {******************************************************************* }
  {******************************************************************* }
  {************************                   ************************ }
  {************************        DCT        ************************ }
  {************************                   ************************ }
  {******************************************************************* }
  {******************************************************************* }
  {
   | For transfering extra parmeters needed for DCT from IOCOMPRESSDATA, following is used:
   |      dwReserved1 - whether ColorTransform parameter is defined in the dictionary
   |                                           (0 - not defined in the dictionary,
   |                                            1 - defined in the dictionary with value stored in
   |                                                dwReserved2)
   |      dwReserved2 - ColorTransform integer (0 - no color transformation,
   |                                            1 - apply color transformation)
   |
   | ColorTransform integer is a code specifying the transformation to be performed on the
   | sample values:
   |       0 No transformation.
   |       1 If the image has three color components, transform RGB values to YUV before
   |         encoding and from YUV to RGB after decoding. If the image has four components,
   |         transform CMYK values to YUVK before encoding and from YUVK to CMYK after
   |         decoding. This option is ignored if the image has one or two color components.
   | The default value of ColorTransform is 1 if the image has three components and 0 otherwise.
   | In other words, conversion between RGB and YUV is performed for all three-component images
   | unless explicitly disabled by setting ColorTransform to 0. Additionally, the encoding
   | algorithm inserts an Adobedefined marker code in the encoded data indicating the ColorTransform
   | value used. If present, this marker code overrides the ColorTransform value given to DCTDecode.
   | Thus it is necessary to specify ColorTransform only when decoding data that does not contain
   | the Adobe-defined marker code.
    }
  {
   * JPEG markers consist of one or more 0xFF bytes, followed by a marker
   * code byte (which is not an FF).  Here are the marker codes of interest
   * in this program.  (See jdmarker.c for a more complete list.)
    }
  { Note: codes C4 and CC are NOT SOF markers  }
  { NON-DIFFERENTIAL HUFFMAN        }
  { Baseline DCT                    }
  { Extended sequential DCT         }
  { Progressive DCT                 }
  { Spatial DPCM                    }
  { DIFFERENTIAL HUFFMAN            }
  { Differential sequential DCT     }
  { Differential progressive DCT    }
  { Differential spatial            }
  { NON-DIFFERENTIAL ARITHMETIC     }
  { Reserved for JPEG extensions    }
  { Extended sequential DCT         }
  { Progressive DCT                 }
  { Spatial DPCM                    }
  { DIFFERENTIAL ARITHMETIC         }
  { Differential sequential DCT     }
  { Differential progressive DCT    }
  { Differential spatial            }
  { Define Huffman table            }
  { Define Arithmetic conditioning  }
  { Restart with modulo 8 count 0   }
  { Restart with modulo 8 count 1   }
  { Restart with modulo 8 count 2   }
  { Restart with modulo 8 count 3   }
  { Restart with modulo 8 count 4   }
  { Restart with modulo 8 count 5   }
  { Restart with modulo 8 count 6   }
  { Restart with modulo 8 count 7   }
  { Start of image                  }
  { End of image                    }
  { Start of scan                   }
  { Define quantization table(s)    }
  { Define number of lines          }
  { Define restart interval         }
  { Define hierarchical progression }
  { Expand reference image(s)       }
  { RESERVED APPLICATION SEGMENTS 0xFFE0-0xFFEF  }
  { Application Data                }
  { Adobe Application-Specific JPEG Marker  }
  { RESERVED JPEG EXTENSIONS      0xFFF0-0xFFFD           }
  { Comment                         }
  { Temp. private use arithmetic    }
  { RESERVED 0xFF02-0xFFBF     }

     PDCT_MARKER = ^DCT_MARKER;
     DCT_MARKER =  Longint;
     Const
       SOF0 = $c0;
       SOF1 = $c1;
       SOF2 = $c2;
       SOF3 = $c3;
       SOF5 = $c5;
       SOF6 = $c6;
       SOF7 = $c7;
       JPG = $c8;
       SOF9 = $c9;
       SOF10 = $ca;
       SOF11 = $cb;
       SOF13 = $cd;
       SOF14 = $ce;
       SOF15 = $cf;
       DHT = $c4;
       DAC = $cc;
       RST0 = $d0;
       RST1 = $d1;
       RST2 = $d2;
       RST3 = $d3;
       RST4 = $d4;
       RST5 = $d5;
       RST6 = $d6;
       RST7 = $d7;
       SOI = $d8;
       EOI = $d9;
       SOS = $da;
       DQT = $db;
       DNL = $dc;
       DRI = $dd;
       DHP = $de;
       EXP = $df;
       APP0 = $e0;
       APP1 = $e1;
       APP2 = $e2;
       APP3 = $e3;
       APP4 = $e4;
       APP5 = $e5;
       APP6 = $e6;
       APP7 = $e7;
       APP8 = $e8;
       APP9 = $e9;
       APP10 = $ea;
       APP11 = $eb;
       APP12 = $ec;
       APP13 = $ed;
       APP14 = $ee;
       APP15 = $ef;
       JPG0 = $f0;
       JPG13 = $fd;
       COM = $fe;
       TEM = $01;
       MARKER_ERROR = $100;

  { The basic DCT block is 8x8 samples            }
     DCTSIZE = 8;
  { DCTSIZE squared; # of elements in a block     }
     DCT_BLOCK_SIZE = 64;
  { Quantization tables are numbered 0..3         }
     NUM_QUANT_TBLS = 4;
  { Huffman tables are numbered 0..3              }
     NUM_HUFF_TBLS = 4;
  { JPEG limit on # of components in one scan     }
     MAX_COMPS_IN_SCAN = 4;
  { JPEG limit on sampling factors                }
     MAX_SAMP_FACTOR = 4;     
     DCT_CLIP_SIZE = 768;     
     DCT_CLIP_OFFSET = 256;     
  { Table B.5  }
     MAX_NUM_HUFF_CODES = 256;     
  { cos(pi/16)  }
     dctCos1 = 0.98078528;     
  { sin(pi/16)  }
     dctSin1 = 0.19509032;     
  { cos(3*pi/16)  }
     dctCos3 = 0.83146961;     
  { sin(3*pi/16)  }
     dctSin3 = 0.55557023;     
  { cos(6*pi/16)  }
     dctCos6 = 0.38268343;     
  { sin(6*pi/16)  }
     dctSin6 = 0.92387953;     
  { sqrt(2)  }
     dctSqrt2 = 1.41421356;     
  { sqrt(2) / 2  }
     dctSqrt1d2 = 0.70710678;     
  {#endif }
  { color conversion parameters (16.16 fixed point format)  }
  {  1.4020       }
     dctCrToR = 91881;     
  { -0.3441363    }
     dctCbToG = -(22553);     
  { -0.71413636   }
     dctCrToG = -(46802);     
  {  1.772        }
     dctCbToB = 116130;     
  { DCT component info  }
  { component identifier (0-255) (for PDF max 4)                      }
  { is this component in the current scan?                            }
  { horizontal sampling factor (1-4)                                  }
  { vertical sampling factor (1-4)                                    }
  { quantization table selector (0..3) (max 4 tables can be defined)  }
  { DC entropy table (Huffman) selector (0..3)                        }
  { AC entropy table (Huffman) selector (0..3)                        }
  { DC coefficient accumulator                                        }

  type

     PDCTCOMP_INFO = ^DCTCOMP_INFO;
     DCTCOMP_INFO = record
          byComponentID : VTBYTE;
          bInScan : VTBOOL;
          byHSampFactor : VTBYTE;
          byVSampFactor : VTBYTE;
          byQuantTableNo : VTBYTE;
          byDCHuffTableNo : VTBYTE;
          byACHuffTableNo : VTBYTE;
          nPrevDC : VTSHORT;
       end;
  { DCT Huffman decoding table  }
  { first symbol for this bit length      }
  { first code for this bit length        }
  { number of codes of this bit length    }
  { symbols                               }

     PDCTHUFF_TBL = ^DCTHUFF_TBL;
     DCTHUFF_TBL = record
          firstSym : array[0..16] of VTWORD;
          firstCode : array[0..16] of VTDWORD;
          numCodes : array[0..16] of VTBYTE;
          sym : array[0..255] of VTBYTE;
       end;

     PDCTQUANT_TBL = ^DCTQUANT_TBL;
     DCTQUANT_TBL = record
          hQuantElems : VTHANDLE;
          pQuantElems : VTLPBYTE;
       end;
  { image size (X)                                    }
  { image size (Y)                                    }
  { size of min coding unit, in data units            }
  { size of min coding unit, in data units            }
  { info for each component               }
  { number of image components (Nf) (1-255).          }
  { need YCbCr-to-RGB transform?                      }
  { set if APP14 Adobe marker was present             }
  { restart interval, as number of MCUs (0-65535)     }
  { quantization tables                       }
  { number of quantization tables                     }
  { DC Huffman tables                        }
  { number of DC Huffman tables                       }
  { AC Huffman tables                        }
  { number of AC Huffman tables (Th) (0-3)            }
  { handle to buffer for one MCU                      }
  { pointer to buffer for one MCU                     }
  {VTLPBYTE    rowBuf[4][32]; }  { buffer for one MCU                                }
  { curent component                                  }
  { current X position within image                   }
  { current Y position within image                   }
  { current position within MCU.                      }
  { MCUs left until restart                           }
  { next restart marker                               }
  { input buffer for variable length codes            }
  { number of valid bits in input buffer              }
  { progressive JPEG spectral selection parms         }
  { progressive JPEG successive approx. parms         }
  { TRUE if SOFn specifies progressive mode           }
  { clip [-256,511] --> [0,255]  }
  {int       dctClipInit; }

     PIODCTDATA = ^IODCTDATA;
     IODCTDATA = record
          wImageWidth : VTWORD;
          wImageHeight : VTWORD;
          byMCUWidth : VTBYTE;
          byMCUHeight : VTBYTE;
          hCompInfo : array[0..(MAX_COMPS_IN_SCAN)-1] of VTHANDLE;
          pCompInfo : array[0..(MAX_COMPS_IN_SCAN)-1] of PDCTCOMP_INFO;
          byNumComps : VTBYTE;
          byColorTransform : VTBYTE;
          bGotAdobeMarker : VTBOOL;
          wRestartInterval : VTWORD;
          QuantTbls : array[0..(NUM_QUANT_TBLS)-1] of DCTQUANT_TBL;
          byNumQuantTbls : VTBYTE;
          hDCHuffTbls : array[0..(NUM_HUFF_TBLS)-1] of VTHANDLE;
          pDCHuffTbls : array[0..(NUM_HUFF_TBLS)-1] of PDCTHUFF_TBL;
          byNumDCHuffTbls : VTBYTE;
          hACHuffTbls : array[0..(NUM_HUFF_TBLS)-1] of VTHANDLE;
          pACHuffTbls : array[0..(NUM_HUFF_TBLS)-1] of PDCTHUFF_TBL;
          byNumACHuffTbls : VTBYTE;
          hRowBuf : VTHANDLE;
          pRowBuf : VTLPBYTE;
          dwRowBufWidth : VTDWORD;
          byCurrentComp : VTBYTE;
          wCurrentX : VTWORD;
          wCurrentY : VTWORD;
          byCurrentdY : VTBYTE;
          wRestartCtr : VTSHORT;
          eRrestartMarker : DCT_MARKER;
          byInBuf : VTBYTE;
          byNumInBits : VTBYTE;
          bySs : VTBYTE;
          bySe : VTBYTE;
          byAh : VTBYTE;
          byAl : VTBYTE;
          bProgressiveMode : VTBOOL;
          hDctClip : VTHANDLE;
          pDctClip : VTLPBYTE;
       end;
     PPIODCTDATA = ^PIODCTDATA;
  {******************************************************************* }
  {******************************************************************* }
  {************************                  ************************* }
  {************************  MIFAsciiDecode  ************************* }
  {************************                  ************************* }
  {******************************************************************* }
  {******************************************************************* }
  { Named MIFAsciiDecode because I have not discovered the real format name  }
  { MIFAsciiDecode Support added Nov 11, 2001  }
  { these values correspond to the format, do not change  }

  const
     MIFCOMPRESS_BINARYINASCII = 1;
     MIFCOMPRESS_UNKNOWN = 2;
     IMAGELINEBUFSIZE = $80;
  { Data is binary or ascii  }

  type

     PIOMIFAsciiDecode = ^IOMIFAsciiDecode;
     IOMIFAsciiDecode = record
          hSrcbuf : VTHANDLE;
          Srcbuf : VTLPBYTE;
          HexMode : VTBOOL;
          FirstTime : VTBOOL;
          UnGetVal : VTBYTE;
          UnGetIsValid : VTBOOL;
          ByteCount : VTLONG;
          Datatype : VTBYTE;
          DecodeComplete : VTBOOL;
       end;
     PPIOMIFAsciiDecode = ^PIOMIFAsciiDecode;
  {******************************************************************* }
  {******************************************************************* }
  {********************                         ********************** }
  {********************  CCITT G3D1, G3D2, G4D2 ********************** }
  {********************                         ********************** }
  {******************************************************************* }
  {******************************************************************* }
  {
   | For transfering extra parmeters needed for CCITT decompression from IOCOMPRESSDATA, following is used:
   |  dwReserved1 -
   |          bits 0-15:  K - a code identifying the encoding scheme used:
   |          (int)       K<0 Pure G42D encoding
   |                      K=0 Pure G31D encoding
   |                      K>0 Mixed G3 1D and 2D encoding, in which a line encoded 1D can be
   |                          followed by at most K-1 lines encoded 2D.
   |          bits 16-32: DamagedRowsBeforeError - The number of damaged rows of data to be tolerated
   |          (int)       before and error occures.  This entry applies only if EndOfLine is true and
   |                      K is nonnegative.
   |  dwReserved2 -
   |          bit 0:      EndOfLine - a flag indicating whether EOL bit patterns are required to be
   |                      present in the encoding.  Decompression always accepts EOL bit patterns, but
   |                      requires them only if EndOfLine is true.
   |          bit 1:      EndOfBlock - a flag indicating whether the decompression expects the encoded data
   |                      to be terminated by an EOB pattern, overriding the Rows parameter.  If false,
   |                      the decompression stops when it has decoded the number of lines indicated by Rows,
   |                      or when its data has been exausted, whichever occurs first.  The bit pattern
   |                      depends on K parameter and can be either EOFB (end-of-facsimile-block) or RTC
   |                      (return-to-control).
   |          bit 2:      EncodedByteAlign - A flag indicating whether the decompression expects extra
   |                      0-bits before each encoded line so that the line begins on a byte boundary.
   |                      If true, the filter skips over encoded bits to begin decoding each line at byte
   |                      boundary.
   |          bit 3:      EncodedWordAlign - Indicates that each line of encoded data begins on a word
   |                      (16-bit) boundary.
   |          bit 4:      Blacks1 - a flag indicating whether 1-bits are to be interpreted as black pixels
   |                      and 0-bits as white pixels, the reverse of the normal PDF convention for monochrome
   |                      image data.
   |          bit 5:      LSBtoMSB - Indicates that the fill order is least significant to most significant.
   |          bit 6:      Group3RLE - Indicates that the data is encoded using RLE compression. This is only
   |                      used by TIFF files currently. Only applies if K=0.
   |  dwReserved3 -
   |          bits 0-15:  Columns - the width of the image in pixels.  If the value is not a multiple of 8,
   |                      the compression should adjust the width of the unencoded image to the next multiple
   |                      of 8, so that each line starts on a byte boundary.
   |          bits 16-32: The height of the image in scan lines.  If the value is 0 or absent, the images
   |                      height is not predetermined, and the encoded data must be terminated by an EOB bit
   |                      pattern or by the end of the stream data.
   |
    }
  { Masks for extracting data from the reserved words.  }
  { dwReserved1  }

  const
     CCITT_MASK_ENCODING = $0000FFFF;
     CCITT_MASK_DAMAGE_ROWS = $FFFF0000;
  { dwReserved2  }
     CCITT_MASK_EOL = $00000001;
     CCITT_MASK_EOB = $00000002;
     CCITT_MASK_BYTE_ALIGN = $00000004;
     CCITT_MASK_WORD_ALIGN = $00000008;
     CCITT_MASK_BLACK = $00000010;
     CCITT_MASK_LSBTOMSB = $00000020;
     CCITT_MASK_GROUP3RLE = $00000040;
  { dwReserved3  }
     CCITT_MASK_COLUMNS = $0000FFFF;
     CCITT_MASK_ROWS = $FFFF0000;
  {******************************************************************* }
  {******************************************************************* }
  {********************                         ********************** }
  {********************           RC4           ********************** }
  {********************                         ********************** }
  {******************************************************************* }
  {******************************************************************* }

  type

     PIORC4DATA = ^IORC4DATA;
     IORC4DATA = record
          hKey : VTHANDLE;
          pKey : PVTBYTE;
          byKeyLength : VTBYTE;
          RC4State : VTRC4_CTX;
       end;
     PPIORC4DATA = ^PIORC4DATA;
  {******************************************************************* }
  {******************************************************************* }
  {********************                         ********************** }
  {********************           AES           ********************** }
  {********************                         ********************** }
  {******************************************************************* }
  {******************************************************************* }
  { AES type (i.e. AES-128, AES-192, AES-256)  }
  { mode of operation                          }
  { generic AES block                          }
  { pointer to an AES key schedule             }

  type

     PIOAESDATA = ^IOAESDATA;
     IOAESDATA = record
{$ifdef SCCFEATURE_64BITIO}
  { decrypted file size  }
          offFileSize : VTOFF_T;
{$else}
  { decrypted file size  }
          offFileSize : VTDWORD;
{$endif}
          dwType : VTDWORD;
          dwMode : VTDWORD;
          szAESBlock : array[0..15] of VTBYTE;
          pKeySchedule : PVTBYTE;
       end;
     PPIOAESDATA = ^PIOAESDATA;

  type

     PIOZIPCRYPTODATA = ^IOZIPCRYPTODATA;
     IOZIPCRYPTODATA = record
{$ifdef SCCFEATURE_64BITIO}
          offFileSize : VTOFF_T;
{$else}
          offFileSize : VTDWORD;
{$endif}
          dwCrcTable : array[0..255] of VTDWORD;
          Key : array[0..2] of VTDWORD;
       end;
     PPIOZIPCRYPTODATA = ^PIOZIPCRYPTODATA;
  {******************************************************************* }
  {******************************************************************* }
  {********************                         ********************** }
  {********************          JBIG2          ********************** }
  {********************                         ********************** }
  {******************************************************************* }
  {******************************************************************* }

  const
     JBIG2_SYMBOL_DICT = 0;
     JBIG2_INT_TEXT = 4;
     JBIG2_IMM_TEXT = 6;
     JBIG2_IMM_LL_TEXT = 7;
     JBIG2_PATTERN_DICT = 16;
     JBIG2_INT_HALFTONE = 20;
     JBIG2_IMM_HALFTONE = 22;
     JBIG2_IMM_LL_HALFTONE = 23;
     JBIG2_INT_GENERIC = 36;
     JBIG2_IMM_GENERIC = 38;
     JBIG2_IMM_LL_GENERIC = 39;
     JBIG2_INT_GENERIC_REF = 40;
     JBIG2_IMM_GENERIC_REF = 42;
     JBIG2_IMM_LL_GENERIC_REF = 43;
     JBIG2_PAGE_INFO = 48;
     JBIG2_END_OF_PAGE = 49;
     JBIG2_END_OF_STRIPE = 50;
     JBIG2_END_OF_FILE = 51;
     JBIG2_PROFILES = 52;
     JBIG2_TABLES = 53;
     JBIG2_EXTENSIONS = 62;
     JBIG2_INTCONTEXTSIZE = 512;
     JBIG2_BOTTOMLEFT = 0;
     JBIG2_TOPLEFT = 1;
     JBIG2_BOTTOMRIGHT = 2;
     JBIG2_TOPRIGHT = 3;
     JBIG2_OR = 0;
     JBIG2_AND = 1;
     JBIG2_XOR = 2;
     JBIG2_XNOR = 3;
  {  union

          BYTE    byRetainFlags;
          LPDWORD pdwRetainFlags;
       uRetainUnion;
      union

          LPBYTE  byteSize;
          LPWORD  wordSize;
          LPDWORD dwordSize;
       uReferredSegments;
    }

  type

     PJBIGHEADERDATA = ^JBIGHEADERDATA;
     JBIGHEADERDATA = record
          dwSegmentNumber : VTDWORD;
          dwFlags : VTDWORD;
          bySegmentType : VTBYTE;
          dwReferredToCount : VTDWORD;
          byRetainFlags : VTBYTE;
          uPageAssociation : record
              case longint of
                 0 : ( bySegmentPage : VTBYTE );
                 1 : ( dwSegmentPage : VTDWORD );
              end;
          dwSegmentDataLength : VTDWORD;
       end;
//     PLPJBIG_STRUCT = ^LPJBIG_STRUCT;

     PJBIG2_RegionSegmentInfo = ^JBIG2_RegionSegmentInfo;
     JBIG2_RegionSegmentInfo = record
          dwXPos : VTDWORD;
          dwYPos : VTDWORD;
          dwWidth : VTDWORD;
          dwHeight : VTDWORD;
          dwByteWidth : VTDWORD;
          byFlags : VTBYTE;
       end;
     PPJBIG2_RegionSegmentInfo = ^PJBIG2_RegionSegmentInfo;

     HUFFMAN_ROW_TYPE =  Longint;
     PHUFFMAN_ROW_TYPE = ^HUFFMAN_ROW_TYPE;
     Const
       ROW_NORMAL = 0;
       ROW_OOB = 1;
       ROW_LOWER = 2;
       ROW_HIGHER = 3;

  type

     PJBIG2_Arithmetic = ^JBIG2_Arithmetic;
     JBIG2_Arithmetic = record
          c : VTDWORD;
          a : VTLONG;
          ct : VTLONG;
       end;
     PPJBIG2_Arithmetic = ^PJBIG2_Arithmetic;

     PJBIG2_Huffman = ^JBIG2_Huffman;
     JBIG2_Huffman = record
          byThisByte : VTBYTE;
          BitOffset : VTSHORT;
       end;
     PPJBIG2_Huffman = ^PJBIG2_Huffman;

     PJBIG2_HUFFMAN_LINE = ^JBIG2_HUFFMAN_LINE;
     JBIG2_HUFFMAN_LINE = record
          RANGELOW : VTLONG;
          PREFLEN : VTLONG;
          RANGELEN : VTLONG;
          PREFIX : VTLONG;
       end;
     PPJBIG2_HUFFMAN_LINE = ^PJBIG2_HUFFMAN_LINE;
(* Const before type ignored *)

     PJBIG2_HUFFMAN_TABLE = ^JBIG2_HUFFMAN_TABLE;
     JBIG2_HUFFMAN_TABLE = record
          HTOOB : VTBOOL;
          nLines : VTLONG;
          Lines : PJBIG2_HUFFMAN_LINE;
       end;
     PPJBIG2_HUFFMAN_TABLE = ^PJBIG2_HUFFMAN_TABLE;

     PJBIG2_HUFFMAN_NODE = ^JBIG2_HUFFMAN_NODE;
     JBIG2_HUFFMAN_NODE = record
          Index : VTLONG;
          ONE : PJBIG2_HUFFMAN_NODE;
          ZERO : PJBIG2_HUFFMAN_NODE;
       end;
     PPJBIG2_HUFFMAN_NODE = ^PJBIG2_HUFFMAN_NODE;

  {Number of Bytes in Row  }
  { number of references to this image  }
  { Uncompressed Image Data of size (dwRowStride*dwImageHeight) }

     PJBIG2_Bitmap = ^JBIG2_Bitmap;
     JBIG2_Bitmap = record
          dwImageWidth : VTDWORD;
          dwImageHeight : VTDWORD;
          dwRowStride : VTDWORD;
          dwRefCount : VTDWORD;
          Image : VTLPBYTE;
       end;
     PPJBIG2_Bitmap = ^PJBIG2_Bitmap;

     PJBIG2_SymbolDictionary = ^JBIG2_SymbolDictionary;
     JBIG2_SymbolDictionary = record
          dwSymCount : VTDWORD;
          Symbols : PPJBIG2_Bitmap;
       end;
     PPJBIG2_SymbolDictionary = ^PJBIG2_SymbolDictionary;
  {Symbol distionary that is used as an input to this symbol dictionary. It contains dwNumInSyms symbols  }
  {The number of symbols to be defined in this symbol dictionary  }
  {The number of symbols to be exported from this symbol dictionary  }
  { these are signed bytes, *not* text data. Do not make them TCHARs!  }
  {More signed bytes. Don't make TCHARs  }

     PJBIG2_SymbolSettings = ^JBIG2_SymbolSettings;
     JBIG2_SymbolSettings = record
          bHuff : VTBOOL;
          bRefAgg : VTBOOL;
          pSDInSyms : PJBIG2_SymbolDictionary;
          dwNumExSyms : VTDWORD;
          dwNumNewSyms : VTDWORD;
          SDHUFFDH : PJBIG2_HUFFMAN_TABLE;
          TreeSDHUFFDH : PJBIG2_HUFFMAN_NODE;
          SDHUFFDW : PJBIG2_HUFFMAN_TABLE;
          TreeSDHUFFDW : PJBIG2_HUFFMAN_NODE;
          SDHUFFBMSIZE : PJBIG2_HUFFMAN_TABLE;
          TreeSDHUFFBMSIZE : PJBIG2_HUFFMAN_NODE;
          SDHUFFAGGINST : PJBIG2_HUFFMAN_TABLE;
          TreeSDHUFFAGGINST : PJBIG2_HUFFMAN_NODE;
          byTemplate : VTBYTE;
          chSYMAT : array[0..3] of array[0..1] of VTCHAR;
          byRefTemplate : VTBYTE;
          chSYMATRef : array[0..3] of VTCHAR;
          bBMPCodingUsed : VTBOOL;
          bBMPCodingKept : VTBOOL;
          dwNumProcessedSyms : VTDWORD;
       end;
     PPJBIG2_SymbolSettings = ^PJBIG2_SymbolSettings;
  { these are signed bytes, *not* text data. Do not make them TCHARs!  }

     PJBIG2_GenericSettings = ^JBIG2_GenericSettings;
     JBIG2_GenericSettings = record
          bMMR : VTBOOL;
          bTPGDON : VTBOOL;
          byGBT : VTBYTE;
          dwHeight : VTDWORD;
          dwWidth : VTDWORD;
          chGBAT : array[0..3] of array[0..1] of VTCHAR;
       end;
     PPJBIG2_GenericSettings = ^PJBIG2_GenericSettings;
  { bug9056767: Changing from VTBYTE to VTSHORT because it is a signed value -zf 04/12/10  }
  { Refinement AT flags  }

     PJBIG2_TextSettings = ^JBIG2_TextSettings;
     JBIG2_TextSettings = record
          bHuff : VTBOOL;
          bRefine : VTBOOL;
          byLogSBStrips : VTBYTE;
          byStrips : VTBYTE;
          byRefCorner : VTBYTE;
          bTransposed : VTBOOL;
          byComboOp : VTBYTE;
          bDefPix : VTBOOL;
          DeltaSOffset : VTCHAR;
          bRefTemp : VTBOOL;
          wHuffFlags : VTWORD;
          SDHUFFFS : PJBIG2_HUFFMAN_TABLE;
          TreeSDHUFFFS : PJBIG2_HUFFMAN_NODE;
          SDHUFFDS : PJBIG2_HUFFMAN_TABLE;
          TreeSDHUFFDS : PJBIG2_HUFFMAN_NODE;
          SDHUFFDT : PJBIG2_HUFFMAN_TABLE;
          TreeSDHUFFDT : PJBIG2_HUFFMAN_NODE;
          SDHUFFRDW : PJBIG2_HUFFMAN_TABLE;
          TreeSDHUFFRDW : PJBIG2_HUFFMAN_NODE;
          SDHUFFRDH : PJBIG2_HUFFMAN_TABLE;
          TreeSDHUFFRDH : PJBIG2_HUFFMAN_NODE;
          SDHUFFRDX : PJBIG2_HUFFMAN_TABLE;
          TreeSDHUFFRDX : PJBIG2_HUFFMAN_NODE;
          SDHUFFRDY : PJBIG2_HUFFMAN_TABLE;
          TreeSDHUFFRDY : PJBIG2_HUFFMAN_NODE;
          SDHUFFRSIZE : PJBIG2_HUFFMAN_TABLE;
          TreeSDHUFFRSIZE : PJBIG2_HUFFMAN_NODE;
          SBRAT : array[0..3] of VTCHAR;
          dwNumInstances : VTDWORD;
          dwNumProcessedInstances : VTDWORD;
       end;
     PPJBIG2_TextSettings = ^PJBIG2_TextSettings;

     PJBIG2_BitmapHeader = ^JBIG2_BitmapHeader;
     JBIG2_BitmapHeader = record
          dwWidth : VTDWORD;
          dwHeight : VTDWORD;
       end;
     PPJBIG2_BitmapHeader = ^PJBIG2_BitmapHeader;
  { indicates if the symbol is refined  }

     PJBIG2_TextInstance = ^JBIG2_TextInstance;
     JBIG2_TextInstance = record
          lS : VTLONG;
          lT : VTLONG;
          lID : VTLONG;
          bRefine : VTBOOL;
          Symbol : PJBIG2_Bitmap;
       end;
     PPJBIG2_TextInstance = ^PJBIG2_TextInstance;

     PJBIG2_RefinementSettings = ^JBIG2_RefinementSettings;
     JBIG2_RefinementSettings = record
          dwGRW : VTDWORD;
          dwGRH : VTDWORD;
          byGRTemplate : VTBYTE;
          pRefImage : PJBIG2_Bitmap;
          lRDX : VTLONG;
          lRDY : VTLONG;
          GRAT : array[0..3] of VTCHAR;
       end;
     PPJBIG2_RefinementSettings = ^PJBIG2_RefinementSettings;

     PIOJBIG2DATA = ^IOJBIG2DATA;
     IOJBIG2DATA = record
          ArithState : JBIG2_Arithmetic;
          HuffmanState : JBIG2_Huffman;
          SegInfo : JBIG2_RegionSegmentInfo;
          GenericSettings : JBIG2_GenericSettings;
          SymbolSettings : JBIG2_SymbolSettings;
          TextSettings : JBIG2_TextSettings;
          hArithmeticContext : VTHANDLE;
          pArithmeticContext : VTLPBYTE;
          hIADHContext : VTHANDLE;
          pIADHContext : VTLPBYTE;
          hIADWContext : VTHANDLE;
          pIADWContext : VTLPBYTE;
          hIAEXContext : VTHANDLE;
          pIAEXContext : VTLPBYTE;
          hIAAIContext : VTHANDLE;
          pIAAIContext : VTLPBYTE;
          hIADTContext : VTHANDLE;
          pIADTContext : VTLPBYTE;
          hIAFSContext : VTHANDLE;
          pIAFSContext : VTLPBYTE;
          hIADSContext : VTHANDLE;
          pIADSContext : VTLPBYTE;
          hIAITContext : VTHANDLE;
          pIAITContext : VTLPBYTE;
          hIAIDContext : VTHANDLE;
          pIAIDContext : VTLPBYTE;
          hIARDXContext : VTHANDLE;
          pIARDXContext : VTLPBYTE;
          hIARDYContext : VTHANDLE;
          pIARDYContext : VTLPBYTE;
          hIARDHContext : VTHANDLE;
          pIARDHContext : VTLPBYTE;
          hIARDWContext : VTHANDLE;
          pIARDWContext : VTLPBYTE;
          hIARIContext : VTHANDLE;
          pIARIContext : VTLPBYTE;
       end;
     PPIOJBIG2DATA = ^PIOJBIG2DATA;
  {******************************************************************* }
  {******************************************************************* }
  {********************                         ********************** }
  {********************           LZX           ********************** }
  {********************                         ********************** }
  {******************************************************************* }
  {******************************************************************* }
  { spec says max # of slots is 42, but others have disagreed  }

  const
     LZX_MAX_SLOTS = 50;
     LZX_NUM_CHARS = 256;
  { constants for building main tree lookup table  }
     LZX_MAIN_TREE_ELEMS = LZX_NUM_CHARS+(LZX_MAX_SLOTS*8);
     LZX_MAIN_LOOKUP_BITS = 12;
     LZX_MAIN_LOOKUP_SIZE = (1 shl LZX_MAIN_LOOKUP_BITS)+(2*LZX_MAIN_TREE_ELEMS);
  { constants for building length tree lookup table  }
     LZX_LENGTH_TREE_ELEMS = 249;
     LZX_LENGTH_LOOKUP_BITS = 12;
     LZX_LENGTH_LOOKUP_SIZE = (1 shl LZX_LENGTH_LOOKUP_BITS)+(2*LZX_LENGTH_TREE_ELEMS);
  { constants for building align tree lookup table  }
     LZX_ALIGN_TREE_ELEMS = 8;
     LZX_ALIGN_LOOKUP_BITS = 7;
     LZX_ALIGN_LOOKUP_SIZE = (1 shl LZX_ALIGN_LOOKUP_BITS)+(2*LZX_ALIGN_TREE_ELEMS);
  { stores most significant bit first  }
  { # bits in wBitBuf left to read  }
  { total # of uncompressed bytes read  }
  { window size is already stored in IOCOMPRESSFILE.dwReserved1  }
  { # of window subdivisions/slots  }
  { 0xe8 opcode translation size  }
  { Main tree lengths  }
  { Length tree lengths  }
  { Align tree lengths  }
  { lookup arrays for determining huffman code values  }
  { handle to memory in pWindow  }
  { sliding window array  }
  { current location in pWindow  }
  { location needing 0xe8 decoding  }
  { R# values as described in lzx spec  }

  type

     PIOLZXDATA = ^IOLZXDATA;
     IOLZXDATA = record
          bEOF : VTBOOL;
          wBitBuf : VTWORD;
          wBitsLeft : VTWORD;
          dwBytesRead : VTDWORD;
          wPositionSlots : VTWORD;
          dwTransSize : VTDWORD;
          ubBlockType : VTBYTE;
          MainData : array[0..(LZX_MAIN_TREE_ELEMS)-1] of VTWORD;
          LengthData : array[0..(LZX_LENGTH_TREE_ELEMS)-1] of VTWORD;
          AlignData : array[0..(LZX_ALIGN_TREE_ELEMS)-1] of VTWORD;
          MainLookup : array[0..(LZX_MAIN_LOOKUP_SIZE)-1] of VTWORD;
          LengthLookup : array[0..(LZX_LENGTH_LOOKUP_SIZE)-1] of VTWORD;
          AlignLookup : array[0..(LZX_ALIGN_LOOKUP_SIZE)-1] of VTWORD;
          hWindow : VTHANDLE;
          pWindow : PVTBYTE;
          dwWindowLoc : VTDWORD;
          dwDecodeLoc : VTDWORD;
          RecentOffsets : array[0..2] of VTDWORD;
       end;
     PPIOLZXDATA = ^PIOLZXDATA;
  {******************************************************************* }
  {******************************************************************* }
//  {
//    |   Macros
//     }
//  { was #define dname(params) para_def_expr }
//  { argument types are unknown }
//  { return type might be wrong }
//  function IOOpenVia(a,b,c,d,e : longint) : longint;
//
//  { was #define dname(params) para_def_expr }
//  { argument types are unknown }
//  { return type might be wrong }
//  function IOClose(a : longint) : longint;
//
//  { was #define dname(params) para_def_expr }
//  { argument types are unknown }
//  { return type might be wrong }
//  function IORead(a,b,c,d : longint) : longint;
//
//  { was #define dname(params) para_def_expr }
//  { argument types are unknown }
//  { return type might be wrong }
//  function IOWrite(a,b,c,d : longint) : longint;
//
//  { was #define dname(params) para_def_expr }
//  { argument types are unknown }
//  { return type might be wrong }
//  function IOSeek(a,b,c : longint) : longint;
//
//  { was #define dname(params) para_def_expr }
//  { argument types are unknown }
//  { return type might be wrong }
//  function IOTell(a,b : longint) : longint;
//
//  { was #define dname(params) para_def_expr }
//  { argument types are unknown }
//  { return type might be wrong }
//  function IOGetInfo(a: PBASEIO; b,c : longint) : longint;

{$ifdef SCCFEATURE_64BITIO}
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function IOSeek64(a,b,c : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function IOTell64(a,b : longint) : longint;  
{$endif}
  {
    |   Functions
  }
  function IOCreate(var phFile:HIOFILE; dwType:VTDWORD; pSpec: Pointer; dwFlags:VTDWORD):IOERR;cdecl;external External_library name 'IOCreate';
  function IOOpen(var phFile:HIOFILE; dwType:VTDWORD; Spec: Pointer; dwFlags:VTDWORD):IOERR;cdecl;external External_library name 'IOOpen';
  function IOSetFileTime(hFile:HIOFILE; pDate:PIODATETIME; dwFlags:VTDWORD):IOERR;cdecl;external External_library name 'IOSetFileTime';
  function IODelete(dwType:VTDWORD; pSpec: Pointer; dwFlags:VTDWORD):IOERR;cdecl;external External_library name 'IODelete';
  function IOGetTempFullUnicodeFileName(pwszFileName:VTLPWORD):IOERR;cdecl;external External_library name 'IOGetTempFullUnicodeFileName';
  function IOGetTempFullFileName(pszFileName:VTLPTSTR; dwSpecType:VTDWORD):IOERR;cdecl;external External_library name 'IOGetTempFullFileName';
  function IOMapIOERR(ieCode:IOERR):VTDWORD;cdecl;external External_library name 'IOMapIOERR';

  {
    |  Structure used to access the internal storage of file specifications.
    |  Note: This type of structure is never passed into the IO routines
    |  but is used to marshall IO specs into a single data block
    |
    |  Note: The Mac FSSpec structure is only available on the Mac
    |
     }
  { Writable OLE2 Microsoft  }
  { Writable OLE2 native  }

  type

     PIOSPEC = ^IOSPEC;
     IOSPEC = record
          dwSignature : VTDWORD;
          dwSize : VTDWORD;
          dwType : VTDWORD;
          uTypes : record
              case longint of
                 0 : ( szDosPath : array[0..0] of VTBYTE );
                 1 : ( szAnsiPath : array[0..0] of VTBYTE );
                 2 : ( szMacPath : array[0..0] of VTBYTE );
                 3 : ( szUnixPath : array[0..0] of VTBYTE );
                 4 : ( szUnicodePath : array[0..0] of VTWORD );
                 5 : ( sMacHfs : IOSPECMACHFS );
                 6 : ( sRange : IOSPECRANGE );
                 7 : ( sCompress : IOSPECCOMPRESS );
                 8 : ( szTempPrefix : array[0..0] of VTTCHAR );
                 9 : ( aGen : array[0..0] of VTBYTE );
                 10 : ( sSecondary : IOSPECSECONDARY );
                 11 : ( sSubStream : IOSPECSUBSTREAM );
                 12 : ( sSubStorage : IOSPECSUBSTORAGE );
                 13 : ( sMRootStorage : IOSPECMROOTSTORAGE );
                 14 : ( sMStorage : IOSPECMSTORAGE );
                 15 : ( sMStream : IOSPECMSTREAM );
                 16 : ( sOLE2RootStorage : IOSPECOLE2ROOTSTORAGE );
                 17 : ( sOLE2Stream : IOSPECOLE2STREAM );
                 18 : ( sOLE2Storage : IOSPECOLE2STORAGE );
                 19 : ( sZipNode : IOSPECZIPNODE );
                 20 : ( pRedirect : PBASEIO );
              end;
       end;
     PPIOSPEC = ^PIOSPEC;

     PHIOSPEC = ^HIOSPEC;
     HIOSPEC = VTHANDLE;

  const
     IO_IOSPEC_SIGNATURE = $10FED3F1;     
  {__export  }  { __cdecl  }
  function IOAllocSpec(dwType:VTDWORD; pSpec: Pointer; var phSpec:VTHANDLE):IOERR;cdecl;external External_library name 'IOAllocSpec';

  { Added for writable ole2.  }
  {__export  }  { __cdecl  }  function IOSetInfo(hFile:HIOFILE; dwType:VTDWORD; dwInfoId:VTDWORD; pInfo: Pointer):IOERR;cdecl;external External_library name 'IOSetInfo';

  { dwInfoId parameters for IOSetInfo().  }

  const
     IOSETINFO_OLE2CLSID = 1;
     IOSETINFO_CASESENSITIVITY = 2;
  {
    |  Structure used to retrieve Class IDs of OLE2 files.
     }

  type

     PSCCOLE2CLSID = ^SCCOLE2CLSID;
     SCCOLE2CLSID = record
          Data1 : VTDWORD;
          Data2 : VTWORD;
          Data3 : VTWORD;
          Data4 : array[0..7] of VTBYTE;
       end;
     PPSCCOLE2CLSID = ^PSCCOLE2CLSID;

implementation

//  function IOOpenVia(a,b,c,d,e : longint) : longint;
//  begin
//   IOOpenVia:=a^.pOpen(b,c,d,e);
//  end;
//
//  function IOClose(a : longint) : longint;
//  begin
//     IOClose:=(PBASEIO(a))^.(pClose(a));
//  end;
//
//  { was #define dname(params) para_def_expr }
//  { argument types are unknown }
//  { return type might be wrong }
//  function IORead(a,b,c,d : longint) : longint;
//    begin
//       IORead:=(PBASEIO(a))^.(pRead(a,PVTBYTE(b),c,d));
//    end;
//
//  { was #define dname(params) para_def_expr }
//  { argument types are unknown }
//  { return type might be wrong }
//  function IOWrite(a,b,c,d : longint) : longint;
//    begin
//       IOWrite:=(PBASEIO(a))^.(pWrite(a,PVTBYTE(b),c,d));
//    end;
//
//  { was #define dname(params) para_def_expr }
//  { argument types are unknown }
//  { return type might be wrong }
//  function IOSeek(a,b,c : longint) : longint;
//    begin
//       IOSeek:=(PBASEIO(a))^.(pSeek(a,b,c));
//    end;
//
//  { was #define dname(params) para_def_expr }
//  { argument types are unknown }
//  { return type might be wrong }
//  function IOTell(a,b : longint) : longint;
//    begin
//       IOTell:=(PBASEIO(a))^.(pTell(a,b));
//    end;
//
//  { was #define dname(params) para_def_expr }
//  { argument types are unknown }
//  { return type might be wrong }
//  function IOGetInfo(a,b,c : longint) : longint;
//    begin
//       IOGetInfo:=(PBASEIO(a))^.(pGetInfo(a,b,c));
//    end;
//
//  { was #define dname(params) para_def_expr }
//  { argument types are unknown }
//  { return type might be wrong }
//  function IOSeek64(a,b,c : longint) : longint;
//    begin
//       IOSeek64:=(PBASEIO(a))^.(pSeek64(a,b,c));
//    end;
//
//  { was #define dname(params) para_def_expr }
//  { argument types are unknown }
//  { return type might be wrong }
//  function IOTell64(a,b : longint) : longint;
//    begin
//       IOTell64:=(PBASEIO(a))^.(pTell64(a,b));
//    end;

end.
