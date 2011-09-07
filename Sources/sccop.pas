
unit sccop;
interface
uses scctype, baseio, sccid;

const
  SCCUT_RESOURCEIDMAX = 6;
type
  TArray0toSCCUT_RESOURCEIDMAX1OfVTTCHAR = array[0..(SCCUT_RESOURCEIDMAX)-1] of VTTCHAR;

const
  SCCUT_MAX_OPTIONTRACK830 = 120;
type
  TArray0toSCCUT_MAX_OPTIONTRACK8301OfVTDWORD = array[0..(SCCUT_MAX_OPTIONTRACK830)-1] of VTDWORD;

const
  SCCUT_MAX_OPTIONTRACK = 121;
type
  TArray0toSCCUT_MAX_OPTIONTRACK1OfVTDWORD = array[0..(SCCUT_MAX_OPTIONTRACK)-1] of VTDWORD;

const
  SCCUT_MAXFONTMAPENTRIES = 100;
type
  TArray0toSCCUT_MAXFONTMAPENTRIES1OfVTLPWORD = array[0..(SCCUT_MAXFONTMAPENTRIES)-1] of VTLPWORD;
type
  TArray0toSCCUT_MAXFONTMAPENTRIES1OfVTHANDLE = array[0..(SCCUT_MAXFONTMAPENTRIES)-1] of VTHANDLE;

const
  SCCUT_MAXFALLBACKFONTLEN = 40;
type
  TArray0toSCCUT_MAXFALLBACKFONTLEN1OfVTWORD = array[0..(SCCUT_MAXFALLBACKFONTLEN)-1] of VTWORD;

const
  SCCUT_FONTNAMEMAX = 128;
  SCCUT_MAXALIASES = 16;

type
  TArray0toSCCUT_FONTNAMEMAXSCCUT_MAXALIASES1OfVTWORD = array[0..(SCCUT_FONTNAMEMAX*SCCUT_MAXALIASES)-1] of VTWORD;
type
  TArray0toSCCUT_FONTNAMEMAX1OfVTWORD = array[0..(SCCUT_FONTNAMEMAX)-1] of VTWORD;

const
  SCCUTFORMATLIST_LENGTH = 128;
type
  TArray0toSCCUTFORMATLIST_LENGTH1OfVTDWORD = array[0..(SCCUTFORMATLIST_LENGTH)-1] of VTDWORD;

const
  MAX_DEF_REFERENCE_LENGTH = 1024;
type
  TArray0toMAX_DEF_REFERENCE_LENGTH1OfVTBYTE = array[0..(MAX_DEF_REFERENCE_LENGTH)-1] of VTBYTE;
type
  TArray0to7OfVTTCHAR = array[0..7] of VTTCHAR;
type
  TArray0to6OfArray0to15OfVTWORD = array[0..6] of array[0..15] of VTWORD;
type
  TArray0to4OfVTDWORD = array[0..4] of VTDWORD;
type
  TArray0to39OfVTTCHAR = array[0..39] of VTTCHAR;
type
  TArray0to259OfVTTCHAR = array[0..259] of VTTCHAR;
type
  TArray0to1OfVTBOOL = array[0..1] of VTBOOL;
type
  TArray0to19OfVTDWORD = array[0..19] of VTDWORD;
type
  TArray0to12OfArray0to15OfVTWORD = array[0..12] of array[0..15] of VTWORD;
type
  TArray0to127OfVTTCHAR = array[0..127] of VTTCHAR;

