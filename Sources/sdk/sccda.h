/* Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved. */

   /*
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
    */


#ifndef _SCCDA_H
#define _SCCDA_H

#ifdef WINDOWS
#ifndef SCC_PACK_SET
#define SCC_PACK_SET 1
#define SCC_PACKED_BY_SCCDA_H 1
#pragma pack(push,8)
#endif /* SCC_PACK_SET */
#endif /* WINDOWS */

#include "scctype.h"
#include "sccop.h"
#include "sccfi.h"
#include "sccanno.h"
#include "sccerr.h"

#ifdef __cplusplus
extern "C"
{
#endif

#ifndef DA_ENTRYSC

#ifdef WIN32
#define DA_ENTRYMOD     __cdecl
#define DA_ENTRYSC      __declspec(dllexport)
#define DA_ENTRYMODPTR  DA_ENTRYMOD *
#endif /*WIN32*/

#ifdef UNIX
#define DA_ENTRYMOD
#define DA_ENTRYSC
#define DA_ENTRYMODPTR  DA_ENTRYMOD *
#endif /*UNIX*/

#ifdef NLM
#define DA_ENTRYMOD
#define DA_ENTRYSC
#define DA_ENTRYMODPTR  DA_ENTRYMOD *
#endif /*NLM*/

#endif // DA_ENTRYSC

typedef VTSYSPARAM VTHDOC, * VTLPHDOC;

#define VTHDOC_INVALID     0

   /*
   | SCCDAPOS  structure
   */

typedef SCCPOS SCCDAPOS;
typedef SCCPOS * PSCCDAPOS;

typedef struct VTSELECTIONtag
{
    VTDWORD       dwStructSize;           /* Initialize to sizeof(VTSELECTION)  */
    VTDWORD       dwType;                 /* Selection type (see below)         */
    union
    {
        VTWORD  wSection;
    } uSelection;
} VTSELECTION, * PVTSELECTION;
/* Values for VTSELECTION.dwType */
#define VTSEL_SECTIONNUMBER      1

typedef SCCERR  DAERR;

#define DAERR_OK                      SCCERR_OK
#define DAERR_BADFILE                 SCCERR_BADFILE
#define DAERR_EMPTYFILE               SCCERR_EMPTYFILE
#define DAERR_PROTECTEDFILE           SCCERR_PROTECTEDFILE
#define DAERR_DRMFILE                 SCCERR_DRMFILE
#define DAERR_SUPFILEOPENFAILS        SCCERR_SUPFILEOPENFAILED
#define DAERR_MEMORY                  SCCERR_OUTOFMEMORY
#define DAERR_EOF                     SCCERR_EOF
#define DAERR_ABORT                   SCCERR_ABORT
#define DAERR_FILTERNOTAVAIL          SCCERR_NOFILTER
#define DAERR_FILTERLOADFAILED        SCCERR_FILTERLOADFAILED
#define DAERR_FILEOPENFAILED          SCCERR_FILEOPENFAILED
#define DAERR_CHARMAPFAILED           SCCERR_CHARMAPFAILED
#define DAERR_UNKNOWN                 SCCERR_UNKNOWN
#define DAERR_FILECREATE              SCCERR_FILECREATE
#define DAERR_FILEWRITEFAILED         SCCERR_FILEWRITEFAILED
#define DAERR_MORE                    SCCERR_MORE
#define DAERR_BADPARAM                SCCERR_BADPARAM
#define DAERR_NOFILE                  SCCERR_NOFILE
#define DAERR_UNSUPPORTEDCOMPRESSION  SCCERR_UNSUPPORTEDCOMPRESSION
#define DAERR_MISALIGNMENT            SCCERR_EXCEPT_DATATYPE_MISALIGNMENT
#define DAERR_NODATATORENDER          SCCERR_NODATATORENDER
#define DAERR_EXTERNALURLREFERENCE    SCCERR_EXTERNALURLREFERENCE
#define DAERR_LINKTOFILE              SCCERR_LINKTOFILE
#define DAERR_NOTARCHIVEFILE          SCCERR_NOTARCHIVEFILE
#define DAERR_NOTSUPPORTEDARCHIVEFILE SCCERR_NOTSUPPORTEDARCHIVEFILE
#define DAERR_BADCREDENTIALS          SCCERR_BADCREDENTIALS

#define DA_PATHSIZE 1024
#define DA_EXTENSIONSIZE 8

/* For tree file access, 8-9-99 */
typedef struct DATREENODEtag
{
    VTDWORD dwSize;
    VTDWORD dwNode;
    VTBYTE  szName[DA_PATHSIZE];
    VTDWORD dwFileSize;
    VTDWORD dwTime;
    VTDWORD dwFlags;
    VTDWORD dwCharSet;
} SCCDATREENODE, *PSCCDATREENODE;
#define SCCDA_TREENODEFLAG_FOLDER   (0x00000001)
#define SCCDA_TREENODEFLAG_SELECTED (0x00000002)
#define SCCDA_TREENODEFLAG_FOCUS    (0x00000004)
#define SCCDA_TREENODEFLAG_ENCRYPT  (0x00000010)
#define SCCDA_TREENODEFLAG_ARCKNOWNENCRYPT (0x00000020)
#define SCCDA_TREENODEFLAG_BUFFEROVERFLOW	(0x00000100)

typedef struct DATREENODELOCATORtag
{
    VTDWORD dwSize;           /* the size of the DATREENODELOCATOR structure */
    VTDWORD dwSpecialFlags;   /* the archive tree node special flag */
    VTDWORD dwData1;
    VTDWORD dwData2;
}SCCDATREENODELOCATOR, *PSCCDATREENODELOCATOR;


/* For Dramamine support */
typedef struct DADRAMAMINEINFO1tag
{
  VTWORD  word1;
  VTBYTE  szByte1[64];
  VTBYTE  szByte2[64];
} DADRAMAMINEINFO1, * PDADRAMAMINEINFO1;

/* maximum size of a subdocument specification */
#define DA_MAXSUBDOCSPEC    256

typedef struct DAFILESPECtag
{
    VTDWORD   dwSpecType;
    VTLPVOID  pSpec;
    VTHANDLE  hThis;
} DAFILESPEC, * PDAFILESPEC;


/*
|  DAFILEFORMATTYPE enumeration
*/
typedef enum DAFILEFORMATTYPEtag
	{
	DAFORMAT_UNKNOWN = 0,  /* Unknown format */
	DAFORMAT_WP = 1,       /* Word processor */
	DAFORMAT_SS = 2,       /* Spreadsheet */
	DAFORMAT_DB = 3,       /* Database */
	DAFORMAT_IM = 5,       /* Bitmap image */
	DAFORMAT_AR = 6,       /* Archive */
	DAFORMAT_DR = 7,       /* Vector Drawing */
	DAFORMAT_PR = 8,       /* Presentation */
	DAFORMAT_CH = 9,       /* Chart */
	DAFORMAT_MM = 10,      /* Multimedia */

	DAFORMAT_MULTIPLE = 98,    /* File supports multiple file types */
	DAFORMAT_OTHER    = 99     /* A format not otherwise listed */
	} DAFILEFORMATTYPE;


/* 
|  SCCDAOBJECT structure
| 
|  Object identifier. Used in calls to DASaveObject and DAGetInputObjectInfoX 
*/
typedef struct SCCDAOBJECTtag
	{
	VTDWORD    dwSize;       /* Filled in by caller with sizeof(SCCDAOBJECT) */
	VTHDOC     hDoc;         /* Filled in by caller with the DA handle for the document containing the object */
	VTDWORD    dwObjectType; /* SCCCA_EMBEDDEDOBJECT, SCCCA_LINKEDOBJECT, SCCCA_COMPRESSEDFILE, or SCCCA_ATTACHMENT */
	VTDWORD    dwData1;      /* Additional data identifying the object */
	VTDWORD    dwData2;      /* Additional data identifying the object */
	VTDWORD    dwData3;      /* Additional data identifying the object */
	VTDWORD    dwData4;      /* Additional data identifying the object */
    } SCCDAOBJECT, * PSCCDAOBJECT;

/* 
|  SCCDAOBJECTINFOW structure
|
|  Object information
*/

typedef struct SCCDAOBJECTINFOWtag
    {
    VTDWORD    dwSize;                 /* Filled in by caller with sizeof(SCCDAOBJECTINFO) */
    VTWORD     name[DA_PATHSIZE];      /* Object name (2 byte characters) */
    VTDWORD    dwObjectType;           /* Type of object: SCCCA_EMBEDDEDOBJECT, SCCCA_LINKEDOBJECT, SCCCA_COMPRESSEDFILE, or SCCCA_ATTACHMENT */
    VTDWORD    dwFormatId;             /* File format identifier          */
    VTDWORD    dwCompression;          /* Compression type (if known)     */
    VTDWORD    dwFlags;                /* Additional flags (See below)    */
    DAFILEFORMATTYPE formatType;       /* File format type (see DAFILEFORMATTYPE enum) */
    VTWORD     commonExtension[DA_EXTENSIONSIZE]; /* Commonly used filename extension for this file format */
    VTBOOL     bGetObjectFromOLELocator;
    VTBOOL     bGetObjectFromOLEPackage;
    VTBOOL     bGetObjectInfo;
    } SCCDAOBJECTINFOW, * PSCCDAOBJECTINFOW;

/* 
|  DAGetObjectInfo and DAGetOutputObjectInfo parameters
*/
#define DAOBJECT_NAME_A             1 /* Retrieves the name of the object, in 8-bit characters.  pInfo points to a buffer of size DA_PATHSIZE.                       */
#define DAOBJECT_NAME_W             2 /* Retrieves the name of the object in Unicode characters.  pInfo points to a buffer of 16 bit characters of size DA_PATHSIZE. */
#define DAOBJECT_FORMATID           3 /* Retrieves the OIT file ID of the object.  pInfo points to a VTDWORD value.                                                  */
#define DAOBJECT_COMPRESSIONTYPE    4 /* Retrieves an identifier of the type of compression used to store the object, if known.  pInfo points to a VTDWORD value.    */
#define DAOBJECT_FLAGS              5 /* Retrieves a bitfield of flags indicating additional attributes of the object.  pInfo points to a VTDWORD value.             */
#define DAOBJECT_OBJECTTYPE         6 /* Type of object                                                                                                              */
#define DAOBJECT_FORMATTYPE         7 /* File format type (see DAFILEFORMATTYPE enum)                                                                                */
#define DAOBJECT_COMMONEXTENSION_A  8 /* Commonly used filename extension for this file format in 8-bit characters.                                                  */
#define DAOBJECT_COMMONEXTENSION_W  9 /* Commonly used filename extension for this file format in Unicode characters.                                                */

/* Flags for DAGetObjectInfo( DAOBJECT_FLAGS ) */
#define DAOBJECTFLAG_PARTIALFILE       0x00000001 /* Object would not normally exist outside the source document */
#define DAOBJECTFLAG_PROTECTEDFILE     0x00000002 /* Object is encrypted or password protected                   */
#define DAOBJECTFLAG_UNSUPPORTEDCOMP   0x00000004 /* Object uses an unsupported compression mechanism            */
#define DAOBJECTFLAG_DRMFILE           0x00000008 /* Object uses Digital Rights Management protection            */
#define DAOBJECTFLAG_UNIDENTIFIEDFILE  0x00000010 /* Object is extracted, but can not successfully identified    */
#define DAOBJECTFLAG_LINKTOFILE        0x00000020 /* Object links to file, it can not be extracted               */
#define DAOBJECTFLAG_ARCKNOWNENCRYPT   0x00000040 /* Object is encrypted and can be decryped with the known password  */

/*
|  DA Component types
|  Used in calls to DAAddPipelineComponent, DAGetCurrentPipelineComponentType
|    DAGetPipelineComponent, and DAOpenPipelineComponent
*/
#define DACOMP_UNKNOWN          0xC000   /* Unknown/any component type */
#define DACOMP_HIOFILE          0xC001   /* SCCIO (HIOFILE) */
#define DACOMP_SOFILTER         0xC002   /* SO Filter (HFILTER) */
#define DACOMP_EXFILTER         0xC003   /* Export filter */
#define DACOMP_PASSIVECOMPONENT 0xC004   /* Passive component filter (HCOMPONENT) */
#define DACOMP_ACTIVECOMPONENT  0xC005   /* Active component filter (HCOMPONENT) */
#define DACOMP_CHUNKER          0xC006   /* Standard chunker (HCHUNKER) */
#define DACOMP_XCHUNKER         0xC007   /* XChunker (HCHUNKER)*/
#define DACOMP_FILESPEC         0xC008   /* I/O Spec/spec type (PDAFILESPEC)*/
#define DACOMP_XTREE            0xC009   /* XTree (HXTREE) */



/*
|  DA Component flags
|  Used in calls to DAAddPipelineComponent
*/
#define DACOMPF_CLOSEHANDLE  0x00000001 /* Set if component handle should be closed on DACloseDocument */
#define DACOMPF_FREEHANDLE   0x00000002 /* Set if component handle should be freed on DACloseDocument (by calling UTGlobalFree) */

/*
|  DAGetFileInfoEx() flags
*/
#define DA_FILEINFO_RAWFI 0x00000001

/*
|  DA Internal flags
*/
#define DAOLE_COPYSTORAGE_DOTEMPFILE 0x01
#define DAOLE_COPYSTORAGE_DOUSERFILE 0x02

/*
|  Additional flags for DAOpenDocument
*/
#define DAOPENDOCUMENT_CONTINUEONFAILURE   0x80000000   /* Return a valid VTHDOC that can be used to obtain information */
                                                        /* about a document even if a failure occurs.                   */
                                                        /* Currently used by DAGetObjectInfo                            */ 
#define DAOPENDOCUMENT_ARCHIVEONLYMODE     0x04000000   /* When the flag is set, only archive document can be opened    */
                                                        /* All other file formats will return an error                  */

/* File Access callback function signature */
typedef VTDWORD (DA_ENTRYMODPTR DAFILEACCESSCALLBACKFN)(VTDWORD dwID, VTSYSVAL pRequestData, VTSYSVAL pReturnData, VTDWORD dwReturnDataSize);

/* - defines for file access callback */
#ifndef SCCVW_H
#define OIT_FILEACCESS_PASSWORD  1
#define OIT_FILEACCESS_NOTESID   2
#endif

/* The sig of the UT status callback function */
typedef VTDWORD (DA_ENTRYMODPTR DASTATCALLBACKFN)(VTHANDLE hUnique, VTDWORD dwID, VTSYSVAL pCallbackData, VTSYSVAL pAppData);

#ifndef SCCVW_H
	 /* 
	  |  Defines for DA status callback
     */
#define OIT_STATUS_WORKING		0
#define OIT_STATUS_CONTINUE		DAERR_OK
#define OIT_STATUS_CANCEL		SCCERR_CANCEL
#define OIT_STATUS_ABORT		DAERR_ABORT
#endif
#define DASTAT_WORKING              0

/*
|  P R O T O T Y P E S
*/

DA_ENTRYSC DAERR DA_ENTRYMOD DAInit(VTVOID);
DA_ENTRYSC VTLONG DA_ENTRYMOD DAThreadInitExt(
                    VTLONG (*Lock)(VTVOID *), VTLONG (*Unlock)(VTVOID *));
DA_ENTRYSC VTLONG DA_ENTRYMOD DAThreadInit(VTSHORT ThreadOption);
DA_ENTRYSC DAERR DA_ENTRYMOD DADeInit(VTVOID);
DA_ENTRYSC DAERR DA_ENTRYMOD DAOpenDocument( 
            VTLPHDOC phDoc, VTDWORD  dwSpecType, VTLPVOID pSpec, VTDWORD  dwFlags);
DA_ENTRYSC DAERR DA_ENTRYMOD DAOpenNextDocument( 
            VTHDOC hDoc, VTDWORD  dwSpecType, VTLPVOID pSpec, VTDWORD  dwFlags);
DA_ENTRYSC DAERR DA_ENTRYMOD DACloseDocument(VTHDOC hDoc);
DA_ENTRYSC DAERR DA_ENTRYMOD DARetrieveDocHandle(VTHDOC hItem, VTLPHDOC phDoc);
DA_ENTRYSC DAERR DA_ENTRYMOD DASetOption(
            VTHDOC hItem, VTDWORD dwOptionId, VTLPVOID pValue, VTDWORD dwSize);
DA_ENTRYSC DAERR DA_ENTRYMOD DASetFileSpecOption( 
            VTHDOC hItem, VTDWORD dwOptionId, VTDWORD dwType, VTVOID * pSpec);
DA_ENTRYSC DAERR DA_ENTRYMOD DAGetOption(
            VTHDOC hItem, VTDWORD dwOptionId, VTLPVOID pValue, VTLPDWORD pSize);
DA_ENTRYSC DAERR DA_ENTRYMOD DAGetFileId(VTHDOC hItem, VTLPDWORD pdwFileId);
DA_ENTRYSC DAERR DA_ENTRYMOD DAGetFileIdEx(VTHDOC hItem, VTLPDWORD pdwFileId, VTDWORD dwFlags);
DA_ENTRYSC VTVOID DA_ENTRYMOD DAGetErrorString(DAERR deError, VTLPVOID pBuffer, VTDWORD dwSize);
DA_ENTRYSC DAERR DA_ENTRYMOD DAGetTreeCount(VTHDOC hDoc, VTLPDWORD lpRecordCount);
DA_ENTRYSC DAERR DA_ENTRYMOD DAGetTreeRecord(VTHDOC hDoc, PSCCDATREENODE pTreeRecord);
DA_ENTRYSC DAERR DA_ENTRYMOD DAOpenTreeRecord(VTHDOC hDoc, VTLPHDOC lphDoc, VTDWORD dwRecord);
DA_ENTRYSC DAERR DA_ENTRYMOD DAOpenRandomTreeRecord (VTHDOC hDoc, VTLPHDOC lphDoc, SCCDATREENODELOCATOR sTreeNodeLocator);
DA_ENTRYSC DAERR DA_ENTRYMOD DASaveTreeRecord(
            VTHDOC hDoc, VTDWORD dwRecord, VTDWORD dwSpecType, VTLPVOID pSpec, VTDWORD dwFlags);
DA_ENTRYSC DAERR DA_ENTRYMOD DASaveRandomTreeRecord(
            VTHDOC hDoc, SCCDATREENODELOCATOR sTreeNodeLocator, VTDWORD dwSpecType, VTLPVOID pSpec, VTDWORD dwFlags);

DA_ENTRYSC DAERR DA_ENTRYMOD DACloseTreeRecord(VTHDOC hDoc);
DA_ENTRYSC DAERR DA_ENTRYMOD DAGetObjectInfo( 
            VTHDOC hDoc, VTDWORD dwInfoId, VTLPVOID pInfo );
DA_ENTRYSC DAERR DA_ENTRYMOD DAGetOutputObjectInfo( 
            VTHDOC hDoc, VTDWORD dwOutputFileId, VTDWORD dwInfoId, VTLPVOID pInfo );
DA_ENTRYSC DAERR DA_ENTRYMOD DASaveInputObject( 
            VTHDOC hDoc, VTDWORD dwSpecType, VTLPVOID pSpec, VTDWORD dwFlags );
DA_ENTRYSC DAERR DA_ENTRYMOD DAOpenSubdocumentById( 
            VTHDOC hDoc, VTLPHDOC lphDoc, VTDWORD dwSubdocumentId, VTDWORD dwFlags );
DA_ENTRYSC DAERR DA_ENTRYMOD DASetStatCallback(DASTATCALLBACKFN pCallback, VTHANDLE hUnique, VTLPVOID pAppData);
DA_ENTRYSC DAERR DA_ENTRYMOD DASetFileAccessCallback(DAFILEACCESSCALLBACKFN pCallback);

#ifdef __cplusplus
}
#endif

/* defines for thread initialization.  Needed only for UNIX */
#define DATHREAD_INIT_PTHREADS  0
#define DATHREAD_INIT_NOTHREADS 1
#define DATHREAD_INIT_NATIVETHREADS 2

#define DATHREAD_INIT_SUCCESS 0
#define DATHREAD_INIT_FAILED  1
#define DATHREAD_INIT_ALREADY_CALLED 2

#ifdef SCC_PACKED_BY_SCCDA_H
#pragma pack(pop)
#undef SCC_PACKED_BY_SCCDA_H
#undef SCC_PACK_SET
#endif /* SCC_PACKED_BY_SCCDA_H */

#endif /* SCCDA_H */