{
  Automatically converted by H2Pas 1.0.0 from D:\work\FPC\ooi\sccop.tmp.h
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
  DEFAULTPAGESIZE = record
          fHeight : VTFLOAT;
          fWidth : VTFLOAT;
          wUnits : VTDWORD;
       end;
  PDEFAULTPAGESIZE  = ^DEFAULTPAGESIZE;

  EXTIFFOPTIONS = record
          dwSize : VTDWORD;
          dwColorSpace : VTDWORD;
          dwCompression : VTDWORD;
          dwByteOrder : VTDWORD;
          dwTIFFFlags : VTDWORD;
          dwFillOrder : VTDWORD;
       end;
  PEXTIFFOPTIONS  = ^EXTIFFOPTIONS;
  
const
  SCCUT_FILENAMEMAX = 256;

type
  TArray0toSCCUT_FILENAMEMAX1OfVTBYTE = array[0..(SCCUT_FILENAMEMAX)-1] of VTBYTE;
  type
    PFONTNAMELIST  = ^FONTNAMELIST;
    FONTNAMELIST = record
          szFontName : TArray0toSCCUT_FILENAMEMAX1OfVTBYTE;
          pNextFont : PFONTNAMELIST;
       end;

type
  FONTFILTERLIST = record
          bExclude : VTBOOL;
          pFontList : PFONTNAMELIST;
       end;
  PFONTFILTERLIST  = ^FONTFILTERLIST;

  HOPTIONSET = VTHANDLE;
  PHOPTIONSET  = ^HOPTIONSET;
  TArray0toSCCUT_FILENAMEMAX1OfVTCHAR = array[0..(SCCUT_FILENAMEMAX)-1] of VTCHAR;
  IMGWATERMARKPATH = record
          szPath : TArray0toSCCUT_FILENAMEMAX1OfVTCHAR;
          dwMaxSize : VTDWORD;
       end;
  PIMGWATERMARKPATH  = ^IMGWATERMARKPATH;
  LPDEFAULTPAGESIZE = PDEFAULTPAGESIZE;
  PLPDEFAULTPAGESIZE  = ^LPDEFAULTPAGESIZE;
  LPEXTIFFOPTIONS = PEXTIFFOPTIONS;
  PLPEXTIFFOPTIONS  = ^LPEXTIFFOPTIONS;
  LPIMGWATERMARKPATH = PIMGWATERMARKPATH;
  PLPIMGWATERMARKPATH  = ^LPIMGWATERMARKPATH;
  SCCUTFALLBACKFONT = record
          pName : VTLPVOID;
          wType : VTWORD;
       end;
  PSCCUTFALLBACKFONT  = ^SCCUTFALLBACKFONT;
  LPSCCUTFALLBACKFONT = PSCCUTFALLBACKFONT;
  PLPSCCUTFALLBACKFONT  = ^LPSCCUTFALLBACKFONT;
  SCCUTFONTSPEC = record
          szFace : TArray0to39OfVTTCHAR;
          wHeight : VTWORD;
          wAttr : VTWORD;
          wType : VTWORD;
       end;
  PSCCUTFONTSPEC  = ^SCCUTFONTSPEC;
  LPSCCUTFONTSPEC = PSCCUTFONTSPEC;
  PLPSCCUTFONTSPEC  = ^LPSCCUTFONTSPEC;

  PVTVOID  = Pointer;
  WATERMARKPATH = record
    szWaterMarkPath : TArray0toSCCUT_FILENAMEMAX1OfVTCHAR;
    dwMaxSize : VTDWORD;
  end;

  WATERMARKIO = record
          phDoc : PVTVOID;
          dwType : VTDWORD;
          Path : WATERMARKPATH;
          dwScalingMethod : VTDWORD;
          dwScalePercent : VTDWORD;
       end;
  PWATERMARKIO  = ^WATERMARKIO;
  LPWATERMARKIO = PWATERMARKIO;
  PLPWATERMARKIO  = ^LPWATERMARKIO;
  LPWATERMARKPATH = ^WATERMARKPATH;
  PLPWATERMARKPATH  = ^LPWATERMARKPATH;
  WATERMARKPOS = record
          dwWatermarkPos : VTDWORD;
          lVerticalPos : VTLONG;
          lHorizontalPos : VTLONG;
       end;
  PWATERMARKPOS  = ^WATERMARKPOS;
  LPWATERMARKPOS = PWATERMARKPOS;
  PLPWATERMARKPOS  = ^LPWATERMARKPOS;
  PPFONTNAMELIST  = ^PFONTNAMELIST;
  PPHOPTIONSET  = ^PHOPTIONSET;
  SCCBUFFEROPTIONS = record
          dwReadBufferSize : VTDWORD;
          dwMMapBufferSize : VTDWORD;
          dwTempBufferSize : VTDWORD;
          dwFlags : VTDWORD;
       end;
  PSCCBUFFEROPTIONS  = ^SCCBUFFEROPTIONS;
  PPSCCBUFFEROPTIONS  = ^PSCCBUFFEROPTIONS;
  SCCUTDAYNAMES = record
          aFullNames : TArray0to6OfArray0to15OfVTWORD;
          aAbbrevNames : TArray0to6OfArray0to15OfVTWORD;
       end;
  PSCCUTDAYNAMES  = ^SCCUTDAYNAMES;
  PPSCCUTDAYNAMES  = ^PSCCUTDAYNAMES;
  SCCUTFONTALIAS = record
          dwSize : VTDWORD;
          dwAliasID : VTDWORD;
          dwFlags : VTDWORD;
          szwOriginal : TArray0toSCCUT_FONTNAMEMAX1OfVTWORD;
          szwAlias : TArray0toSCCUT_FONTNAMEMAXSCCUT_MAXALIASES1OfVTWORD;
       end;
  PSCCUTFONTALIAS  = ^SCCUTFONTALIAS;
  PPSCCUTFONTALIAS  = ^PSCCUTFONTALIAS;
  SCCUTFONTALIAS832 = record
          dwSize : VTDWORD;
          dwAliasID : VTDWORD;
          dwFlags : VTDWORD;
          szwOriginal : TArray0toSCCUT_FONTNAMEMAX1OfVTWORD;
          szwAlias : TArray0toSCCUT_FONTNAMEMAX1OfVTWORD;
       end;
  PSCCUTFONTALIAS832  = ^SCCUTFONTALIAS832;
  PPSCCUTFONTALIAS832  = ^PSCCUTFONTALIAS832;
  SCCUTFONTALIASMAP = record
          dwCount : VTDWORD;
          hOriginal : TArray0toSCCUT_MAXFONTMAPENTRIES1OfVTHANDLE;
          hAlias : TArray0toSCCUT_MAXFONTMAPENTRIES1OfVTHANDLE;
          szwOriginal : TArray0toSCCUT_MAXFONTMAPENTRIES1OfVTLPWORD;
          szwAlias : TArray0toSCCUT_MAXFONTMAPENTRIES1OfVTLPWORD;
       end;
  PSCCUTFONTALIASMAP  = ^SCCUTFONTALIASMAP;
  PPSCCUTFONTALIASMAP  = ^PSCCUTFONTALIASMAP;
  SCCUTFORMATLIST = record
          dwSize : VTDWORD;
          dwFormats : TArray0toSCCUTFORMATLIST_LENGTH1OfVTDWORD;
       end;
  PSCCUTFORMATLIST  = ^SCCUTFORMATLIST;
  PPSCCUTFORMATLIST  = ^PSCCUTFORMATLIST;
  SCCUTIMAGEZOOM = record
          dwXNu : VTDWORD;
          dwXDe : VTDWORD;
          dwYNu : VTDWORD;
          dwYDe : VTDWORD;
       end;
  PSCCUTIMAGEZOOM  = ^SCCUTIMAGEZOOM;
  PPSCCUTIMAGEZOOM  = ^PSCCUTIMAGEZOOM;
  SCCUTMONTHNAMES = record
          aFullNames : TArray0to12OfArray0to15OfVTWORD;
          aAbbrevNames : TArray0to12OfArray0to15OfVTWORD;
       end;
  PSCCUTMONTHNAMES  = ^SCCUTMONTHNAMES;
  PPSCCUTMONTHNAMES  = ^PSCCUTMONTHNAMES;
  SCCUTNUMBERFORMAT = record
          cDecimalSep : VTTCHAR;
          cThousandSep : VTTCHAR;
          cDateSep : VTTCHAR;
          cTimeSep : VTTCHAR;
          szCurrencySymbol : TArray0to7OfVTTCHAR;
          szAM : TArray0to7OfVTTCHAR;
          szPM : TArray0to7OfVTTCHAR;
          dwNumBytesAM : VTDWORD;
          dwNumBytesPM : VTDWORD;
          wCurrencyPosition : VTWORD;
          wShortDateOrder : VTWORD;
          wShortDateYearDigits : VTWORD;
          wShortDateMonthDigits : VTWORD;
          wShortDateDayDigits : VTWORD;
          wShortDateFlags : VTWORD;
       end;
  PSCCUTNUMBERFORMAT  = ^SCCUTNUMBERFORMAT;
  PPSCCUTNUMBERFORMAT  = ^PSCCUTNUMBERFORMAT;
  SCCUTNUMBERFORMAT775 = record
          cDecimalSep : VTTCHAR;
          cThousandSep : VTTCHAR;
          cDateSep : VTTCHAR;
          cTimeSep : VTTCHAR;
          szCurrencySymbol : TArray0to7OfVTTCHAR;
          szAM : TArray0to7OfVTTCHAR;
          szPM : TArray0to7OfVTTCHAR;
          dwNumBytesAM : VTDWORD;
          dwNumBytesPM : VTDWORD;
          wCurrencyPosition : VTWORD;
          wShortDateOrder : VTWORD;
       end;
  PSCCUTNUMBERFORMAT775  = ^SCCUTNUMBERFORMAT775;
  PPSCCUTNUMBERFORMAT775  = ^PSCCUTNUMBERFORMAT775;
  SCCUTPRINTMARGINS = record
          dwTop : VTDWORD;
          dwBottom : VTDWORD;
          dwLeft : VTDWORD;
          dwRight : VTDWORD;
       end;
  PSCCUTPRINTMARGINS  = ^SCCUTPRINTMARGINS;
  PPSCCUTPRINTMARGINS  = ^PSCCUTPRINTMARGINS;
  SCCUTRESOURCEID = record
          dwSize : VTDWORD;
          szResourceID : TArray0toSCCUT_RESOURCEIDMAX1OfVTTCHAR;
       end;
  PSCCUTRESOURCEID  = ^SCCUTRESOURCEID;
  PPSCCUTRESOURCEID  = ^PSCCUTRESOURCEID;
  TArray0toSCCUT_FILENAMEMAX1OfVTTCHAR = array[0..(SCCUT_FILENAMEMAX)-1] of VTTCHAR;
  SCCUTTEMPDIRSPEC = record
          dwSize : VTDWORD;
          dwSpecType : VTDWORD;
          szTempDirName : TArray0toSCCUT_FILENAMEMAX1OfVTTCHAR;
       end;
  PSCCUTTEMPDIRSPEC  = ^SCCUTTEMPDIRSPEC;
  PPSCCUTTEMPDIRSPEC  = ^PSCCUTTEMPDIRSPEC;
  VWCALLBACKPROC = function (_para1:VTSYSVAL; _para2:VTDWORD; _para3:VTDWORD; _para4:VTLPVOID):VTSYSVAL;cdecl;
  SCCUTTEMPFILSPEC = record
          pViewInfo : VTLPVOID;
          pCallback : VWCALLBACKPROC;
          dwCallbackData : VTDWORD;
       end;
  PSCCUTTEMPFILSPEC  = ^SCCUTTEMPFILSPEC;
  PPSCCUTTEMPFILSPEC  = ^PSCCUTTEMPFILSPEC;
  SCCUTTIFFOPTIONS = record
          dwFormat : VTDWORD;
          dwCompression : VTDWORD;
          dwColorTransition : VTDWORD;
          XResolution : VTDWORD;
          YResolution : VTDWORD;
       end;
  PSCCUTTIFFOPTIONS  = ^SCCUTTIFFOPTIONS;
  PPSCCUTTIFFOPTIONS  = ^PSCCUTTIFFOPTIONS;

  SCCVWDLLLOADCALLBACK = record
    dwSize : VTDWORD;
    lpVector : VTLPVOID;
    dwVectorLength : VTDWORD;
    dwResult : VTDWORD;
    hLib : VTHANDLE;
    lpszPath : VTLPBYTE;
    lpszEntryPoint : VTLPBYTE;
  end;
  PSCCVWDLLLOADCALLBACK  = ^SCCVWDLLLOADCALLBACK;
  PPSCCVWDLLLOADCALLBACK  = ^PSCCVWDLLLOADCALLBACK;

  UTARCOPTIONS = record
          dwSaveEvent : VTDWORD;
          dwSortOrder : VTDWORD;
          dwArcFlags : VTDWORD;
          szOutputDir : TArray0to259OfVTTCHAR;
          bFullPath : VTBOOL;
          dwPromptDiag : VTDWORD;
       end;
  PUTARCOPTIONS  = ^UTARCOPTIONS;
  PPUTARCOPTIONS  = ^PUTARCOPTIONS;

  UTARCOPTIONS600 = record
          dwSaveEvent : VTDWORD;
          dwSortOrder : VTDWORD;
          dwArcFlags : VTDWORD;
          szOutputDir : TArray0to259OfVTTCHAR;
       end;
  PUTARCOPTIONS600  = ^UTARCOPTIONS600;
  PPUTARCOPTIONS600  = ^PUTARCOPTIONS600;
  UTARCOPTIONS77 = record
          dwSaveEvent : VTDWORD;
          dwSortOrder : VTDWORD;
          dwArcFlags : VTDWORD;
          szOutputDir : TArray0to259OfVTTCHAR;
          bFullPath : VTBOOL;
       end;
  PUTARCOPTIONS77  = ^UTARCOPTIONS77;
  PPUTARCOPTIONS77  = ^PUTARCOPTIONS77;
  UTBMPOPTIONS = record
          dwFitMode : VTDWORD;
          sZoom : SCCUTIMAGEZOOM;
          dwRotation : VTDWORD;
          bDither : VTBOOL;
          bDitherAvailable : VTBOOL;
          dwPrintAspect : VTDWORD;
          bPrintBorder : VTBOOL;
          bShowFullScreen : VTBOOL;
          dwZoomEvent : VTDWORD;
       end;
  PUTBMPOPTIONS  = ^UTBMPOPTIONS;
  PPUTBMPOPTIONS  = ^PUTBMPOPTIONS;
  UTCCFLEXOPTIONS = record
          bFullyAttributeStyles : VTBOOL;
          bRemoveCurrentPoint : VTBOOL;
          bRemoveFontGroups : VTBOOL;
          bIncludeTextOffsets : VTBOOL;
          sExtractEmbeddings : SCCUTFORMATLIST;
          sConvertEmbeddings : SCCUTFORMATLIST;
          dwFormatOptions : VTDWORD;
          dwUnits : VTDWORD;
       end;
  PUTCCFLEXOPTIONS  = ^UTCCFLEXOPTIONS;
  PPUTCCFLEXOPTIONS  = ^PUTCCFLEXOPTIONS;
  UTCCFLEXOPTIONS770 = record
          bFullyAttributeStyles : VTBOOL;
          bRemoveCurrentPoint : VTBOOL;
          bRemoveFontGroups : VTBOOL;
          bIncludeTextOffsets : VTBOOL;
          sExtractEmbeddings : SCCUTFORMATLIST;
          sConvertEmbeddings : SCCUTFORMATLIST;
          dwFormatOptions : VTDWORD;
       end;
  PUTCCFLEXOPTIONS770  = ^UTCCFLEXOPTIONS770;
  PPUTCCFLEXOPTIONS770  = ^PUTCCFLEXOPTIONS770;
  UTCCODOPTIONS = record
          dwGraphicOptions : VTDWORD;
       end;
  PUTCCODOPTIONS  = ^UTCCODOPTIONS;
  PPUTCCODOPTIONS  = ^PUTCCODOPTIONS;
  UTCLIPOPTIONS = record
          dwToClipboard : VTDWORD;
          sDefaultFont : SCCUTFONTSPEC;
       end;
  PUTCLIPOPTIONS  = ^UTCLIPOPTIONS;
  PPUTCLIPOPTIONS  = ^PUTCLIPOPTIONS;
  UTDBOPTIONS = record
          dwClipboard : VTDWORD;
          bShowGridlines : VTBOOL;
          bPrintGridlines : VTBOOL;
          bClipboardHeadings : VTBOOL;
          bPrintHeadings : VTBOOL;
          bFieldNamesToClip : VTBOOL;
          dwPrintFitToPage : VTDWORD;
          bDraftMode : VTBOOL;
       end;
  PUTDBOPTIONS  = ^UTDBOPTIONS;
  PPUTDBOPTIONS  = ^PUTDBOPTIONS;
  UTDISPLAYOPTIONS = record
          sDefaultFont : SCCUTFONTSPEC;
          dwFallbackFormat : VTDWORD;
          bHaveSelection : VTBOOL;
          wDummy : VTWORD;
          aDummy : TArray0to4OfVTDWORD;
          dwScaleFactor : VTDWORD;
          dwOriginalFontScale : VTDWORD;
          sFontAlias : SCCUTFONTALIASMAP;
          dwReorderMethod : VTDWORD;
       end;
  PUTDISPLAYOPTIONS  = ^UTDISPLAYOPTIONS;
  PPUTDISPLAYOPTIONS  = ^PUTDISPLAYOPTIONS;
  UTDISPLAYOPTIONS521 = record
          sDefaultFont : SCCUTFONTSPEC;
          dwFallbackFormat : VTDWORD;
          bHaveSelection : VTBOOL;
          wDummy : VTWORD;
          aDummy : TArray0to4OfVTDWORD;
          dwScaleFactor : VTDWORD;
          dwOriginalFontScale : VTDWORD;
          sFontAlias : SCCUTFONTALIASMAP;
       end;
  PUTDISPLAYOPTIONS521  = ^UTDISPLAYOPTIONS521;
  PPUTDISPLAYOPTIONS521  = ^PUTDISPLAYOPTIONS521;
  UTDRAMOPTIONS = record
          bUseDefaults : VTBOOL;
       end;
  PUTDRAMOPTIONS  = ^UTDRAMOPTIONS;
  PPUTDRAMOPTIONS  = ^PUTDRAMOPTIONS;
  UTEXOPTIONS = record
          bNoSourceFormatting : VTBOOL;
          bUnicodeCallbackStr : VTBOOL;
          dwCharByteOrder : VTDWORD;
          sFallbackFont : SCCUTFALLBACKFONT;
          wzFontName : TArray0toSCCUT_MAXFALLBACKFONTLEN1OfVTWORD;
          dwTextBufferSize : VTDWORD;
          dwGraphicBufferSize : VTDWORD;
          dwLabelFlags : VTDWORD;
          dwGraphicSkipSize : VTDWORD;
          bCollapseWhitespace : VTBOOL;
          dwMaxURLLength : VTDWORD;
          bSeparateGraphicsBuffer : VTBOOL;
          dwTemplateSize : VTDWORD;
          hTemplate : VTHANDLE;
          pTemplate : VTLPBYTE;
          dwFlavor : VTDWORD;
          dwOutputCharacterSet : VTDWORD;
          bGenBulletsAndNums : VTBOOL;
          dwPageSize : VTDWORD;
          dwComplianceFlags : VTDWORD;
          bSimpleStyleNames : VTBOOL;
          bJSTabs : VTBOOL;
          dwCallbackFlags : VTDWORD;
          dwGridRows : VTDWORD;
          dwGridCols : VTDWORD;
          dwGridAdvance : VTDWORD;
          bGridWrap : VTBOOL;
          bPreventGraphicOverlap : VTBOOL;
          dwFontFlags : VTDWORD;
          bShowHiddenText : VTBOOL;
          bShowHiddenSSData : VTBOOL;
          bChangeTracking : VTBOOL;
          bShowSpreadSheetBorder : VTBOOL;
          dwPageCount : VTDWORD;
          bMultiPage : VTBOOL;
          bImageExport : VTBOOL;
          dwExtractEmbeddedFormat : VTDWORD;
          bShowSSDBRowColHeadings : VTBOOL;
          dwSSDBBorderOptions : VTDWORD;
          bSuppressMetadata : VTBOOL;
       end;
  PUTEXOPTIONS  = ^UTEXOPTIONS;
  PPUTEXOPTIONS  = ^PUTEXOPTIONS;
  UTEXOPTIONS610 = record
          bNoSourceFormatting : VTBOOL;
          bUnicodeCallbackStr : VTBOOL;
          dwCharByteOrder : VTDWORD;
          sFallbackFont : SCCUTFALLBACKFONT;
          wzFontName : TArray0toSCCUT_MAXFALLBACKFONTLEN1OfVTWORD;
       end;
  PUTEXOPTIONS610  = ^UTEXOPTIONS610;
  PPUTEXOPTIONS610  = ^PUTEXOPTIONS610;
  UTEXOPTIONS700 = record
          bNoSourceFormatting : VTBOOL;
          bUnicodeCallbackStr : VTBOOL;
          dwCharByteOrder : VTDWORD;
          sFallbackFont : SCCUTFALLBACKFONT;
          wzFontName : TArray0toSCCUT_MAXFALLBACKFONTLEN1OfVTWORD;
          dwTextBufferSize : VTDWORD;
          dwGraphicBufferSize : VTDWORD;
          dwLabelFlags : VTDWORD;
          dwGraphicSkipSize : VTDWORD;
          bCollapseWhitespace : VTBOOL;
          dwMaxURLLength : VTDWORD;
          bSeparateGraphicsBuffer : VTBOOL;
          dwTemplateSize : VTDWORD;
          hTemplate : VTHANDLE;
          pTemplate : VTLPBYTE;
          dwFlavor : VTDWORD;
          dwOutputCharacterSet : VTDWORD;
          bGenBulletsAndNums : VTBOOL;
          dwPageSize : VTDWORD;
          dwComplianceFlags : VTDWORD;
          bSimpleStyleNames : VTBOOL;
          bJSTabs : VTBOOL;
       end;
  PUTEXOPTIONS700  = ^UTEXOPTIONS700;
  PPUTEXOPTIONS700  = ^PUTEXOPTIONS700;
  UTEXOPTIONS710 = record
          bNoSourceFormatting : VTBOOL;
          bUnicodeCallbackStr : VTBOOL;
          dwCharByteOrder : VTDWORD;
          sFallbackFont : SCCUTFALLBACKFONT;
          wzFontName : TArray0toSCCUT_MAXFALLBACKFONTLEN1OfVTWORD;
          dwTextBufferSize : VTDWORD;
          dwGraphicBufferSize : VTDWORD;
          dwLabelFlags : VTDWORD;
          dwGraphicSkipSize : VTDWORD;
          bCollapseWhitespace : VTBOOL;
          dwMaxURLLength : VTDWORD;
          bSeparateGraphicsBuffer : VTBOOL;
          dwTemplateSize : VTDWORD;
          hTemplate : VTHANDLE;
          pTemplate : VTLPBYTE;
          dwFlavor : VTDWORD;
          dwOutputCharacterSet : VTDWORD;
          bGenBulletsAndNums : VTBOOL;
          dwPageSize : VTDWORD;
          dwComplianceFlags : VTDWORD;
          bSimpleStyleNames : VTBOOL;
          bJSTabs : VTBOOL;
          dwCallbackFlags : VTDWORD;
       end;
  PUTEXOPTIONS710  = ^UTEXOPTIONS710;
  PPUTEXOPTIONS710  = ^PUTEXOPTIONS710;
  UTEXOPTIONS750 = record
          bNoSourceFormatting : VTBOOL;
          bUnicodeCallbackStr : VTBOOL;
          dwCharByteOrder : VTDWORD;
          sFallbackFont : SCCUTFALLBACKFONT;
          wzFontName : TArray0toSCCUT_MAXFALLBACKFONTLEN1OfVTWORD;
          dwTextBufferSize : VTDWORD;
          dwGraphicBufferSize : VTDWORD;
          dwLabelFlags : VTDWORD;
          dwGraphicSkipSize : VTDWORD;
          bCollapseWhitespace : VTBOOL;
          dwMaxURLLength : VTDWORD;
          bSeparateGraphicsBuffer : VTBOOL;
          dwTemplateSize : VTDWORD;
          hTemplate : VTHANDLE;
          pTemplate : VTLPBYTE;
          dwFlavor : VTDWORD;
          dwOutputCharacterSet : VTDWORD;
          bGenBulletsAndNums : VTBOOL;
          dwPageSize : VTDWORD;
          dwComplianceFlags : VTDWORD;
          bSimpleStyleNames : VTBOOL;
          bJSTabs : VTBOOL;
          dwCallbackFlags : VTDWORD;
          dwGridRows : VTDWORD;
          dwGridCols : VTDWORD;
          dwGridAdvance : VTDWORD;
          bGridWrap : VTBOOL;
          bPreventGraphicOverlap : VTBOOL;
          dwFontFlags : VTDWORD;
          bShowHiddenText : VTBOOL;
       end;
  PUTEXOPTIONS750  = ^UTEXOPTIONS750;
  PPUTEXOPTIONS750  = ^PUTEXOPTIONS750;
  UTEXOPTIONStag800 = record
          bNoSourceFormatting : VTBOOL;
          bUnicodeCallbackStr : VTBOOL;
          dwCharByteOrder : VTDWORD;
          sFallbackFont : SCCUTFALLBACKFONT;
          wzFontName : TArray0toSCCUT_MAXFALLBACKFONTLEN1OfVTWORD;
          dwTextBufferSize : VTDWORD;
          dwGraphicBufferSize : VTDWORD;
          dwLabelFlags : VTDWORD;
          dwGraphicSkipSize : VTDWORD;
          bCollapseWhitespace : VTBOOL;
          dwMaxURLLength : VTDWORD;
          bSeparateGraphicsBuffer : VTBOOL;
          dwTemplateSize : VTDWORD;
          hTemplate : VTHANDLE;
          pTemplate : VTLPBYTE;
          dwFlavor : VTDWORD;
          dwOutputCharacterSet : VTDWORD;
          bGenBulletsAndNums : VTBOOL;
          dwPageSize : VTDWORD;
          dwComplianceFlags : VTDWORD;
          bSimpleStyleNames : VTBOOL;
          bJSTabs : VTBOOL;
          dwCallbackFlags : VTDWORD;
          dwGridRows : VTDWORD;
          dwGridCols : VTDWORD;
          dwGridAdvance : VTDWORD;
          bGridWrap : VTBOOL;
          bPreventGraphicOverlap : VTBOOL;
          dwFontFlags : VTDWORD;
          bShowHiddenText : VTBOOL;
          bShowHiddenSSData : VTBOOL;
          bChangeTracking : VTBOOL;
          bShowSpreadSheetBorder : VTBOOL;
          dwPageCount : VTDWORD;
          bMultiPage : VTBOOL;
          bImageExport : VTBOOL;
          dwExtractEmbeddedFormat : VTDWORD;
          bShowSSDBRowColHeadings : VTBOOL;
          dwSSDBBorderOptions : VTDWORD;
       end;
  UTEXOPTIONS800 = UTEXOPTIONStag800;
  PUTEXOPTIONS800  = ^UTEXOPTIONS800;
  PPUTEXOPTIONS800  = ^PUTEXOPTIONS800;
  SCCUTXXDEFREF = record
          dwSize : VTDWORD;
          utf8RefName : TArray0toMAX_DEF_REFERENCE_LENGTH1OfVTBYTE;
       end;
  SCCUTXXDEFREFINFO = SCCUTXXDEFREF;
  UTEXXMLOPTIONS = record
          hSubstreamRootsString : VTHANDLE;
          dwSubstreamRootsStringSize : VTDWORD;
          dwDefMethod : VTDWORD;
          utf8DefReferenceStr : SCCUTXXDEFREFINFO;
       end;
  PUTEXXMLOPTIONS  = ^UTEXXMLOPTIONS;
  PPUTEXXMLOPTIONS  = ^PUTEXXMLOPTIONS;
  UTGDSFOPTIONS = record
          dwGraphicType : VTDWORD;
          dwGraphicWidth : VTDWORD;
          dwGraphicHeight : VTDWORD;
          dwGraphicFlags : VTDWORD;
          lGraphicCropLeft : VTLONG;
          lGraphicCropRight : VTLONG;
          lGraphicCropTop : VTLONG;
          lGraphicCropBottom : VTLONG;
          dwGraphicXDPI : VTDWORD;
          dwGraphicYDPI : VTDWORD;
          dwGraphicSizeMethod : VTDWORD;
          dwGraphicOutputDPI : VTDWORD;
          dwJPEGQuality : VTDWORD;
          bDefaultGraphicOnError : VTBOOL;
          bGifInterlace : VTBOOL;
          sTIFFOptions : SCCUTTIFFOPTIONS;
          dwGraphicSizeLimit : VTDWORD;
          dwGraphicWidthLimit : VTDWORD;
          dwGraphicHeightLimit : VTDWORD;
          dwGraphicPageNumber : VTDWORD;
          bGraphicLastPage : VTBOOL;
          bMultiPage : VTBOOL;
          bImageExport : VTBOOL;
          ExTiffOptions : EXTIFFOPTIONS;
          bAcceptAltGraphics : VTBOOL;
          rgbTransparent : VTDWORD;
          dwImageCropping : VTDWORD;
          dwMaxSSDBPageWidth : VTDWORD;
          dwMaxSSDBPageHeight : VTDWORD;
          dwWatermarkOpacity : VTDWORD;
          dwWatermarkPosition : VTDWORD;
          dwWatermarkScaleType : VTDWORD;
          dwWatermarkScalePercent : VTDWORD;
          lWatermarkHorizontalPos : VTLONG;
          lWatermarkVerticalPos : VTLONG;
          sWatermarkPath : IMGWATERMARKPATH;
          bQuickThumbnail : VTBOOL;
       end;
  PUTGDSFOPTIONS  = ^UTGDSFOPTIONS;
  PPUTGDSFOPTIONS  = ^PUTGDSFOPTIONS;
  UTGDSFOPTIONS832 = record
          dwGraphicType : VTDWORD;
          dwGraphicWidth : VTDWORD;
          dwGraphicHeight : VTDWORD;
          dwGraphicFlags : VTDWORD;
          lGraphicCropLeft : VTLONG;
          lGraphicCropRight : VTLONG;
          lGraphicCropTop : VTLONG;
          lGraphicCropBottom : VTLONG;
          dwGraphicXDPI : VTDWORD;
          dwGraphicYDPI : VTDWORD;
          dwGraphicSizeMethod : VTDWORD;
          dwGraphicOutputDPI : VTDWORD;
          dwJPEGQuality : VTDWORD;
          bDefaultGraphicOnError : VTBOOL;
          bGifInterlace : VTBOOL;
          sTIFFOptions : SCCUTTIFFOPTIONS;
          dwGraphicSizeLimit : VTDWORD;
          dwGraphicWidthLimit : VTDWORD;
          dwGraphicHeightLimit : VTDWORD;
          dwGraphicPageNumber : VTDWORD;
          bGraphicLastPage : VTBOOL;
          bMultiPage : VTBOOL;
          bImageExport : VTBOOL;
          ExTiffOptions : EXTIFFOPTIONS;
          bAcceptAltGraphics : VTBOOL;
          rgbTransparent : VTDWORD;
          dwImageCropping : VTDWORD;
          dwMaxSSDBPageWidth : VTDWORD;
          dwMaxSSDBPageHeight : VTDWORD;
          dwWatermarkOpacity : VTDWORD;
          dwWatermarkPosition : VTDWORD;
          dwWatermarkScaleType : VTDWORD;
          dwWatermarkScalePercent : VTDWORD;
          lWatermarkHorizontalPos : VTLONG;
          lWatermarkVerticalPos : VTLONG;
          sWatermarkPath : IMGWATERMARKPATH;
       end;
  PUTGDSFOPTIONS832  = ^UTGDSFOPTIONS832;
  PPUTGDSFOPTIONS832  = ^PUTGDSFOPTIONS832;
  UTHXOPTIONS600 = record
          dwOutputCharacterSet : VTDWORD;
          dwFlavor : VTDWORD;
          dwFlags : VTDWORD;
          dwCharByteOrder : VTDWORD;
          bNoSourceFormatting : VTBOOL;
          bUnicodeCallbackStr : VTBOOL;
          dwTemplateSize : VTDWORD;
          hTemplate : VTHANDLE;
          pTemplate : VTLPBYTE;
          wzFontName : TArray0toSCCUT_MAXFALLBACKFONTLEN1OfVTWORD;
          sFallbackFont : SCCUTFALLBACKFONT;
       end;
  PUTHXOPTIONS600  = ^UTHXOPTIONS600;
  PPUTHXOPTIONS600  = ^PUTHXOPTIONS600;
  UTHXOPTIONS601 = record
          dwOutputCharacterSet : VTDWORD;
          dwFlavor : VTDWORD;
          dwFlags : VTDWORD;
          dwCharByteOrder : VTDWORD;
          bNoSourceFormatting : VTBOOL;
          bUnicodeCallbackStr : VTBOOL;
          dwTemplateSize : VTDWORD;
          hTemplate : VTHANDLE;
          pTemplate : VTLPBYTE;
          wzFontName : TArray0toSCCUT_MAXFALLBACKFONTLEN1OfVTWORD;
          sFallbackFont : SCCUTFALLBACKFONT;
          bSimpleStyleNames : VTBOOL;
       end;
  PUTHXOPTIONS601  = ^UTHXOPTIONS601;
  PPUTHXOPTIONS601  = ^PUTHXOPTIONS601;
  UTHXOPTIONS610 = record
          dwOutputCharacterSet : VTDWORD;
          dwFlavor : VTDWORD;
          dwFlags : VTDWORD;
          dwCharByteOrder : VTDWORD;
          bNoSourceFormatting : VTBOOL;
          bUnicodeCallbackStr : VTBOOL;
          dwTemplateSize : VTDWORD;
          hTemplate : VTHANDLE;
          pTemplate : VTLPBYTE;
          wzFontName : TArray0toSCCUT_MAXFALLBACKFONTLEN1OfVTWORD;
          sFallbackFont : SCCUTFALLBACKFONT;
          bSimpleStyleNames : VTBOOL;
          bGenBulletsAndNums : VTBOOL;
       end;
  PUTHXOPTIONS610  = ^UTHXOPTIONS610;
  PPUTHXOPTIONS610  = ^PUTHXOPTIONS610;
  UTHXOPTIONS611 = record
          dwOutputCharacterSet : VTDWORD;
          dwFlavor : VTDWORD;
          dwFlags : VTDWORD;
          dwCharByteOrder : VTDWORD;
          abUnused : TArray0to1OfVTBOOL;
          dwTemplateSize : VTDWORD;
          hTemplate : VTHANDLE;
          pTemplate : VTLPBYTE;
          wzUnused : TArray0toSCCUT_MAXFALLBACKFONTLEN1OfVTWORD;
          sUnused : SCCUTFALLBACKFONT;
          bSimpleStyleNames : VTBOOL;
          bGenBulletsAndNums : VTBOOL;
          dwInlineGraphicWidth : VTDWORD;
       end;
  PUTHXOPTIONS611  = ^UTHXOPTIONS611;
  PPUTHXOPTIONS611  = ^PUTHXOPTIONS611;

  UTWATERMARKOPTIONS = record
          bEnableWatermark : VTBOOL;
          WatermarkPos : WATERMARKPOS;
          WatermarkIO : WATERMARKIO;
       end;
  UTIXOPTIONS = record
          sWaterMark : UTWATERMARKOPTIONS;
          sDefaultPageSize : DEFAULTPAGESIZE;
          szFontPath : TArray0toSCCUT_FILENAMEMAX1OfVTCHAR;
       end;
  PUTIXOPTIONS  = ^UTIXOPTIONS;
  PPUTIXOPTIONS  = ^PUTIXOPTIONS;
  UTOPTIONDELTA = record
          dwCount : VTDWORD;
          aChanges : TArray0toSCCUT_MAX_OPTIONTRACK1OfVTDWORD;
       end;
  PUTOPTIONDELTA  = ^UTOPTIONDELTA;
  PPUTOPTIONDELTA  = ^PUTOPTIONDELTA;
  UTOPTIONDELTA521 = record
          dwCount : VTDWORD;
          aChanges : TArray0to19OfVTDWORD;
       end;
  PUTOPTIONDELTA521  = ^UTOPTIONDELTA521;
  PPUTOPTIONDELTA521  = ^PUTOPTIONDELTA521;
  UTOPTIONDELTA830 = record
          dwCount : VTDWORD;
          aChanges : TArray0toSCCUT_MAX_OPTIONTRACK8301OfVTDWORD;
       end;
  PUTOPTIONDELTA830  = ^UTOPTIONDELTA830;
  PPUTOPTIONDELTA830  = ^PUTOPTIONDELTA830;
  REDIRECTTEMPFILECALLBACKPROC = function (var phFile:HIOFILE; pSpec:Pointer; dwFileFlags:VTDWORD):VTDWORD;cdecl;
  UTSSOPTIONS = record
          dwClipboard : VTDWORD;
          dwPrintFitToPage : VTDWORD;
          dwPrintScalePercent : VTDWORD;
          dwPrintScaleXWide : VTDWORD;
          dwPrintScaleXHigh : VTDWORD;
          dwPrintDirection : VTDWORD;
          dwSSFlags : VTDWORD;
       end;
  UTWXOPTIONS611 = record
          dwOutputCharacterSet : VTDWORD;
          dwFlavor : VTDWORD;
          dwTemplateSize : VTDWORD;
          hTemplate : VTHANDLE;
          pTemplate : VTLPBYTE;
          dwDeckSize : VTDWORD;
          dwLabelFlags : VTDWORD;
          dwGraphicSkipSize : VTDWORD;
       end;
  UTPXOPTIONS = record
          bFilter : VTBOOL;
          bEmbedFonts : VTBOOL;
          bDoLinearization : VTBOOL;
       end;
  UTOCROPTIONS = record
          dwOcrQuality : VTDWORD;
          dwOcrTech : VTDWORD;
       end;
  UTPSOPTIONS = record
          dwEnablePSCallback : VTDWORD;
       end;
  UTRNBWOPTIONS = record
          dwDataDirectory : VTDWORD;
          dwConversionSel : VTDWORD;
       end;
  UTWPOPTIONS = record
          dwMode : VTDWORD;
          sZoom : SCCUTIMAGEZOOM;
          dwFitMode : VTDWORD;
          dwWrapToWindow : VTDWORD;
          bDraftPrintMode : VTBOOL;
          bDisableHyperlinks : VTBOOL;
          bDisablePositionalFrames : VTBOOL;
          dwWPFlags : VTDWORD;
       end;
  UTVECOPTIONS = record
          dwFitMode : VTDWORD;
          sZoom : SCCUTIMAGEZOOM;
          dwPrintAspect : VTDWORD;
          bPrintBorder : VTBOOL;
          bShowFullScreen : VTBOOL;
          dwZoomEvent : VTDWORD;
          bShowBackground : VTBOOL;
          bPrintBackground : VTBOOL;
          bDraftMode : VTBOOL;
       end;
  UTPRINTOPTIONS = record
          sMargins : SCCUTPRINTMARGINS;
          bHeader : VTBOOL;
          sHeaderFont : SCCUTFONTSPEC;
          sDefaultFont : SCCUTFONTSPEC;
          dwWhatToPrint : VTDWORD;
          dwStartPage : VTDWORD;
          dwEndPage : VTDWORD;
          bCollate : VTBOOL;
          dwCopies : VTDWORD;
          szJobName : TArray0to127OfVTTCHAR;
          bUseDocPageSettings : VTBOOL;
          sFontAlias : SCCUTFONTALIASMAP;
       end;
  UTSYSTEMOPTIONS = record
          dwDialogFlags : VTDWORD;
          dwSystemFlags : VTDWORD;
          dwIntlFlags : VTDWORD;
          dwScrollFlags : VTDWORD;
          dwHardOptions : VTDWORD;
          dwOleFlags : VTDWORD;
          sResourceLibraryID : SCCUTRESOURCEID;
          wUnmappableChar : VTWORD;
          dwFIFlags : VTDWORD;
          sTempDirName : SCCUTTEMPDIRSPEC;
          bUseNativeFilter : VTBOOL;
          sTmpNameCallback : SCCUTTEMPFILSPEC;
          dwFilterFlags : VTDWORD;
          dwMiscFlags : VTDWORD;
          bRenderingPreferOIT : VTBOOL;
          lTimeZone : VTLONG;
          dwDefaultInputCharset : VTDWORD;
          sBufferOptions : SCCBUFFEROPTIONS;
          bExtractXMPMetaData : VTBOOL;
          bParseXMPMetaData : VTBOOL;
          pRedirtTempFileCallbackFunc : REDIRECTTEMPFILECALLBACKPROC;
          dwDocMemoryMode : VTDWORD;
          dwFlags : VTDWORD;
       end;
  TArray0toSizeofUTHXOPTIONS611SizeofUTWXOPTIONS6111OfVTBYTE = array[0..((sizeof(UTHXOPTIONS611))+(sizeof(UTWXOPTIONS611)))-1] of VTBYTE;
  UTXXOPTIONS = record
          dwDefMethod : VTDWORD;
          dwSearchMLFlags : VTDWORD;
          utf8DefReferenceStr : SCCUTXXDEFREFINFO;
          dwPageMLFlags : VTDWORD;
          szPrinterName : TArray0toSCCUT_FILENAMEMAX1OfVTBYTE;
          dwTrackedCharAttrs : VTDWORD;
          dwTrackedParaAttrs : VTDWORD;
          bProduceOffsets : VTBOOL;
          wNullChar : VTWORD;
          bXMLOutput : VTBOOL;
          dwUnmappedText : VTDWORD;
       end;
  UTOPTIONS = record
          dwSize : VTDWORD;
          sDelta : UTOPTIONDELTA;
          sPrint : UTPRINTOPTIONS;
          sDisplay : UTDISPLAYOPTIONS;
          sWp : UTWPOPTIONS;
          sSs : UTSSOPTIONS;
          sBmp : UTBMPOPTIONS;
          sVec : UTVECOPTIONS;
          sDb : UTDBOPTIONS;
          sArc : UTARCOPTIONS;
          sClip : UTCLIPOPTIONS;
          sSystem : UTSYSTEMOPTIONS;
          abyUnused : TArray0toSizeofUTHXOPTIONS611SizeofUTWXOPTIONS6111OfVTBYTE;
          sEX : UTEXOPTIONS;
          sGDSF : UTGDSFOPTIONS;
          sDramamine : UTDRAMOPTIONS;
          sPS : UTPSOPTIONS;
          sRainbow : UTRNBWOPTIONS;
          sOptionTrack : UTOPTIONDELTA;
          sMonthNames : SCCUTMONTHNAMES;
          sNumberFormat : SCCUTNUMBERFORMAT;
          sDayNames : SCCUTDAYNAMES;
          sXX : UTXXOPTIONS;
          sEXXML : UTEXXMLOPTIONS;
          sCCFlex : UTCCFLEXOPTIONS;
          sIX : UTIXOPTIONS;
          sPX : UTPXOPTIONS;
          sFontFilterList : FONTFILTERLIST;
          sCCOD : UTCCODOPTIONS;
          sOCR : UTOCROPTIONS;
          pRedirtTempFileCallbackFunc : VTLPVOID;
          szLotusNotesDirectory : TArray0toSCCUT_FILENAMEMAX1OfVTCHAR;
       end;
  PUTOPTIONS  = ^UTOPTIONS;
  PPUTOPTIONS  = ^PUTOPTIONS;
  UTSSOPTIONS75 = record
          dwClipboard : VTDWORD;
          bShowGridlines : VTBOOL;
          bPrintGridlines : VTBOOL;
          bPrintHeadings : VTBOOL;
          dwPrintFitToPage : VTDWORD;
          bDraftMode : VTBOOL;
          dwPrintScalePercent : VTDWORD;
          dwPrintScaleXWide : VTDWORD;
          dwPrintScaleXHigh : VTDWORD;
          dwPrintDirection : VTDWORD;
       end;
  UTSYSTEMOPTIONS521 = record
          dwDialogFlags : VTDWORD;
          dwSystemFlags : VTDWORD;
          dwIntlFlags : VTDWORD;
          dwScrollFlags : VTDWORD;
          dwHardOptions : VTDWORD;
          dwOleFlags : VTDWORD;
          sResourceLibraryID : SCCUTRESOURCEID;
       end;
  UTOPTIONS521 = record
          dwSize : VTDWORD;
          sDelta : UTOPTIONDELTA521;
          sPrint : UTPRINTOPTIONS;
          sDisplay : UTDISPLAYOPTIONS521;
          sWp : UTWPOPTIONS;
          sSs : UTSSOPTIONS75;
          sBmp : UTBMPOPTIONS;
          sVec : UTVECOPTIONS;
          sDb : UTDBOPTIONS;
          sArc : UTARCOPTIONS;
          sClip : UTCLIPOPTIONS;
          sSystem : UTSYSTEMOPTIONS521;
          sNumberFormat : SCCUTNUMBERFORMAT;
          sDayNames : SCCUTDAYNAMES;
          sMonthNames : SCCUTMONTHNAMES;
       end;
  PUTOPTIONS521  = ^UTOPTIONS521;
  PPUTOPTIONS521  = ^PUTOPTIONS521;
  UTOPTIONS600 = record
          dwSize : VTDWORD;
          sDelta : UTOPTIONDELTA830;
          sPrint : UTPRINTOPTIONS;
          sDisplay : UTDISPLAYOPTIONS;
          sWp : UTWPOPTIONS;
          sSs : UTSSOPTIONS75;
          sBmp : UTBMPOPTIONS;
          sVec : UTVECOPTIONS;
          sDb : UTDBOPTIONS;
          sArc : UTARCOPTIONS600;
          sClip : UTCLIPOPTIONS;
          sSystem : UTSYSTEMOPTIONS;
          sHX : UTHXOPTIONS600;
          sGDSF : UTGDSFOPTIONS832;
          sDramamine : UTDRAMOPTIONS;
          sPS : UTPSOPTIONS;
          sRainbow : UTRNBWOPTIONS;
          sOptionTrack : UTOPTIONDELTA830;
          sMonthNames : SCCUTMONTHNAMES;
          sNumberFormat : SCCUTNUMBERFORMAT;
          sDayNames : SCCUTDAYNAMES;
       end;
  PUTOPTIONS600  = ^UTOPTIONS600;
  PPUTOPTIONS600  = ^PUTOPTIONS600;
  UTOPTIONS601 = record
          dwSize : VTDWORD;
          sDelta : UTOPTIONDELTA830;
          sPrint : UTPRINTOPTIONS;
          sDisplay : UTDISPLAYOPTIONS;
          sWp : UTWPOPTIONS;
          sSs : UTSSOPTIONS75;
          sBmp : UTBMPOPTIONS;
          sVec : UTVECOPTIONS;
          sDb : UTDBOPTIONS;
          sArc : UTARCOPTIONS;
          sClip : UTCLIPOPTIONS;
          sSystem : UTSYSTEMOPTIONS;
          sHX : UTHXOPTIONS601;
          sGDSF : UTGDSFOPTIONS832;
          sDramamine : UTDRAMOPTIONS;
          sPS : UTPSOPTIONS;
          sRainbow : UTRNBWOPTIONS;
          sOptionTrack : UTOPTIONDELTA830;
          sMonthNames : SCCUTMONTHNAMES;
          sNumberFormat : SCCUTNUMBERFORMAT;
          sDayNames : SCCUTDAYNAMES;
       end;
  PUTOPTIONS601  = ^UTOPTIONS601;
  PPUTOPTIONS601  = ^PUTOPTIONS601;
  UTWXOPTIONS610 = record
          dwOutputCharacterSet : VTDWORD;
          dwFlavor : VTDWORD;
          dwTemplateSize : VTDWORD;
          hTemplate : VTHANDLE;
          pTemplate : VTLPBYTE;
          dwDeckSize : VTDWORD;
          dwLabelFlags : VTDWORD;
       end;
  UTSYSTEMOPTIONS610 = record
          dwDialogFlags : VTDWORD;
          dwSystemFlags : VTDWORD;
          dwIntlFlags : VTDWORD;
          dwScrollFlags : VTDWORD;
          dwHardOptions : VTDWORD;
          dwOleFlags : VTDWORD;
          sResourceLibraryID : SCCUTRESOURCEID;
          wUnmappableChar : VTWORD;
          dwFIFlags : VTDWORD;
       end;
  UTOPTIONS610 = record
          dwSize : VTDWORD;
          sDelta : UTOPTIONDELTA830;
          sPrint : UTPRINTOPTIONS;
          sDisplay : UTDISPLAYOPTIONS;
          sWp : UTWPOPTIONS;
          sSs : UTSSOPTIONS75;
          sBmp : UTBMPOPTIONS;
          sVec : UTVECOPTIONS;
          sDb : UTDBOPTIONS;
          sArc : UTARCOPTIONS;
          sClip : UTCLIPOPTIONS;
          sSystem : UTSYSTEMOPTIONS610;
          sHX : UTHXOPTIONS610;
          sWX : UTWXOPTIONS610;
          sEX : UTEXOPTIONS610;
          sGDSF : UTGDSFOPTIONS832;
          sDramamine : UTDRAMOPTIONS;
          sPS : UTPSOPTIONS;
          sRainbow : UTRNBWOPTIONS;
          sOptionTrack : UTOPTIONDELTA830;
          sMonthNames : SCCUTMONTHNAMES;
          sNumberFormat : SCCUTNUMBERFORMAT;
          sDayNames : SCCUTDAYNAMES;
       end;
  PUTOPTIONS610  = ^UTOPTIONS610;
  PPUTOPTIONS610  = ^PUTOPTIONS610;
  UTOPTIONS611 = record
          dwSize : VTDWORD;
          sDelta : UTOPTIONDELTA830;
          sPrint : UTPRINTOPTIONS;
          sDisplay : UTDISPLAYOPTIONS;
          sWp : UTWPOPTIONS;
          sSs : UTSSOPTIONS75;
          sBmp : UTBMPOPTIONS;
          sVec : UTVECOPTIONS;
          sDb : UTDBOPTIONS;
          sArc : UTARCOPTIONS;
          sClip : UTCLIPOPTIONS;
          sSystem : UTSYSTEMOPTIONS610;
          sHX : UTHXOPTIONS611;
          sWX : UTWXOPTIONS611;
          sEX : UTEXOPTIONS610;
          sGDSF : UTGDSFOPTIONS832;
          sDramamine : UTDRAMOPTIONS;
          sPS : UTPSOPTIONS;
          sRainbow : UTRNBWOPTIONS;
          sOptionTrack : UTOPTIONDELTA830;
          sMonthNames : SCCUTMONTHNAMES;
          sNumberFormat : SCCUTNUMBERFORMAT;
          sDayNames : SCCUTDAYNAMES;
       end;
  PUTOPTIONS611  = ^UTOPTIONS611;
  PPUTOPTIONS611  = ^PUTOPTIONS611;
  UTSYSTEMOPTIONS70 = record
          dwDialogFlags : VTDWORD;
          dwSystemFlags : VTDWORD;
          dwIntlFlags : VTDWORD;
          dwScrollFlags : VTDWORD;
          dwHardOptions : VTDWORD;
          dwOleFlags : VTDWORD;
          sResourceLibraryID : SCCUTRESOURCEID;
          wUnmappableChar : VTWORD;
          dwFIFlags : VTDWORD;
          sTempDirName : SCCUTTEMPDIRSPEC;
          bUseNativeFilter : VTBOOL;
       end;
  UTOPTIONS700 = record
          dwSize : VTDWORD;
          sDelta : UTOPTIONDELTA830;
          sPrint : UTPRINTOPTIONS;
          sDisplay : UTDISPLAYOPTIONS;
          sWp : UTWPOPTIONS;
          sSs : UTSSOPTIONS75;
          sBmp : UTBMPOPTIONS;
          sVec : UTVECOPTIONS;
          sDb : UTDBOPTIONS;
          sArc : UTARCOPTIONS;
          sClip : UTCLIPOPTIONS;
          sSystem : UTSYSTEMOPTIONS70;
          abyUnused : TArray0toSizeofUTHXOPTIONS611SizeofUTWXOPTIONS6111OfVTBYTE;
          sEX : UTEXOPTIONS700;
          sGDSF : UTGDSFOPTIONS832;
          sDramamine : UTDRAMOPTIONS;
          sPS : UTPSOPTIONS;
          sRainbow : UTRNBWOPTIONS;
          sOptionTrack : UTOPTIONDELTA830;
          sMonthNames : SCCUTMONTHNAMES;
          sNumberFormat : SCCUTNUMBERFORMAT;
          sDayNames : SCCUTDAYNAMES;
       end;
  PUTOPTIONS700  = ^UTOPTIONS700;
  PPUTOPTIONS700  = ^PUTOPTIONS700;
  UTSYSTEMOPTIONS71 = record
          dwDialogFlags : VTDWORD;
          dwSystemFlags : VTDWORD;
          dwIntlFlags : VTDWORD;
          dwScrollFlags : VTDWORD;
          dwHardOptions : VTDWORD;
          dwOleFlags : VTDWORD;
          sResourceLibraryID : SCCUTRESOURCEID;
          wUnmappableChar : VTWORD;
          dwFIFlags : VTDWORD;
          sTempDirName : SCCUTTEMPDIRSPEC;
          bUseNativeFilter : VTBOOL;
          sTmpNameCallback : SCCUTTEMPFILSPEC;
       end;
  UTOPTIONS710 = record
          dwSize : VTDWORD;
          sDelta : UTOPTIONDELTA830;
          sPrint : UTPRINTOPTIONS;
          sDisplay : UTDISPLAYOPTIONS;
          sWp : UTWPOPTIONS;
          sSs : UTSSOPTIONS75;
          sBmp : UTBMPOPTIONS;
          sVec : UTVECOPTIONS;
          sDb : UTDBOPTIONS;
          sArc : UTARCOPTIONS;
          sClip : UTCLIPOPTIONS;
          sSystem : UTSYSTEMOPTIONS71;
          abyUnused : TArray0toSizeofUTHXOPTIONS611SizeofUTWXOPTIONS6111OfVTBYTE;
          sEX : UTEXOPTIONS710;
          sGDSF : UTGDSFOPTIONS832;
          sDramamine : UTDRAMOPTIONS;
          sPS : UTPSOPTIONS;
          sRainbow : UTRNBWOPTIONS;
          sOptionTrack : UTOPTIONDELTA830;
          sMonthNames : SCCUTMONTHNAMES;
          sNumberFormat : SCCUTNUMBERFORMAT;
          sDayNames : SCCUTDAYNAMES;
       end;
  PUTOPTIONS710  = ^UTOPTIONS710;
  PPUTOPTIONS710  = ^PUTOPTIONS710;
  UTSYSTEMOPTIONS77 = record
          dwDialogFlags : VTDWORD;
          dwSystemFlags : VTDWORD;
          dwIntlFlags : VTDWORD;
          dwScrollFlags : VTDWORD;
          dwHardOptions : VTDWORD;
          dwOleFlags : VTDWORD;
          sResourceLibraryID : SCCUTRESOURCEID;
          wUnmappableChar : VTWORD;
          dwFIFlags : VTDWORD;
          sTempDirName : SCCUTTEMPDIRSPEC;
          bUseNativeFilter : VTBOOL;
          sTmpNameCallback : SCCUTTEMPFILSPEC;
          dwFilterFlags : VTDWORD;
       end;
  UTXXOPTIONStag750 = record
          dwDefMethod : VTDWORD;
          dwSearchMLFlags : VTDWORD;
          utf8DefReferenceStr : SCCUTXXDEFREFINFO;
          dwPageMLFlags : VTDWORD;
          szPrinterName : TArray0toSCCUT_FILENAMEMAX1OfVTBYTE;
       end;
  UTXXOPTIONS750 = UTXXOPTIONStag750;
  UTOPTIONS750 = record
          dwSize : VTDWORD;
          sDelta : UTOPTIONDELTA830;
          sPrint : UTPRINTOPTIONS;
          sDisplay : UTDISPLAYOPTIONS;
          sWp : UTWPOPTIONS;
          sSs : UTSSOPTIONS75;
          sBmp : UTBMPOPTIONS;
          sVec : UTVECOPTIONS;
          sDb : UTDBOPTIONS;
          sArc : UTARCOPTIONS;
          sClip : UTCLIPOPTIONS;
          sSystem : UTSYSTEMOPTIONS77;
          abyUnused : TArray0toSizeofUTHXOPTIONS611SizeofUTWXOPTIONS6111OfVTBYTE;
          sEX : UTEXOPTIONS800;
          sGDSF : UTGDSFOPTIONS832;
          sDramamine : UTDRAMOPTIONS;
          sPS : UTPSOPTIONS;
          sRainbow : UTRNBWOPTIONS;
          sOptionTrack : UTOPTIONDELTA830;
          sMonthNames : SCCUTMONTHNAMES;
          sNumberFormat : SCCUTNUMBERFORMAT;
          sDayNames : SCCUTDAYNAMES;
          sXX : UTXXOPTIONS750;
       end;
  PUTOPTIONS750  = ^UTOPTIONS750;
  PPUTOPTIONS750  = ^PUTOPTIONS750;
  UTSSOPTIONS832 = record
          dwClipboard : VTDWORD;
          bShowGridlines : VTBOOL;
          bPrintGridlines : VTBOOL;
          bPrintHeadings : VTBOOL;
          dwPrintFitToPage : VTDWORD;
          bDraftMode : VTBOOL;
          dwPrintScalePercent : VTDWORD;
          dwPrintScaleXWide : VTDWORD;
          dwPrintScaleXHigh : VTDWORD;
          dwPrintDirection : VTDWORD;
          bShowHeadings : VTBOOL;
       end;
  UTOPTIONS770 = record
          dwSize : VTDWORD;
          sDelta : UTOPTIONDELTA830;
          sPrint : UTPRINTOPTIONS;
          sDisplay : UTDISPLAYOPTIONS;
          sWp : UTWPOPTIONS;
          sSs : UTSSOPTIONS832;
          sBmp : UTBMPOPTIONS;
          sVec : UTVECOPTIONS;
          sDb : UTDBOPTIONS;
          sArc : UTARCOPTIONS77;
          sClip : UTCLIPOPTIONS;
          sSystem : UTSYSTEMOPTIONS77;
          abyUnused : TArray0toSizeofUTHXOPTIONS611SizeofUTWXOPTIONS6111OfVTBYTE;
          sEX : UTEXOPTIONS800;
          sGDSF : UTGDSFOPTIONS832;
          sDramamine : UTDRAMOPTIONS;
          sPS : UTPSOPTIONS;
          sRainbow : UTRNBWOPTIONS;
          sOptionTrack : UTOPTIONDELTA830;
          sMonthNames : SCCUTMONTHNAMES;
          sNumberFormat : SCCUTNUMBERFORMAT;
          sDayNames : SCCUTDAYNAMES;
          sXX : UTXXOPTIONS;
          sEXXML : UTEXXMLOPTIONS;
          sCCFlex : UTCCFLEXOPTIONS770;
       end;
  PUTOPTIONS770  = ^UTOPTIONS770;
  PPUTOPTIONS770  = ^PUTOPTIONS770;
  UTSYSTEMOPTIONS80 = record
          dwDialogFlags : VTDWORD;
          dwSystemFlags : VTDWORD;
          dwIntlFlags : VTDWORD;
          dwScrollFlags : VTDWORD;
          dwHardOptions : VTDWORD;
          dwOleFlags : VTDWORD;
          sResourceLibraryID : SCCUTRESOURCEID;
          wUnmappableChar : VTWORD;
          dwFIFlags : VTDWORD;
          sTempDirName : SCCUTTEMPDIRSPEC;
          bUseNativeFilter : VTBOOL;
          sTmpNameCallback : SCCUTTEMPFILSPEC;
          dwFilterFlags : VTDWORD;
          bRenderingPreferOIT : VTBOOL;
       end;
  UTXXOPTIONStag80 = record
          dwDefMethod : VTDWORD;
          dwSearchMLFlags : VTDWORD;
          utf8DefReferenceStr : SCCUTXXDEFREFINFO;
          dwPageMLFlags : VTDWORD;
          szPrinterName : TArray0toSCCUT_FILENAMEMAX1OfVTBYTE;
          dwTrackedCharAttrs : VTDWORD;
          dwTrackedParaAttrs : VTDWORD;
          bProduceOffsets : VTBOOL;
       end;
  UTXXOPTIONS80 = UTXXOPTIONStag80;
  UTOPTIONStag80 = record
          dwSize : VTDWORD;
          sDelta : UTOPTIONDELTA830;
          sPrint : UTPRINTOPTIONS;
          sDisplay : UTDISPLAYOPTIONS;
          sWp : UTWPOPTIONS;
          sSs : UTSSOPTIONS832;
          sBmp : UTBMPOPTIONS;
          sVec : UTVECOPTIONS;
          sDb : UTDBOPTIONS;
          sArc : UTARCOPTIONS;
          sClip : UTCLIPOPTIONS;
          sSystem : UTSYSTEMOPTIONS80;
          abyUnused : TArray0toSizeofUTHXOPTIONS611SizeofUTWXOPTIONS6111OfVTBYTE;
          sEX : UTEXOPTIONS800;
          sGDSF : UTGDSFOPTIONS832;
          sDramamine : UTDRAMOPTIONS;
          sPS : UTPSOPTIONS;
          sRainbow : UTRNBWOPTIONS;
          sOptionTrack : UTOPTIONDELTA830;
          sMonthNames : SCCUTMONTHNAMES;
          sNumberFormat : SCCUTNUMBERFORMAT;
          sDayNames : SCCUTDAYNAMES;
          sXX : UTXXOPTIONS80;
          sEXXML : UTEXXMLOPTIONS;
          sCCFlex : UTCCFLEXOPTIONS;
       end;
  UTOPTIONS80 = UTOPTIONStag80;
  PUTOPTIONS80  = ^UTOPTIONS80;
  PPUTOPTIONS80  = ^PUTOPTIONS80;
  UTXXOPTIONStag819 = record
          dwDefMethod : VTDWORD;
          dwSearchMLFlags : VTDWORD;
          utf8DefReferenceStr : SCCUTXXDEFREFINFO;
          dwPageMLFlags : VTDWORD;
          szPrinterName : TArray0toSCCUT_FILENAMEMAX1OfVTBYTE;
          dwTrackedCharAttrs : VTDWORD;
          dwTrackedParaAttrs : VTDWORD;
          bProduceOffsets : VTBOOL;
          wNullChar : VTWORD;
          bXMLOutput : VTBOOL;
       end;
  UTXXOPTIONS819 = UTXXOPTIONStag819;
  UTOPTIONStag819 = record
          dwSize : VTDWORD;
          sDelta : UTOPTIONDELTA830;
          sPrint : UTPRINTOPTIONS;
          sDisplay : UTDISPLAYOPTIONS;
          sWp : UTWPOPTIONS;
          sSs : UTSSOPTIONS832;
          sBmp : UTBMPOPTIONS;
          sVec : UTVECOPTIONS;
          sDb : UTDBOPTIONS;
          sArc : UTARCOPTIONS;
          sClip : UTCLIPOPTIONS;
          sSystem : UTSYSTEMOPTIONS;
          abyUnused : TArray0toSizeofUTHXOPTIONS611SizeofUTWXOPTIONS6111OfVTBYTE;
          sEX : UTEXOPTIONS800;
          sGDSF : UTGDSFOPTIONS832;
          sDramamine : UTDRAMOPTIONS;
          sPS : UTPSOPTIONS;
          sRainbow : UTRNBWOPTIONS;
          sOptionTrack : UTOPTIONDELTA830;
          sMonthNames : SCCUTMONTHNAMES;
          sNumberFormat : SCCUTNUMBERFORMAT;
          sDayNames : SCCUTDAYNAMES;
          sXX : UTXXOPTIONS819;
          sEXXML : UTEXXMLOPTIONS;
          sCCFlex : UTCCFLEXOPTIONS;
       end;
  UTOPTIONS819 = UTOPTIONStag819;
  PUTOPTIONS819  = ^UTOPTIONS819;
  PPUTOPTIONS819  = ^PUTOPTIONS819;
  UTSYSTEMOPTIONS830 = record
          dwDialogFlags : VTDWORD;
          dwSystemFlags : VTDWORD;
          dwIntlFlags : VTDWORD;
          dwScrollFlags : VTDWORD;
          dwHardOptions : VTDWORD;
          dwOleFlags : VTDWORD;
          sResourceLibraryID : SCCUTRESOURCEID;
          wUnmappableChar : VTWORD;
          dwFIFlags : VTDWORD;
          sTempDirName : SCCUTTEMPDIRSPEC;
          bUseNativeFilter : VTBOOL;
          sTmpNameCallback : SCCUTTEMPFILSPEC;
          dwFilterFlags : VTDWORD;
          dwMiscFlags : VTDWORD;
          bRenderingPreferOIT : VTBOOL;
          lTimeZone : VTLONG;
          dwDefaultInputCharset : VTDWORD;
          sBufferOptions : SCCBUFFEROPTIONS;
          bExtractXMPMetaData : VTBOOL;
          pRedirtTempFileCallbackFunc : REDIRECTTEMPFILECALLBACKPROC;
          dwDocMemoryMode : VTDWORD;
       end;
  UTOPTIONStag830 = record
          dwSize : VTDWORD;
          sDelta : UTOPTIONDELTA830;
          sPrint : UTPRINTOPTIONS;
          sDisplay : UTDISPLAYOPTIONS;
          sWp : UTWPOPTIONS;
          sSs : UTSSOPTIONS832;
          sBmp : UTBMPOPTIONS;
          sVec : UTVECOPTIONS;
          sDb : UTDBOPTIONS;
          sArc : UTARCOPTIONS;
          sClip : UTCLIPOPTIONS;
          sSystem : UTSYSTEMOPTIONS830;
          abyUnused : TArray0toSizeofUTHXOPTIONS611SizeofUTWXOPTIONS6111OfVTBYTE;
          sEX : UTEXOPTIONS800;
          sGDSF : UTGDSFOPTIONS832;
          sDramamine : UTDRAMOPTIONS;
          sPS : UTPSOPTIONS;
          sRainbow : UTRNBWOPTIONS;
          sOptionTrack : UTOPTIONDELTA830;
          sMonthNames : SCCUTMONTHNAMES;
          sNumberFormat : SCCUTNUMBERFORMAT;
          sDayNames : SCCUTDAYNAMES;
          sXX : UTXXOPTIONS;
          sEXXML : UTEXXMLOPTIONS;
          sCCFlex : UTCCFLEXOPTIONS;
          sWaterMark : UTWATERMARKOPTIONS;
          sDefaultPageSize : DEFAULTPAGESIZE;
          szFontPath : TArray0toSCCUT_FILENAMEMAX1OfVTCHAR;
          bFilter : VTBOOL;
          sFontFilterList : FONTFILTERLIST;
          sCCOD : UTCCODOPTIONS;
          bEmbedFonts : VTBOOL;
          sOCR : UTOCROPTIONS;
          pRedirtTempFileCallbackFunc : VTLPVOID;
       end;
  UTOPTIONS830 = UTOPTIONStag830;
  PUTOPTIONS830  = ^UTOPTIONS830;
  PPUTOPTIONS830  = ^PUTOPTIONS830;
  UTOPTIONStag832 = record
          dwSize : VTDWORD;
          sDelta : UTOPTIONDELTA;
          sPrint : UTPRINTOPTIONS;
          sDisplay : UTDISPLAYOPTIONS;
          sWp : UTWPOPTIONS;
          sSs : UTSSOPTIONS832;
          sBmp : UTBMPOPTIONS;
          sVec : UTVECOPTIONS;
          sDb : UTDBOPTIONS;
          sArc : UTARCOPTIONS;
          sClip : UTCLIPOPTIONS;
          sSystem : UTSYSTEMOPTIONS;
          abyUnused : TArray0toSizeofUTHXOPTIONS611SizeofUTWXOPTIONS6111OfVTBYTE;
          sEX : UTEXOPTIONS;
          sGDSF : UTGDSFOPTIONS832;
          sDramamine : UTDRAMOPTIONS;
          sPS : UTPSOPTIONS;
          sRainbow : UTRNBWOPTIONS;
          sOptionTrack : UTOPTIONDELTA;
          sMonthNames : SCCUTMONTHNAMES;
          sNumberFormat : SCCUTNUMBERFORMAT;
          sDayNames : SCCUTDAYNAMES;
          sXX : UTXXOPTIONS;
          sEXXML : UTEXXMLOPTIONS;
          sCCFlex : UTCCFLEXOPTIONS;
          sIX : UTIXOPTIONS;
          sPX : UTPXOPTIONS;
          sFontFilterList : FONTFILTERLIST;
          sCCOD : UTCCODOPTIONS;
          sOCR : UTOCROPTIONS;
          pRedirtTempFileCallbackFunc : VTLPVOID;
       end;
  UTOPTIONS832 = UTOPTIONStag832;
  PUTOPTIONS832  = ^UTOPTIONS832;
  PPUTOPTIONS832  = ^PUTOPTIONS832;
  PUTPRINTOPTIONS  = ^UTPRINTOPTIONS;
  PPUTPRINTOPTIONS  = ^PUTPRINTOPTIONS;
  PUTPSOPTIONS  = ^UTPSOPTIONS;
  PPUTPSOPTIONS  = ^PUTPSOPTIONS;
  PUTPXOPTIONS  = ^UTPXOPTIONS;
  PPUTPXOPTIONS  = ^PUTPXOPTIONS;
  PUTRNBWOPTIONS  = ^UTRNBWOPTIONS;
  PPUTRNBWOPTIONS  = ^PUTRNBWOPTIONS;
  PUTSSOPTIONS  = ^UTSSOPTIONS;
  PPUTSSOPTIONS  = ^PUTSSOPTIONS;
  PUTSSOPTIONS75  = ^UTSSOPTIONS75;
  PPUTSSOPTIONS75  = ^PUTSSOPTIONS75;
  PUTSSOPTIONS832  = ^UTSSOPTIONS832;
  PPUTSSOPTIONS832  = ^PUTSSOPTIONS832;
  PUTSYSTEMOPTIONS  = ^UTSYSTEMOPTIONS;
  PPUTSYSTEMOPTIONS  = ^PUTSYSTEMOPTIONS;
  PUTSYSTEMOPTIONS521  = ^UTSYSTEMOPTIONS521;
  PPUTSYSTEMOPTIONS521  = ^PUTSYSTEMOPTIONS521;
  PUTSYSTEMOPTIONS610  = ^UTSYSTEMOPTIONS610;
  PPUTSYSTEMOPTIONS610  = ^PUTSYSTEMOPTIONS610;
  PUTSYSTEMOPTIONS70  = ^UTSYSTEMOPTIONS70;
  PPUTSYSTEMOPTIONS70  = ^PUTSYSTEMOPTIONS70;
  PUTSYSTEMOPTIONS71  = ^UTSYSTEMOPTIONS71;
  PPUTSYSTEMOPTIONS71  = ^PUTSYSTEMOPTIONS71;
  PUTSYSTEMOPTIONS77  = ^UTSYSTEMOPTIONS77;
  PPUTSYSTEMOPTIONS77  = ^PUTSYSTEMOPTIONS77;
  PUTSYSTEMOPTIONS80  = ^UTSYSTEMOPTIONS80;
  PPUTSYSTEMOPTIONS80  = ^PUTSYSTEMOPTIONS80;
  UTSYSTEMOPTIONS81 = record
          dwDialogFlags : VTDWORD;
          dwSystemFlags : VTDWORD;
          dwIntlFlags : VTDWORD;
          dwScrollFlags : VTDWORD;
          dwHardOptions : VTDWORD;
          dwOleFlags : VTDWORD;
          sResourceLibraryID : SCCUTRESOURCEID;
          wUnmappableChar : VTWORD;
          dwFIFlags : VTDWORD;
          sTempDirName : SCCUTTEMPDIRSPEC;
          bUseNativeFilter : VTBOOL;
          sTmpNameCallback : SCCUTTEMPFILSPEC;
          dwFilterFlags : VTDWORD;
          bRenderingPreferOIT : VTBOOL;
       end;
  PUTSYSTEMOPTIONS81  = ^UTSYSTEMOPTIONS81;
  PPUTSYSTEMOPTIONS81  = ^PUTSYSTEMOPTIONS81;
  UTSYSTEMOPTIONS82 = record
          dwDialogFlags : VTDWORD;
          dwSystemFlags : VTDWORD;
          dwIntlFlags : VTDWORD;
          dwScrollFlags : VTDWORD;
          dwHardOptions : VTDWORD;
          dwOleFlags : VTDWORD;
          sResourceLibraryID : SCCUTRESOURCEID;
          wUnmappableChar : VTWORD;
          dwFIFlags : VTDWORD;
          sTempDirName : SCCUTTEMPDIRSPEC;
          bUseNativeFilter : VTBOOL;
          sTmpNameCallback : SCCUTTEMPFILSPEC;
          dwFilterFlags : VTDWORD;
          dwMiscFlags : VTDWORD;
          bRenderingPreferOIT : VTBOOL;
          lTimeZone : VTLONG;
          dwDefaultInputCharset : VTDWORD;
          sBufferOptions : SCCBUFFEROPTIONS;
          bExtractXMPMetaData : VTBOOL;
          pRedirtTempFileCallbackFunc : REDIRECTTEMPFILECALLBACKPROC;
       end;
  PUTSYSTEMOPTIONS82  = ^UTSYSTEMOPTIONS82;
  PPUTSYSTEMOPTIONS82  = ^PUTSYSTEMOPTIONS82;
  PUTSYSTEMOPTIONS830  = ^UTSYSTEMOPTIONS830;
  PPUTSYSTEMOPTIONS830  = ^PUTSYSTEMOPTIONS830;
  PUTVECOPTIONS  = ^UTVECOPTIONS;
  PPUTVECOPTIONS  = ^PUTVECOPTIONS;
  PUTWATERMARKOPTIONS  = ^UTWATERMARKOPTIONS;
  PPUTWATERMARKOPTIONS  = ^PUTWATERMARKOPTIONS;
  PUTWPOPTIONS  = ^UTWPOPTIONS;
  PPUTWPOPTIONS  = ^PUTWPOPTIONS;
  UTWPOPTIONS820 = record
          dwMode : VTDWORD;
          sZoom : SCCUTIMAGEZOOM;
          dwFitMode : VTDWORD;
          dwWrapToWindow : VTDWORD;
          bDraftPrintMode : VTBOOL;
          bDisableHyperlinks : VTBOOL;
          bDisablePositionalFrames : VTBOOL;
       end;
  PUTWPOPTIONS820  = ^UTWPOPTIONS820;
  PPUTWPOPTIONS820  = ^PUTWPOPTIONS820;
  PUTWXOPTIONS610  = ^UTWXOPTIONS610;
  PPUTWXOPTIONS610  = ^PUTWXOPTIONS610;
  PUTWXOPTIONS611  = ^UTWXOPTIONS611;
  PPUTWXOPTIONS611  = ^PUTWXOPTIONS611;
  PUTXXOPTIONS  = ^UTXXOPTIONS;
  PPUTXXOPTIONS  = ^PUTXXOPTIONS;
  PUTXXOPTIONS750  = ^UTXXOPTIONS750;
  PPUTXXOPTIONS750  = ^PUTXXOPTIONS750;
  PUTXXOPTIONS80  = ^UTXXOPTIONS80;
  PPUTXXOPTIONS80  = ^PUTXXOPTIONS80;
  PUTXXOPTIONS819  = ^UTXXOPTIONS819;
  PPUTXXOPTIONS819  = ^PUTXXOPTIONS819;
  SCCOPTIONVAL = record
         case longint of
            0 : ( dwValue : VTDWORD );
            1 : ( szValue : VTLPBYTE );
         end;
  SCCOPTIONINIT = record
          dwOptionId : VTDWORD;
          wOptionType : VTWORD;
          Value : SCCOPTIONVAL;
       end;
  PSCCOPTIONINIT  = ^SCCOPTIONINIT;
  PSCCOPTIONVAL  = ^SCCOPTIONVAL;
  SCCUTUNIXOPTIONSFILEINFO = record
          dwSize : VTDWORD;
          szFName : TArray0toSCCUT_FILENAMEMAX1OfVTBYTE;
       end;
  PSCCUTUNIXOPTIONSFILEINFO  = ^SCCUTUNIXOPTIONSFILEINFO;
  PSCCUTXXDEFREFINFO  = ^SCCUTXXDEFREFINFO;
  PSCCUTXXDEFREF  = ^SCCUTXXDEFREF;
  PUTOPTIONDELTAtag830  = ^UTOPTIONDELTA830;


  { Copyright (c) 2001, 2010, Oracle and/or its affiliates.
  All rights reserved.  }
  {
  |   SCC Viewer Technology - Source file
  |
  |   File:           sccopt.h
  |   Module:         SCC Common Options Model
  |   Environment:    Portable
  |   Function:       Common Options Model Structures and Macros
   }
{$ifndef _SCCOPT_H}
{$ifdef WINDOWS}
{$ifndef SCC_PACK_SET}

  const
     SCC_PACK_SET = 1;
     SCC_PACKED_BY_SCCOP_H = 1;
(** unsupported pragma#pragma pack(push,8)*)
{$endif}
  { SCC_PACK_SET  }
{$endif}
  { WINDOWS  }




  {-----------------------------------------------------------------------------
  |   IMPORTANT!!!!!                IMPORTANT!!!!!!                 IMPORTANT!!!
  |
  |   If you are adding an option, there are several things that must be done.
  |   First of all, an SCCOPT_ must be added for it in sccop.h.  Any values that
  |   the options will take must be defined in sccopval.h.  An entry for the
  |   the option should be added to the structure that will track the option.
  |   If the structure is an existing structure, a copy of it must be made and
  |   given a name with the PREVIOUS release number in it.  This is done so that
  |   when people upgrade to new technology, they will be able to keep their
  |   existing options.  See UTLoadDefaultOptions for more info on this.
  |   Lastly, make sure that the code to handle the option is in UTSetOption,
  |   UTGetOption, and UTCopyOptionChanges.  If the option allocated memory,
  |   make sure to handle it in UTFreeAllocatedOptions.  Also, do not forget to
  |   add entries to the UTOPTIONDELTA struct so that we don't get any array
  |   overruns.  Finally, please note that the global option set (gOptions) is
  |   NOT to be written to except by UTSetGlobalOption or UTSetGlobalOptionSet.
  |------------------------------------------------------------------------------
  |   The UTOPTIONDELTA stuct contains an array of Option IDs which is used to
  |   identify which options have been changed, so that they may be updated in
  |   the global option set before it is saved to disk.  When adding options,
  |   make sure that the size of this struct is increased if neccesary to account
  |   for the increased number of options which may change.
  |------------------------------------------------------------------------------
   }
  {
  |-------------------------------------------------------------
  |   Option numbers used are 1-132 (except for 11-14).
  |   Option 98 is actually the character value.
  |-------------------------------------------------------------
   }
  {
  |   Options callback Action IDs
   }

  const
     SCCOPT_CALLBACK_BEGIN = 0;     
     SCCOPT_CALLBACK_END = 1;     
     SCCOPT_CALLBACK_OPTION = 2;     
  {
  |   O P T I O N   I D S
  |   High nibble is flags, next three are the option ID, low word
  |   is data size (0 = no intrinsic data size)
   }
  { Invalid option  }
     SCCOPT_INVALID = 0;     
  {
  |   HTML/Wireless Export Options
   }
  { Output character set                                                      }
     SCCOPT_EX_OUTPUTCHARACTERSET = 1;     
  { Template file                                                             }
     SCCOPT_EX_TEMPLATE = 3;     
  { Output flavor                                                             }
     SCCOPT_EX_FLAVOR = 7;     
  { Use default Date/Time for Dramamine compare                               }
     SCCOPT_EX_USEDEFTIMEFORDRAMCOMPARE = 15;     
  { Option flags for HTML Export                                              }
     SCCOPT_EX_COMPLIANCEFLAGS = 27;     
  { Describes what format of Unicode to use in HTML Export.                   }
     SCCOPT_EX_CHARBYTEORDER = 31;     
  { Determines whether callbacks should use the Unicode structs               }
     SCCOPT_EX_UNICODECALLBACKSTR = 32;     
  { Determines whether the exported text is formatted for user readability    }
     SCCOPT_EX_NOSOURCEFORMATTING = 33;     
  { Indicates the default font to use                                         }
     SCCOPT_EX_FALLBACKFONT = 35;     
  { Discard invalid style names characters                                    }
     SCCOPT_EX_SIMPLESTYLENAMES = 36;     
  { Size of the device's text/primary buffer in bytes                         }
     SCCOPT_EX_TEXTBUFFERSIZE = 37;     
  { Generate list numbers instead of using list tags                          }
     SCCOPT_EX_GENBULLETSANDNUMS = 41;     
  { Flags for labeling text in WML                                            }
     SCCOPT_EX_LABELFLAGS = 45;     
  { Skip graphics this size or smaller                                        }
     SCCOPT_EX_GRAPHICSKIPSIZE = 47;     
  { Size in bytes of the device's graphics buffer                             }
     SCCOPT_EX_GRAPHICBUFFERSIZE = 48;     
  { Using JavaScript to handle the tab stop                                   }
     SCCOPT_EX_JAVASCRIPTTABS = 49;     
  { Page size in characters                                                   }
     SCCOPT_EX_PAGESIZE = 50;     
  { Remove excess whitespace                                                  }
     SCCOPT_EX_COLLAPSEWHITESPACE = 51;     
  { Max. length of URLs in characters                                         }
     SCCOPT_EX_MAXURLLENGTH = 52;     
  { Use separate buffer for graphics                                          }
     SCCOPT_EX_SEPARATEGRAPHICSBUFFER = 53;     
  { Use callback flags to turn on/off individual EX callbacks                 }
     SCCOPT_EX_CALLBACKS = 54;     
  { Number of rows in a grid                                                  }
     SCCOPT_EX_GRIDROWS = 55;     
  { Number of columns in a grid                                               }
     SCCOPT_EX_GRIDCOLS = 56;     
  { Indicates the traversal direction of a grid when using next/previous      }
     SCCOPT_EX_GRIDADVANCE = 57;     
  { Indicates that sheet traversal should continue when an edge is reached    }
     SCCOPT_EX_GRIDWRAP = 58;     
  { Prevent graphics from overlapping                                         }
     SCCOPT_EX_PREVENTGRAPHICOVERLAP = 59;     
  { Option flags to suppress different font attributes                        }
     SCCOPT_EX_FONTFLAGS = 60;     
  { Show hidden text                                                          }
     SCCOPT_EX_SHOWHIDDENTEXT = 79;     
  { extraction of the attachments  }
     SCCOPT_EX_EXTRACTEMBEDDEDFILES = 94;     
  { Show hidden rows, columns and sheets for the spread sheet                 }
     SCCOPT_EX_SHOWHIDDENSSDATA = 95;     
  { Export the tracking change for the word processing document               }
     SCCOPT_EX_CHANGETRACKING = 96;     
  { Show spreadsheet border                                                   }
     SCCOPT_EX_SHOWSPREADSHEETBORDER = 97;     
  { Show row and columns headings                                             }
     SCCOPT_EX_SSDBROWCOLHEADINGS = 106;     
  { Show SS/DB border                                                         }
     SCCOPT_EX_SSDBBORDERS = 107;     
  { PHTML only - suppress output of input file metadata                       }
     SCCOPT_EX_SUPPRESSMETADATA = 131;     
  { XML Export options  }
  { XML definition method                                                     }
     SCCOPT_XML_DEF_METHOD = 61;     
  { Path to XML definition file                                               }
     SCCOPT_XML_DEF_REFERENCE = 62;     
  { Option flags for XML Export                                               }
     SCCOPT_XML_SEARCHML_FLAGS = 63;     
  { Control production of unmapped text in SearchML.                          }
     SCCOPT_XML_SEARCHML_UNMAPPEDTEXT = 109;     
  { Option flags for CA.  Actually an alias for similar SearchML flags.       }
     SCCOPT_CA_FLAGS = SCCOPT_XML_SEARCHML_FLAGS;     
  {  CATest should produce UTF8 encoded XML output.   }
     SCCOPT_CA_XMLOUTPUT = 105;     
  {  SearchML options.   }
  {  The character attributes to track                                        }
     SCCOPT_XML_SEARCHML_CHAR_ATTRS = 75;     
  {  The paragraph attributes to track                                        }
     SCCOPT_XML_SEARCHML_PARA_ATTRS = 76;     
  {  Should offset be tracked?                                                }
     SCCOPT_XML_SEARCHML_OFFSET = 77;     
  {  Replace null path separator characters with this character.              }
     SCCOPT_XML_NULLREPLACECHAR = 102;     
  { PageML options  }
  { Option flags for PageML                                                   }
     SCCOPT_XML_PAGEML_FLAGS = 64;     
  { Option for the format device for the PageML                               }
     SCCOPT_XML_PAGEML_PRINTERNAME = 74;     
  { EXXML option.  (EXXML is the XML Writer that consumes from the XChunker)  }
  { A wide string consisting of comma-delimited substrings                    }
     SCCOPT_EXXML_SUBSTREAMROOTS = 78;     
  { XML definition method for EXXML                                           }
     SCCOPT_EXXML_DEF_METHOD = 91;     
  { Path to XML definition file for EXXML                                     }
     SCCOPT_EXXML_DEF_REFERENCE = 92;     
  { CCFLEX options (Chunker to Flexiondoc component)  }
  { TRUE to fully attribute styles                                            }
     SCCOPT_CCFLEX_FULLYATTRIBUTESTYLES = 85;     
  { TRUE to remove references to current point in vector output               }
     SCCOPT_CCFLEX_REMOVECURRENTPOINT = 86;     
  { TRUE to replace font groups with references to individual fonts           }
     SCCOPT_CCFLEX_REMOVEFONTGROUPS = 87;     
  { TRUE to include text_offset attribute on tx.p and tx.r elements           }
     SCCOPT_CCFLEX_INCLUDETEXTOFFSETS = 88;     
  { List of FI Id's for embeddings to extract without conversion              }
     SCCOPT_CCFLEX_EXTRACTEMBEDDINGS = 89;     
  { List of FI Id's for embeddings to extract and convert. Converted to type  }
     SCCOPT_CCFLEX_CONVERTEMBEDDINGS = 90;     
  { specified by SCCOPT_GRAPHIC_TYPE                                          }
  { Options for how to convert various formats - see sccopval.h               }
     SCCOPT_CCFLEX_FORMATOPTIONS = 99;     
  { Measurement units to use - see sccopval.h                                 }
     SCCOPT_CCFLEX_UNITS = 111;     
  { CCOD options (Flexiondoc to Open Document component)  }
     SCCOPT_CCOD_GRAPHICOPTIONS = 110;     
  { these are left for backward compatibility  }
     SCCOPT_OUTPUTCHARACTERSET = 1;     
     SCCOPT_HTML_OUTPUTCHARACTERSET = 1;     
     SCCOPT_HTML_TEMPLATE = 3;     
     SCCOPT_HTML_FLAVOR = 7;     
     SCCOPT_USE_DEFAULTS_FOR_DRAMAMINE_COMPARE = 15;     
  { HTML Export option to enable publishing server callback **UNUSED**        }
     SCCOPT_HTML_ENABLEPSCALLBACK = 16;     
     SCCOPT_HTML_FLAGS = 27;     
     SCCOPT_CHARBYTEORDER = 31;     
     SCCOPT_UNICODECALLBACKSTR = 32;     
     SCCOPT_NO_SOURCEFORMATTING = 33;     
     SCCOPT_HTML_FALLBACKFONT = 35;     
     SCCOPT_SIMPLESTYLENAMES = 36;     
     SCCOPT_HTML_SIMPLESTYLENAMES = 36;     
     SCCOPT_WML_DECKSIZE = 37;     
     SCCOPT_HTML_GENBULLETSANDNUMS = 41;     
     SCCOPT_WML_OUTPUTCHARACTERSET = 42;     
  { mapped to SCCOPT_EX_TEMPLATE  }
     SCCOPT_WML_TEMPLATE = 43;     
     SCCOPT_WML_FLAVOR = 44;     
     SCCOPT_WML_LABELFLAGS = 45;     
     SCCOPT_HTML_JAVASCRIPTTABS = 49;     
     SCCOPT_WML_GRAPHICSKIPSIZE = 47;     
     SCCOPT_HTML_PAGESIZE = 50;     
     SCCOPT_WML_COLLAPSEWHITESPACE = 51;     
     SCCOPT_WML_MAXURLLENGTH = 52;     
  {
  |  General graphic options
   }
  { Width in pixels of exported graphic  }
     SCCOPT_GRAPHIC_WIDTH = 4;     
  { Height in pixels of exported graphic  }
     SCCOPT_GRAPHIC_HEIGHT = 5;     
  { Graphic output type  }
     SCCOPT_GRAPHIC_TYPE = 6;     
  { for backward compatibility  }
     SCCOPT_HTML_GRAPHICTYPE = 6;     
  { Flags that specify whether aspect ratio should be  }
     SCCOPT_GRAPHIC_FLAGS = 19;     
  { maintained, and whether the image should be centered.  }
     SCCOPT_GRAPHIC_CROP = 8;     
     SCCOPT_GRAPHIC_XDPI = 25;     
     SCCOPT_GRAPHIC_YDPI = 26;     
  { Output DPI for exported images ... if supplied!  }
     SCCOPT_GRAPHIC_OUTPUTDPI = 34;     
     SCCOPT_GDSF_DEFAULTGRAPHICONERROR = 29;     
  { Maximum size of exported graphics in pixels  }
     SCCOPT_GRAPHIC_SIZELIMIT = 38;     
  { Maximum width of exported graphic  - overrides SCCOPT_GRAPHIC_WIDTH  }
     SCCOPT_GRAPHIC_WIDTHLIMIT = 39;     
  { Maximum height of exported graphic - overrides SCCOPT_GRAPHIC_HEIGHT  }
     SCCOPT_GRAPHIC_HEIGHTLIMIT = 40;     
     SCCOPT_GRAPHIC_PAGENUMBER = 80;     
     SCCOPT_GRAPHIC_LASTPAGE = 81;     
     SCCOPT_GRAPHIC_MULTIPAGE = 82;     
     SCCOPT_GRAPHIC_IMAGEEXPORT = 83;     
     SCCOPT_IMAGEX_TIFFOPTIONS = 84;     
     SCCOPT_ACCEPT_ALT_GRAPHICS = 93;     
     SCCOPT_GRAPHIC_TRANSPARENCYCOLOR = 103;     
     SCCOPT_GRAPHIC_CROPPING = 104;     
     SCCOPT_GRAPHIC_WATERMARK_OPACITY = 113;     
     SCCOPT_GRAPHIC_WATERMARK_POSITION = 114;     
     SCCOPT_GRAPHIC_WATERMARK_SCALETYPE = 115;     
     SCCOPT_GRAPHIC_WATERMARK_SCALEPERCENT = 116;     
     SCCOPT_GRAPHIC_WATERMARK_SCALEHEIGHT = 117;     
     SCCOPT_GRAPHIC_WATERMARK_SCALEWIDTH = 118;     
     SCCOPT_GRAPHIC_WATERMARK_HORIZONTALPOS = 119;     
     SCCOPT_GRAPHIC_WATERMARK_VERTICALPOS = 120;     
     SCCOPT_GRAPHIC_WATERMARK_PATH = 121;     
     SCCOPT_GRAPHIC_WATERMARK_IOTYPE = 122;     
     SCCOPT_GRAPHIC_WATERMARK_FUTURE1 = 123;     
     SCCOPT_GRAPHIC_WATERMARK_FUTURE2 = 124;     
     SCCOPT_GRAPHIC_WATERMARK_FUTURE3 = 125;     
     SCCOPT_GRAPHIC_WATERMARK_FUTURE4 = 126;     
  {  Skip 127 here because it is used elsewhere for an option acutally in use  .   }
     SCCOPT_GRAPHIC_WATERMARK_FUTURE5 = 128;     
  {
  |   General options
   }
  { Fallback format options                                                   }
     SCCOPT_FALLBACKFORMAT = 2;     
  { Sets the unmappable Unicode character                                     }
     SCCOPT_UNMAPPABLECHAR = 98;     
  { Generic bit field for flags applicable to a wide range of products.  ISO formatting of Date/Times for example.   }
     SCCOPT_FORMATFLAGS = SCCID_FORMATFLAGS;
  {
  |   RAINBOW OPTIONS - NB 3/17/97
   }
  { directory location of FCM and PEM Files  }
     SCCOPT_RAINBOW_DATADIRECTORY = 9;
  { Defines which section types get converted  }
     SCCOPT_RAINBOW_CONVERSION_SEL = 10;     
  {
  |   GIF export options
   }
  { Interlaced or non-interlaced GIF output  }
     SCCOPT_GIF_INTERLACED = 17;     
  { Use splash palette for GIF (turn off for quantization)  }
     SCCOPT_GIF_SPLASHPALETTE = 28;     
  {
  |   JPEG export options
   }
  { Quality of JPEG output (0-100) - 100 means high quality,  }
     SCCOPT_JPEG_QUALITY = 18;     
  { less compression.  }
  {
  |   TIF export options
   }
     SCCOPT_TIFF_FORMAT = 20;     
     SCCOPT_TIFF_COMPRESSION = 21;     
     SCCOPT_TIFF_COLORTRANSITION = 22;     
     SCCOPT_TIFF_XRESOLUTION = 23;     
     SCCOPT_TIFF_YRESOLUTION = 24;     
  {
  |   Graphic sizing option
  |   (DWORD) Algorithm to use when sizing graphics. The smoothing
  |   algorithm takes approximately twice as long as the quick
  |   algorithm for color images and 25% longer for grayscale.
   }
     SCCOPT_GRAPHIC_SIZEMETHOD = 30;     
  { for backward compatibility  }
     SCCOPT_GRAPHICSIZEMETHOD = 30;     
     SCCOPT_QUICKTHUMBNAIL = 130;     
  { New Stack Buffer Overrun handler option  }
     SCCOPT_USENEWSBOHANDLER = 108;     
  { Option for setting the disk I/O buffer sizes               }
     SCCOPT_IO_BUFFERSIZE = 112;     
  { Option for extract XML metadata from filter  }
     SCCOPT_EXTRACTXMPMETADATA = 127;     
  {OCR Options }
     SCCOPT_OCR_TECH = 65;     
     SCCOPT_OCR_QUALITY = 66;     
  { Redirect temp file option  }
     SCCOPT_REDIRECTTEMPFILE = 67;     
  { Lotus Notes directory. NSF import filter option.  }     SCCOPT_LOTUSNOTESDIRECTORY = 132;     
  {
  |   General Viewer Technology Options
  |
  |   These are all defined to be the same as their VW equivalents,
  |   but they don't have to be.  I just did this for neatness' sake.
  |
   }
     SCCOPT_RESOURCELIBRARYID = SCCID_RESOURCELIBRARYID;     
     SCCOPT_DEFAULTDISPLAYFONT = SCCID_DEFAULTDISPLAYFONT;     
     SCCOPT_PRINTHEADER = SCCID_PRINTHEADER;     
     SCCOPT_DEFAULTPRINTMARGINS = SCCID_DEFAULTPRINTMARGINS;     
     SCCOPT_DEFAULTPRINTFONT = SCCID_DEFAULTPRINTFONT;     
     SCCOPT_PRINTHEADERFONT = SCCID_PRINTHEADERFONT;     
     SCCOPT_PRINTINFO = SCCID_PRINTINFO;     
     SCCOPT_PRINTJOBNAME = SCCID_PRINTJOBNAME;     
     SCCOPT_WHATTOPRINT = SCCID_WHATTOPRINT;     
     SCCOPT_PRINTSTARTPAGE = SCCID_PRINTSTARTPAGE;     
     SCCOPT_PRINTENDPAGE = SCCID_PRINTENDPAGE;     
     SCCOPT_PRINTCOLLATE = SCCID_PRINTCOLLATE;     
     SCCOPT_PRINTCOPIES = SCCID_PRINTCOPIES;     
     SCCOPT_HAVESELECTION = SCCID_HAVESELECTION;     
     SCCOPT_USEDOCPAGESETTINGS = SCCID_USEDOCPAGESETTINGS;     
  {
  |   Added to avoid namespace collisions with the original SCCOPT_FALLBACKFORMAT.
   }
     SCCOPT_FALLBACKFORMAT_VT = SCCID_FALLBACKFORMAT;     
  {
  |   Added to avoid namespace collisions with the original SCCOPT_UNMAPPABLECHAR.
   }
     SCCOPT_UNMAPPABLECHAR_VT = SCCID_UNMAPPABLECHAR;     
     SCCOPT_DEFAULTINPUTCHARSET = SCCID_DEFAULTINPUTCHARSET;     
  {
  |   Font Options
   }
     SCCOPT_FONTSCALINGFACTOR = SCCID_FONTSCALINGFACTOR;     
     SCCOPT_DISPLAYFONTALIAS = SCCID_DISPLAYFONTALIAS;     
     SCCOPT_PRINTFONTALIAS = SCCID_PRINTFONTALIAS;     
     SCCOPT_ORIGFONTSCALINGFACTOR = SCCID_ORIGFONTSCALINGFACTOR;     
     SCCOPT_FONTFILTER = SCCID_FONTFILTER;     
  {
  |   Document Options
   }
     SCCOPT_WPDISPLAYMODE = SCCID_WPDISPLAYMODE;     
     SCCOPT_WPZOOM = SCCID_WPZOOM;     
     SCCOPT_WPFITMODE = SCCID_WPFITMODE;     
     SCCOPT_WPWRAPTOWINDOW = SCCID_WPWRAPTOWINDOW;     
     SCCOPT_WPPRINTMODE = SCCID_WPPRINTMODE;     
     SCCOPT_WPDISABLEHYPERLINKS = SCCID_WPDISABLEHYPERLINKS;     
     SCCOPT_WPDISABLEPOSITIONALFRAMES = SCCID_WPDISABLEPOSITIONALFRAMES;     
     SCCOPT_WPDISABLEEMAILHEADER = SCCID_WPDISABLEEMAILHEADER;     
  {
  |   Bitmap Options
   }
     SCCOPT_BMPROTATION = SCCID_BMPROTATION;     
     SCCOPT_BMPPRINTASPECT = SCCID_BMPPRINTASPECT;     
     SCCOPT_BMPPRINTBORDER = SCCID_BMPPRINTBORDER;     
     SCCOPT_BMPDITHER = SCCID_BMPDITHER;     
     SCCOPT_BMPFITMODE = SCCID_BMPFITMODE;     
     SCCOPT_BMPZOOM = SCCID_BMPZOOM;     
     SCCOPT_BMPSHOWFULLSCREEN = SCCID_BMPSHOWFULLSCREEN;     
     SCCOPT_BMPZOOMEVENT = SCCID_BMPZOOMEVENT;     
     SCCOPT_BMPDITHERAVAILABLE = SCCID_BMPDITHERAVAILABLE;     
  {
  |   Vector Options
   }
     SCCOPT_VECPRINTASPECT = SCCID_VECPRINTASPECT;     
     SCCOPT_VECPRINTBORDER = SCCID_VECPRINTBORDER;     
     SCCOPT_VECFITMODE = SCCID_VECFITMODE;     
     SCCOPT_VECZOOM = SCCID_VECZOOM;     
     SCCOPT_VECSHOWFULLSCREEN = SCCID_VECSHOWFULLSCREEN;     
     SCCOPT_VECZOOMEVENT = SCCID_VECZOOMEVENT;     
     SCCOPT_VECSHOWBACKGROUND = SCCID_VECSHOWBACKGROUND;     
     SCCOPT_VECPRINTBACKGROUND = SCCID_VECPRINTBACKGROUND;     
     SCCOPT_VECDRAFTMODE = SCCID_VECDRAFTMODE;     
  {
  |   Spreadsheet Options
   }
     SCCOPT_SSSHOWGRIDLINES = SCCID_SSSHOWGRIDLINES;     
     SCCOPT_SSPRINTGRIDLINES = SCCID_SSPRINTGRIDLINES;     
     SCCOPT_SSPRINTHEADINGS = SCCID_SSPRINTHEADINGS;     
     SCCOPT_SSCLIPBOARD = SCCID_SSCLIPBOARD;     
     SCCOPT_SSBADTYPE = SCCID_SSBADTYPE;     
     SCCOPT_SSDRAFTMODE = SCCID_SSDRAFTMODE;     
     SCCOPT_SSPRINTFITTOPAGE = SCCID_SSPRINTFITTOPAGE;     
     SCCOPT_SSPRINTSCALEPERCENT = SCCID_SSPRINTSCALEPERCENT;     
     SCCOPT_SSPRINTSCALEXHIGH = SCCID_SSPRINTSCALEXHIGH;     
     SCCOPT_SSPRINTSCALEXWIDE = SCCID_SSPRINTSCALEXWIDE;     
     SCCOPT_SSPRINTDIRECTION = SCCID_SSPRINTDIRECTION;     
     SCCOPT_SSSHOWHEADINGS = SCCID_SSSHOWHEADINGS;     
     SCCOPT_SS4DIGITDATES = SCCID_SS4DIGITDATES;     
     SCCOPT_SSSHOWHIDDENCELLS = SCCID_SSSHOWHIDDENCELLS;     
  {IX specific SS/DB options }
     SCCOPT_MAXSSDBPAGEWIDTH = 100;     
     SCCOPT_MAXSSDBPAGEHEIGHT = 101;     
  {
  |   Database options
   }
     SCCOPT_DBSHOWGRIDLINES = SCCID_DBSHOWGRIDLINES;     
     SCCOPT_DBPRINTGRIDLINES = SCCID_DBPRINTGRIDLINES;     
     SCCOPT_DBPRINTHEADINGS = SCCID_DBPRINTHEADINGS;     
     SCCOPT_DBCLIPBOARD = SCCID_DBCLIPBOARD;     
     SCCOPT_DBFIELDNAMESTOCLIP = SCCID_DBFIELDNAMESTOCLIP;     
     SCCOPT_DBDRAFTMODE = SCCID_DBDRAFTMODE;     
     SCCOPT_DBPRINTFITTOPAGE = SCCID_DBPRINTFITTOPAGE;     
  {
  |PDF Export Filter options
   }
     SCCOPT_APPLYFILTER = SCCID_APPLYFILTER;     
     SCCOPT_DOLINEARIZATION = SCCID_DOLINEARIZATION;     
  {
  |   Watermark options
   }
     SCCOPT_ENABLEWATERMARK = SCCID_ENABLEWATERMARK;     
     SCCOPT_WATERMARKPOSITION = SCCID_WATERMARKPOSITION;     
     SCCOPT_WATERMARKIO = SCCID_WATERMARKIO;     
  {
  |   Page layout options
   }
     SCCOPT_DEFAULTPAGESIZE = SCCID_DEFAULTPAGESIZE;     
     SCCOPT_FONTDIRECTORY = SCCID_FONTDIRECTORY;     
     SCCOPT_EMBEDFONTS = SCCID_EMBEDFONTS;     
  {
  |   Clipboard Options
   }
     SCCOPT_TOCLIPBOARD = SCCID_TOCLIPBOARD;     
     SCCOPT_DEFAULTCLIPBOARDFONT = SCCID_DEFAULTCLIPBOARDFONT;     
  {
  |   System Options
   }
     SCCOPT_DIALOGFLAGS = SCCID_DIALOGFLAGS;     
     SCCOPT_SYSTEMFLAGS = SCCID_SYSTEMFLAGS;     
     SCCOPT_INTLFLAGS = SCCID_INTLFLAGS;     
     SCCOPT_SCROLLFLAGS = SCCID_SCROLLFLAGS;     
     SCCOPT_OLEFLAGS = SCCID_OLEFLAGS;     
     SCCOPT_FIFLAGS = SCCID_FIFLAGS;     
     SCCOPT_TEMPDIR = SCCID_TEMPDIR;     
     SCCOPT_NATIVEFILTERFLAG = SCCID_NATIVEFILTERFLAG;     
     SCCOPT_TEMPFUNC = SCCID_TEMPFUNC;     
     SCCOPT_DOCUMENTMEMORYMODE = SCCID_DOCUMENTMEMORYMODE;     
     SCCOPT_RENDERING_PREFER_OIT = SCCID_RENDERING_PREFER_OIT;     
  { compression licensing options (to disable patented methods)  }
     SCCOPT_FILTERLZW = SCCID_FILTERLZW;     
     SCCOPT_FILTERJPG = SCCID_FILTERJPG;     
  { Option to turn off pagebreaks... For example, on very large system dumps. Used by the text filter.  }
     SCCOPT_ASCIIFILTERPAGEOFF = SCCID_ASCIIFILTERPAGEOFF;     
  { Excel option to disable putting out blank cells after last valid data cell  }
     SCCOPT_FILTERNOBLANK = SCCID_FILTERNOBLANK;     
  { Option to ignore verification of the PST File password  }
     SCCOPT_IGNORE_PASSWORD = SCCID_IGNORE_PASSWORD;     
  { Mime option to restrict the number of viewable email headers. }
  { depreciating SCCOPT_WPMIMEHEADEROUTPUT, but leaving it for backward compatibility  }
     SCCOPT_WPMIMEHEADEROUTPUT = SCCID_WPMIMEHEADEROUTPUT;     
     SCCOPT_WPEMAILHEADEROUTPUT = SCCID_WPEMAILHEADEROUTPUT;     
  { antialiasing options  }
     SCCOPT_ANTIALIAS = SCCID_ANTIALIAS;     
  { Option to enable output of full TIFF/EXIF properties  }
     SCCOPT_FILTEREXIFFULL = SCCID_FILTEREXIFFULL;     
  {
  |   Archive Flags
   }
     SCCOPT_ARCSAVEEVENT = SCCID_ARCSAVEEVENT;     
     SCCOPT_ARCSORTORDER = SCCID_ARCSORTORDER;     
     SCCOPT_ARCOUTPUTPATH = SCCID_ARCOUTPUTPATH;     
     SCCOPT_ARCFLAGS = SCCID_ARCFLAGS;     
     SCCOPT_ARCSAVETHIS = SCCID_ARCSAVETHIS;     
     SCCOPT_ARCVIEWTHIS = SCCID_ARCVIEWTHIS;     
     SCCOPT_ARCFULLPATH = SCCID_ARCFULLPATH;     
     SCCOPT_ARCRENAME = SCCID_ARCRENAME;     
  {
  |   International Options
   }
     SCCOPT_NUMBERFORMAT = SCCID_NUMBERFORMAT;     
     SCCOPT_DAYNAMES = SCCID_DAYNAMES;     
     SCCOPT_MONTHNAMES = SCCID_MONTHNAMES;     
     SCCOPT_TIMEZONE = SCCID_TIMEZONE;     
  {
  |   Bidirectional Text Options
   }
     SCCOPT_REORDERMETHOD = SCCID_REORDERMETHOD;     
  {
  |   Unix Options file name option
   }
     SCCOPT_GETUNIXOPTIONSFILENAME = SCCID_GETUNIXOPTIONSFILENAME;     
  {
  |   Option for running filter in optimized mode
   }
     SCCOPT_FILTERPERFORMANCE = SCCID_FILTERPERFORMANCE;     
  { This will override filter performance  }
     SCCOPT_ENABLEALLSUBOBJECTS = SCCID_ENABLEALLSUBOBJECTS;     
     SCCOPT_FILTERRESERVED = SCCID_FILTERRESERVED;     
  { 
  |   Option for filter handle xmp metadata 
   }
     SCCOPT_PARSEXMPMETADATA = SCCID_PARSEXMPMETADATA;     
  {
  |   Structures used for options.
   }

  
  {
  |   Struct used by OI Export filters to recieve the default font.
   }
  { Max len of *pName in characters (not bytes)  }

  const
     SCCUT_FONTALIAS_COUNT = $0001;     
     SCCUT_FONTALIAS_ALIASNAME = $0002;     
     SCCUT_FONTALIAS_GETALIASBYID = $0004;     
     SCCUT_FONTALIAS_GETALIASID = $0008;     
     SCCUT_FONTALIAS_REMOVEALIASBYID = $0010;     
     SCCUT_FONTALIAS_REMOVEALIASBYNAME = $0020;     
     SCCUT_FONTALIAS_REMOVEALL = $0040;     
     SCCUT_FONTALIAS_USEDEFAULTS = $0080;     
  { sizeof(SCCUTFONTALIAS)  }
  { ID of the aliasing in the current list of aliases  }
  { set of flags  }
  { original name of the font  }
  { new font name to use in place of original name  }


  { sizeof(SCCVWRESOURCEID)  }
  { 0-5 character ID defining version of the LO DLL w/ unique resources  }

  { dwFlags values  }

  const
     SCCBUFOPT_SET_READBUFSIZE = 1;     
     SCCBUFOPT_SET_MMAPBUFSIZE = 2;     
     SCCBUFOPT_SET_TEMPBUFSIZE = 4;     
  { stock buffer sizes in KB  }
     SCCBUFOPT_DEFAULT_READBUFSIZE = 2;     
     SCCBUFOPT_DEFAULT_MMAPBUFSIZE = 8192;     
     SCCBUFOPT_DEFAULT_TEMPBUFSIZE = 2048;     
     SCCBUFOPT_MIN_READBUFSIZE = 1;     
     SCCBUFOPT_MIN_MMAPBUFSIZE = 0;     
     SCCBUFOPT_MIN_TEMPBUFSIZE = 0;     
     SCCBUFOPT_MAX_READBUFSIZE = $003fffff;     
     SCCBUFOPT_MAX_MMAPBUFSIZE = $003fffff;     
     SCCBUFOPT_MAX_TEMPBUFSIZE = $003fffff;     
  {
  |   General Structures Used in Option Processing
  |
  |   Note:   If you change a struct, the old struct must be kept.
  |           Name it UTSTRUCTNAMEXXX where XXX is the previous release.
  |           Then, create a copy of the UTOPTIONS struct (named UTOPTIONSXXX),
  |           and replace UTSTRUCTNAME with UTSTRUCTNAMEXXX.  This is so that
  |           new versions of the technology can read in old options files.
  |           Also, add new members to structs at the END of the struct!
   }

  { NB! If this number is incremented, a legacy UTOPTIONDELTA structure must be
   * created. Back in 832 it was incremented by 1, so we need to track that. If
   * you need a larger options delta structure, make it *much* larger (200?) so
   * we don't need to mess with this again in the near future.
    }

  { Values for SCCOPTIONINIT.dwOptionType  }

  const
     SCCOPT_DWORD = 0;     
     SCCOPT_STRING = 1;     
  { Flags Option Sets  }
     SCCOPTF_DEFAULTSET = $00000001;     
     SCCOPTF_GLOBALSET = $00000002;     
     SCCOPTF_CHILDSET = $00000004;     
  {** For safeguarding DLL loading via callback ** }

  const
     SCCVW_CALLBACK_FAILURE = 0;     
     SCCVW_CALLBACK_CHECKED = 1;     
     SCCVW_CALLBACK_CHECKED_AND_LOADED = 2;     
  { SCC_PACKED_BY_SCCOP_H  }
{$endif}
  { _SCCOPT_H  }

implementation


end.
