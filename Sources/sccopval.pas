
unit sccopval;
interface

{
  Automatically converted by H2Pas 1.0.0 from D:\work\FPC\ooi\sccopval.tmp.h
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
  






{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { Copyright (c) 2001, 2010, Oracle and/or its affiliates. 
  All rights reserved.  }
  { |	SCC Viewer Technology - Source file
  |
  |	File:           sccopval.h
  |	Module:         SCC Common Options Model
  |	Environment:    Portable
  |	Function:       Common Options Model Structures and Macros
   }
{$ifndef _SCCOPVAL_H}
  { charsets.h contains charset values for the  }
  { DEFAULTINPUTCHARSET option  }

  { SCCOPT_EX_FLAVOR may be one of the following:  }
  { HX  }

  const
     SCCEX_FLAVOR_GENERICHTML = 20;     
     SCCEX_FLAVOR_HTML20 = 21;     
     SCCEX_FLAVOR_HTML30 = 22;     
     SCCEX_FLAVOR_HTML40 = 23;     
     SCCEX_FLAVOR_NS30 = 28;     
     SCCEX_FLAVOR_NS40 = 29;     
     SCCEX_FLAVOR_MS30 = 33;     
     SCCEX_FLAVOR_MS40 = 34;     
  { WX  }
     SCCEX_FLAVOR_WML11 = 36;     
     SCCEX_FLAVOR_TEXT = 37;     
     SCCEX_FLAVOR_XHTMLB1 = 38;     
     SCCEX_FLAVOR_CHTML2 = 39;     
     SCCEX_FLAVOR_HDML = 40;     
     SCCEX_FLAVOR_WCA11 = 41;     
     SCCEX_FLAVOR_AG33PALM = 42;     
     SCCEX_FLAVOR_AG33CE = 43;     
     SCCEX_FLAVOR_WGENERICHTML = 44;     
     SCCEX_FLAVOR_WML11_TBL = 45;     
     SCCEX_FLAVOR_XHTMLB1_NOTBL = 46;     
     SCCEX_FLAVOR_WCA11_NOTBL = 47;     
     SCCEX_FLAVOR_AG33PALM_NOTBL = 48;     
     SCCEX_FLAVOR_AG33CE_NOTBL = 49;     
     SCCEX_FLAVOR_WML20 = 50;     
  { PAGEML  }
     SCCEX_FLAVOR_PAGEML = 51;     
  { SEARCHML  }
     SCCEX_FLAVOR_SEARCHML = 52;     
  { old flavor values for backward compatibility  }
  { renumbered so it doesn't clash with WML - the assumption is  }
     SCCHTML_FLAVOR_20 = 17;     
  { that no one is using this flavor                             }
     SCCHTML_FLAVOR_40 = 2;     
     SCCHTML_FLAVOR_30 = 3;     
     SCCHTML_FLAVOR_99 = 4;     
     SCCHTML_FLAVOR_NS11 = 5;     
     SCCHTML_FLAVOR_NS20 = 6;     
     SCCHTML_FLAVOR_NS30 = 7;     
     SCCHTML_FLAVOR_MO21 = 8;     
     SCCHTML_FLAVOR_MS20 = 9;     
     SCCHTML_FLAVOR_MS30 = 10;     
     SCCHTML_FLAVOR_GENERIC = 11;     
     SCCHTML_FLAVOR_MS15 = 12;     
     SCCHTML_FLAVOR_MS40 = 13;     
     SCCHTML_FLAVOR_MS50 = 14;     
     SCCHTML_FLAVOR_NS40 = 15;     
     SCCHTML_FLAVOR_NS46 = 16;     
     SCCWML_FLAVOR_WML11 = 1;     
     SCCEX_FLAVOR_MO21 = 25;     
     SCCEX_FLAVOR_NS11 = 26;     
     SCCEX_FLAVOR_NS20 = 27;     
     SCCEX_FLAVOR_NS46 = 30;     
     SCCEX_FLAVOR_MS15 = 31;     
     SCCEX_FLAVOR_MS20 = 32;     
     SCCEX_FLAVOR_MS50 = 35;     
  { SCCOPT_EX_COMPLIANCEFLAGS bit flags  }
  { Set to enforce strict DTD compliance in the output we write   }
     SCCEX_CFLAG_STRICTDTD = $0001;     
     SCCHTML_FLAG_STRICT_DTD = $0001;     
  { Set to make HTML well formed                                  }
     SCCEX_CFLAG_WELLFORMED = $0002;     
     SCCHTML_FLAG_WELLFORMED = $0002;     
  { SCCOPT_EX_LABELFLAGS bit flags  }
  { Set to turn off labels for spreadsheet and database cells     }
     SCCEX_LABELFLAGS_SSDBCELLSOFF = $0001;     
     SCCWML_LABELFLAGS_SSDBCELLSOFF = $0001;     
  { Set to label word processing table cells                      }
     SCCEX_LABELFLAGS_WPCELLSON = $0002;     
     SCCWML_LABELFLAGS_WPCELLSON = $0002;     
  { Set to turn off list number/bullet generation (deprecated)    }
     SCCWML_LABELFLAGS_GENBULLETSANDNUMSOFF = $0004;     
  { Bit Fields for default compare  }
     SCCCOMPARE_DEFAULT_DATETIME = $100;     
     SCCCOMPARE_DEFAULT_CHARSET = $200;     
  { Values for SCCOPT_GRAPHIC_OUTPUTDPI  }
  { special value indicates DO NOT resize exported image          }
     SCCGRAPHIC_MAINTAIN_IMAGE_DPI = 0;     
  { Maximum reasonable bit map DPI... for sanity checking images  }
     SCCGRAPHIC_MAX_SANE_BITMAP_DPI = 2400;     
  { Default DPI to use.                                           }
     SCCGRAPHIC_DEFAULT_OUTPUT_DPI = 96;     
  {Turns SCCOPT_GRAPHIC_TRANSPARENCYCOLOR option off }
     SCCGRAPHIC_DEFAULTTRANSPARENCYCOLOR = -(1);     
     SCCGRAPHIC_NOCROPPING = -(1);     
     SCCGRAPHIC_CROPTOCONTENT = 0;     
  { Possible types for the SCCOPT_GRAPHIC_WATERMARK_POSITION option.  }
     SCCGRAPHIC_WATERMARK_POSITION_TOPLEFT = 0;     
     SCCGRAPHIC_WATERMARK_POSITION_TOPMIDDLE = 1;     
     SCCGRAPHIC_WATERMARK_POSITION_TOPRIGHT = 2;     
     SCCGRAPHIC_WATERMARK_POSITION_CENTERLEFT = 3;     
     SCCGRAPHIC_WATERMARK_POSITION_CENTERMIDDLE = 4;     
     SCCGRAPHIC_WATERMARK_POSITION_CENTERRIGHT = 5;     
     SCCGRAPHIC_WATERMARK_POSITION_BOTTOMLEFT = 6;     
     SCCGRAPHIC_WATERMARK_POSITION_BOTTOMMIDDLE = 7;     
     SCCGRAPHIC_WATERMARK_POSITION_BOTTOMRIGHT = 8;     
  { Possible types for the SCCOPT_GRAPHIC_WATERMARK_SCALETYPE option.  }
     SCCGRAPHIC_WATERMARK_SCALETYPE_NONE = 0;     
     SCCGRAPHIC_WATERMARK_SCALETYPE_PERCENT = 1;     
  {Values for watermark positions }
     SCCGRAPHIC_OFFSETFROMCENTER = 1;     
     SCCGRAPHIC_INCHES = 1;     
     SCCGRAPHIC_POINTS = 2;     
     SCCGRAPHIC_CENTIMETERS = 3;     
     SCCGRAPHIC_PICAS = 4;     
  {Values for watermark scaling. }
     SCCGRAPHIC_NOMAP = 0;     
     SCCGRAPHIC_FITTOPAGE = 1;     
     SCCGRAPHIC_SCALE = 2;     
  { Possible values for the SCCOPT_DOCUMENTMEMORYMODE option...  }
  { 4MB   }
     SCCDOCUMENTMEMORYMODE_SMALLEST = 1;     
  { 16MB  <- Default value (current setting, as of 8.2.2)  }
     SCCDOCUMENTMEMORYMODE_SMALL = 2;     
  { 64MB  }
     SCCDOCUMENTMEMORYMODE_MEDIUM = 3;     
  { 256MB <- This was how it was set in 8.2.0  }
     SCCDOCUMENTMEMORYMODE_LARGE = 4;     
  { 1 GB  }
     SCCDOCUMENTMEMORYMODE_LARGEST = 5;     
  { Conversion Selection #defines  - Bit Fields - NB 3/17/97  }
  { Do Text Conversion                                            }
     SCCRAINBOW_CONVERT_TEXT = $0100;     
  { Do Graphics Conversion                                        }
     SCCRAINBOW_CONVERT_GRAPHICS = $0200;     
  { Do Equation conversion                                        }
     SCCRAINBOW_CONVERT_EQUATIONS = $0400;     
  { SCCOPT_GRAPHIC_SIZEMETHOD may be one of the following:  }
  { Use quick algorithm to size graphics                          }
     SCCGRAPHIC_QUICKSIZING = 0;     
  { Use smooth algorithm to size graphics                         }
     SCCGRAPHIC_SMOOTHSIZING = 1;     
  { Use smooth algorithm for grayscale graphics only              }
     SCCGRAPHIC_SMOOTHGRAYSCALESIZING = 2;     
  { SCCOPT_EX_CHARBYTEORDER may be one of the following:  }
  { Use whatever byte-ordering the template is using.             }
     SCCEX_CHARBYTEORDER_TEMPLATE = 0;     
  { If the template is not Unicode, Motorola order will be used   }
  { Use Motorola-ordered Unicode                                  }
     SCCEX_CHARBYTEORDER_BIGENDIAN = 1;     
  { Use Intel-ordered Unicode                                     }
     SCCEX_CHARBYTEORDER_LITTLEENDIAN = 2;     
  { Use whatever byte-ordering the template is using.             }
     SCCOPT_CHARBYTEORDER_TEMPLATE = 0;     
  { If the template is not Unicode, Motorola order will be used   }
  { Use Motorola-ordered Unicode                                  }
     SCCOPT_CHARBYTEORDER_BIGENDIAN = 1;     
  { Use Intel-ordered Unicode                                     }
     SCCOPT_CHARBYTEORDER_LITTLEENDIAN = 2;     
  {  Flags available for SCCOPT_FORMATFLAGS.   }
  {  bit 0:  On if we are to format dates and times according to ISO 8601.   }
     SCCOPT_FLAGS_ISODATETIMES = 1;     
  { SCCOPT_EX_FALLBACKFONT needs to know what the type of string the font name is  }
     SCCEX_FALLBACKFONT_SINGLEBYTE = 0;     
     SCCEX_FALLBACKFONT_DOUBLEBYTE = 1;     
     SCCOPT_EX_FALLBACKFONT_SINGLEBYTE = 0;     
     SCCOPT_EX_FALLBACKFONT_DOUBLEBYTE = 1;     
  { SCCOPT_EX_CALLBACKS bit flags  }
     SCCEX_CALLBACKFLAG_ALLDISABLED = $00000000;     
     SCCEX_CALLBACKFLAG_CREATENEWFILE = $00000001;     
     SCCEX_CALLBACKFLAG_NEWFILEINFO = $00000002;     
     SCCEX_CALLBACKFLAG_PROCESSLINK = $00000004;     
     SCCEX_CALLBACKFLAG_CUSTOMELEMENT = $00000008;     
     SCCEX_CALLBACKFLAG_GRAPHICEXPORTFAILURE = $00000010;     
     SCCEX_CALLBACKFLAG_OEMOUTPUT = $00000020;     
     SCCEX_CALLBACKFLAG_ALTLINK = $00000040;     
     SCCEX_CALLBACKFLAG_ARCHIVE = $00000080;     
  { Add additional callback flags here when needed  }
     SCCEX_CALLBACKFLAG_ALLENABLED = $FFFFFFFF;     
  { Special values for SCCGRAPHIC_xxLIMIT  }
  { No limit - disables the option                                }
     SCCGRAPHIC_NOLIMIT = 0;     
  { SCCOPT_EX_GRIDADVANCE may be one of the following:  }
     SCCEX_GRIDADVANCE_ACROSS = 0;     
     SCCEX_GRIDADVANCE_DOWN = 1;     
  { SCCOPT_EX_FONTFLAGS bit flags  }
  { Don't write out the size attribute                            }
     SCCEX_FONTFLAGS_SUPPRESSSIZE = $00000001;     
  { Don't write out the color attribute                           }
     SCCEX_FONTFLAGS_SUPPRESSCOLOR = $00000002;     
  { Don't write out the font face attribute                       }
     SCCEX_FONTFLAGS_SUPPRESSFACE = $00000004;     
  { SCCOPT_EX_LOGFORMAT values  }
     SCCEX_LOGFORMAT_TEXT = 1;     
     SCCEX_LOGFORMAT_HTML = 2;     
  { Options from the viewer, moved into UT now  }
     SCCUT_WPMODE_DRAFT = 1;     
     SCCUT_WPMODE_NORMAL = 2;     
     SCCUT_WPMODE_PREVIEW = 3;     
     SCCUT_WPFLAGS_EMAILMASK = $00000001;     
  { depreciating SCCUT_WPFLAGS_STANDARDMIMEHEADER*, but leaving it for backward compatibility  }
     SCCUT_WPFLAGS_STANDARDMIMEHEADER = $00000002;     
     SCCUT_WPFLAGS_STANDARDEMAILHEADER = $00000002;     
     SCCUT_SSFLAGS_SHOWGRIDLINES = 1;//BIT0;
     SCCUT_SSFLAGS_PRINTGRIDLINES = 2;//BIT1;
     SCCUT_SSFLAGS_SHOWHEADINGS = 4;//BIT2;
     SCCUT_SSFLAGS_PRINTHEADINGS = 8;//BIT3;
     SCCUT_SSFLAGS_DRAFTMODE = 16;//BIT4;
     SCCUT_SSFLAGS_SHOWHIDDENCELLS = 32;//BIT5;
     SCCUT_CLIPFORMAT_TEXT = $00000001;     
     SCCUT_CLIPFORMAT_RTF = $00000002;     
     SCCUT_CLIPFORMAT_AMI2 = $00000004;     
     SCCUT_CLIPFORMAT_AMI = $00000008;     
     SCCUT_CLIPFORMAT_PROWRITE = $00000010;     
     SCCUT_CLIPFORMAT_WORDSTAR = $00000020;     
     SCCUT_CLIPFORMAT_LEGACY = $00000040;     
     SCCUT_CLIPFORMAT_WINBITMAP = $00000080;     
     SCCUT_CLIPFORMAT_WINDIB = $00000100;     
     SCCUT_CLIPFORMAT_WINMETAFILE = $00000400;     
     SCCUT_CLIPFORMAT_WINPALETTE = $00000200;     
     SCCUT_CLIPFORMAT_MACPICT = $00000800;     
     SCCUT_CLIPFORMAT_OS2METAFILE = $00001000;     
     SCCUT_CLIPFORMAT_OS2BITMAP = $00002000;     
     SCCUT_CLIPFORMAT_OS2PALETTE = $00004000;     
     SCCUT_CLIPFORMAT_EPOCBITMAP = $00008000;     
     SCCUT_CLIPFORMAT_UNICODE = $00010000;     
{$IFDEF _DARWIN_SOURCE}

  const
     SCCUT_CLIPFORMAT_TIFF = $00020000;     
{$endif}
  { _DARWIN_SOURCE  }

  const
     SCCUT_CLIPSUBFORMAT_TABLE = 0;     
     SCCUT_CLIPSUBFORMAT_OPTIMIZEDTABS = 1;     
     SCCUT_CLIPSUBFORMAT_TABS = 2;     
     SCCUT_CLIPINCLUDE_CHARATTR = $0001;     
     SCCUT_CLIPINCLUDE_CHARSIZE = $0002;     
     SCCUT_CLIPINCLUDE_CHARFACE = $0004;     
     SCCUT_CLIPINCLUDE_PARAINDENTALIGN = $0008;     
     SCCUT_CLIPINCLUDE_PARASPACING = $0010;     
     SCCUT_CLIPINCLUDE_TABSTOPS = $0020;     
     SCCUT_CLIPINCLUDE_PAGEBREAKS = $0040;     
     SCCUT_FITMODE_ORIGINAL = 1;     
     SCCUT_FITMODE_WINDOW = 2;     
     SCCUT_FITMODE_WINDOWHEIGHT = 3;     
     SCCUT_FITMODE_WINDOWWIDTH = 4;     
     SCCUT_FITMODE_STRETCHWINDOW = 5;     
     SCCUT_ROTATION_NONE = 0;     
     SCCUT_ROTATION_90 = 90;     
     SCCUT_ROTATION_180 = 180;     
     SCCUT_ROTATION_270 = 270;     
     SCCUT_DITHER_ON = 1;     
     SCCUT_DITHER_OFF = 2;     
     SCCUT_PRINTASPECT_ORIGINAL = 1;     
     SCCUT_PRINTASPECT_STRETCH = 2;     
  { bit 0: 0=metric 1=English  }
     SCCUT_INTLUNITSMASK = $0001;     
     SCCUT_ENGLISHUNITS = $0001;     
  { bit 1: 0=24 hour time 1=12 hour time  }
     SCCUT_INTL24HOURMASK = $0002;     
     SCCUT_12HOURTIME = $0002;     
     SCCUT_PRINT_ALLPAGES = 1;     
     SCCUT_PRINT_SELECTION = 2;     
     SCCUT_PRINT_PAGERANGE = 3;     
     SCCUT_PRINT_CURSECTION = 4;     
     SCCUT_DIALOG_NOHELP = $0001;     
     SCCUT_DIALOG_NOMORE = $0002;     
     SCCUT_DIALOG_NO3D = $0004;     
     SCCUT_DIALOG_NOADDOPTIONSTOMENU = $0008;     
     SCCUT_DIALOG_NOADDDISPLAYTOMENU = $0010;     
     SCCUT_DIALOG_NOADDPRINTTOMENU = $0020;     
     SCCUT_DIALOG_NOADDCLIPBOARDTOMENU = $0040;     
     SCCUT_DIALOG_NOADDDOPRINTTOMENU = $0080;     
     SCCUT_DIALOG_NOADDDOCOPYTOMENU = $0100;     
     SCCUT_DIALOG_NOADDFONTZOOMTOMENU = $0200;     
     SCCUT_SYSTEM_RAWTEXT = $0001;     
     SCCUT_SYSTEM_NOTIMER = $0002;     
     SCCUT_SYSTEM_NOOPTIONSSAVE = $0004;     
     SCCUT_SYSTEM_NOREADAHEAD = $0008;     
     SCCUT_SYSTEM_UNICODE = $0010;     
     SCCUT_SYSTEM_CJKADDON = $0020;     
     SCCUT_SYSTEM_NAMETEMPFILE = $0100;     
     SCCUT_SYSTEM_NDELTMPFILES = $0200;     
     SCCUT_SYSTEM_SEQUENTIALACCESS = $0400;     
     SCCUT_SYSTEM_DISABLESECTIONLIST = $0800;     
     SCCUT_FILTER_LZW_ENABLED = 0;     
     SCCUT_FILTER_LZW_DISABLED = 1;     
     SCCUT_FILTER_JPG_ENABLED = 0;     
     SCCUT_FILTER_JPG_DISABLED = 1;     
     SCCUT_ANTIALIAS_OFF = 0;     
     SCCUT_ANTIALIAS_ALL = 1;     
     SCCUT_EMAILVIEW_ENABLED = 0;     
     SCCUT_EMAILVIEW_DISABLED = 1;     
  { depreciating SCCUT_WP_WPMIMEHEADER*, but leaving it for backward compatibility  }
     SCCUT_WP_MIMEHEADERALL = 0;     
     SCCUT_WP_MIMEHEADERSTANDARD = 1;     
     SCCUT_WP_EMAILHEADERALL = 0;     
     SCCUT_WP_EMAILHEADERSTANDARD = 1;     
  {
  Special option support for CJK add-on system such as NJStar, CStar, TwinBridge
  Functional code are handled in dufont.
  Not documented in Viewer Spec, because we do not publish this one yet.
  rmc 12-23-96
   }
     SCCUT_OLE_ENABLEDRAGDROP = $0001;     
     SCCUT_ARCHIVE_SAVENOP = 0;     
     SCCUT_ARCHIVE_SAVESELECTION = 1;     
     SCCUT_ARCHIVE_SAVEALL = 2;     
     SCCUT_ARCHIVE_SAVETHIS = 3;     
     SCCUT_ARCHIVE_VIEWTHIS = 4;     
     SCCUT_SORT_NONE = 1;     
     SCCUT_SORT_NAME = 2;     
     SCCUT_SORT_SIZE = 3;     
     SCCUT_SORT_DATE = 4;     
     SCCUT_SORT_DESCENDING = $80000000;     
     SCCUT_ARC_RESTOREPATH = $0001;     
     SCCUT_ARC_HAVEPATH = $0002;     
     SCCUT_ARC_PROMPTONCOLLISION = $00000001;     
     SCCUT_ARC_PROMPTILLEGALCHAR = $00000010;     
     SCCUT_ZOOM_NOP = 0;     
     SCCUT_ZOOM_IN = 1;     
     SCCUT_ZOOM_OUT = 2;     
     SCCUT_ZOOM_SELECTION = 3;     
     SCCUT_ZOOM_RESET = 4;     
  { Options for SS print SCCID_SSPRINTFITTOPAGE  }
     SCCUT_SSPRINTFITMODE_NOMAP = 0;     
     SCCUT_SSPRINTFITMODE_FITTOPAGE = 1;     
     SCCUT_SSPRINTFITMODE_FITTOWIDTH = 2;     
     SCCUT_SSPRINTFITMODE_FITTOHEIGHT = 3;     
     SCCUT_SSPRINTFITMODE_SCALE = 4;     
     SCCUT_SSPRINTFITMODE_FITTOPAGES = 5;     
  { Options for SS print SCCID_SSPRINTDIRECTION  }
     SCCUT_SSPRINTDIRECTION_ACROSS = 0;     
     SCCUT_SSPRINTDIRECTION_DOWN = 1;     
  { Options for DB print SCCID_DBPRINTFITTOPAGE  }
     SCCUT_DBPRINTFITMODE_NOMAP = 0;     
     SCCUT_DBPRINTFITMODE_FITTOPAGE = 1;     
     SCCUT_DBPRINTFITMODE_FITTOWIDTH = 2;     
     SCCUT_DBPRINTFITMODE_FITTOHEIGHT = 3;     
  { Currency symbol before the amount     }
     SCCUT_CURRENCY_LEADS = $0001;     
  { Currency symbol after the amount      }
     SCCUT_CURRENCY_TRAILS = $0000;     
  { Space between currency and amount     }
     SCCUT_CURRENCY_SPACE = $0002;     
  { No space between currency and amount  }
     SCCUT_CURRENCY_NOSPACE = $0000;     
     SCCUT_DATEORDER_MDY = 0;     
     SCCUT_DATEORDER_DMY = 1;     
     SCCUT_DATEORDER_YMD = 2;     
     SCCUT_SYSTEM_UNKNOWNYEARS = $0000;     
     SCCUT_SYSTEM_2DIGITYEARS = $0001;     
     SCCUT_SYSTEM_4DIGITYEARS = $0002;     
     SCCUT_USE_SYSTEM_YEARS = $0004;     
  { Flags for SCCID_SCROLLFLAGS  }
     SCCUT_HSCROLL_NEVER = $0001;     
     SCCUT_HSCROLL_SOMETIMES = $0002;     
     SCCUT_HSCROLL_ALWAYS = $0004;     
     SCCUT_VSCROLL_NEVER = $0008;     
     SCCUT_VSCROLL_SOMETIMES = $0010;     
     SCCUT_VSCROLL_ALWAYS = $0020;     
  { Values for use with scrolling messages  }
     SCCSB_TOP = 1;     
     SCCSB_BOTTOM = 2;     
     SCCSB_LINELEFT = 3;     
     SCCSB_LINERIGHT = 4;     
     SCCSB_PAGELEFT = 5;     
     SCCSB_PAGERIGHT = 6;     
     SCCSB_LINEUP = 3;     
     SCCSB_LINEDOWN = 4;     
     SCCSB_PAGEUP = 5;     
     SCCSB_PAGEDOWN = 6;     
     SCCSB_POSITION = 7;     
     SCCSB_ENABLED = 1;     
     SCCSB_DISABLED = 2;     
     SCCUT_REORDER_UNICODE_OFF = $00000000;     
     SCCUT_REORDER_UNICODE_LTOR = $00000002;     
     SCCUT_REORDER_UNICODE_RTOL = $00000003;     
  { hsl 20 January 99 --- added for bidirectional text functionality  }
  { do not set an algorithm at all --- this is the default  }
     SCCUT_REORDER_NOVALUE = SCCUT_REORDER_UNICODE_OFF;     
  { no text is reordered in the display  }
     SCCUT_REORDER_NONE = $00000001;     
  { use the unicode bidirectional algorithm for reordering  }
     SCCUT_REORDER_UNICODE = SCCUT_REORDER_UNICODE_LTOR;     
  { mirror each line individually  }
     SCCUT_REORDER_FULL = $00000004;     
  { SCCOPT_FIFLAGS values  }
     SCCUT_FI_NORMAL = 0;     
     SCCUT_FI_EXTENDEDTEST = 1;     
  { Option values for filter performance  }
     SCCUT_FILTER_NORMALPERFORMANCE = 0;     
     SCCUT_FILTER_OPTIMIZEDFORTEXT = 1;     
     SCCUT_FILTER_NORMALSUBOBJECTS = 0;     
     SCCUT_FILTER_ENABLEALLSUBOBJECTS = 1;     
     SCC_TIMEZONE_USENATIVE = $F000;     
  { time zone settings must be between -96 and 96  }
     SCC_MAX_TIMEZONE = 96;     
     SCCUT_FILTER_EXIFFULL_OFF = 0;     
     SCCUT_FILTER_EXIFFULL_ON = 1;     
  { Option values for SCCOPT_EX_SEARCHML_FLAGS  }
  {
      These flags work in a bitfield.  Bitfield type options have difficulties
      setting default values because the user may want to override some flags,
      but allow others to default.  Therefore, bitfield options should be
      structured in such a way as to be off by default.  Thus, some options
      suppress behavior when turned on, while other options enable behavior when
      turned on.
   }
  { ADD paragraph style name reference to p tags  }
     SCCEX_XML_PSTYLENAMES = $00000001;     
  { ADD run elements that include character style name references  }
     SCCEX_XML_CSTYLENAMES = $00000002;     
  { process embeddings  }
     SCCEX_XML_EMBEDDINGS = $00000004;     
  { Don't generate xml declaration  }
     SCCEX_XML_NO_XML_DECLARATION = $00000008;     
     SCCEX_XML_TEXTCOOKIES = $00000010;     
  {  Suppress processing of document properties in all indexing related products.   }
     SCCEX_IND_SUPPRESSPROPERTIES = $00000020;     
  {  Produce generated text in all indexing related products.   }
     SCCEX_IND_GENERATED = $00000040;     
  {  Suppress processing of attachments.   }
     SCCEX_XML_SUPPRESSATTACHMENTS = $00000080;     
  {  Suppress processing of sub-documents in archives.   }
     SCCEX_XML_SUPPRESSARCHIVESUBDOCS = $00000100;     
  {  Produce only metadata.   }
     SCCEX_METADATAONLY = $00000200;     
  {  Annotation text should be noted as such.   }
     SCCEX_ANNOTATIONS = $00000400;     
  {  Produce URLs for hyperlinks.   }
     SCCEX_PRODUCEURLS = $00000800;     
  {  Produce information allowing for reference of sub-document objects.   }
     SCCEX_XML_PRODUCEOBJECTINFO = $00001000;     
  {  Output sub-document error information.   }
     SCCEX_XML_ENABLEERRORINFO = $00002000;     
  {  Output spreadsheet row and column information.   }
     SCCEX_IND_SS_CELLINFO = $00004000;     
  {  Output spreadsheet formula information.   }
     SCCEX_IND_SS_FORMULAS = $00008000;     
  {  Generate system metadata  }
     SCCEX_IND_GENERATESYSTEMMETADATA = $00010000;     
  {  SearchML character attribute options.  These must match their
      counterparts in CA.   }
     SCCEX_XML_SEARCHML_REVISIONDELETE = $00010000;     
     SCCEX_XML_SEARCHML_BOLD = $00020000;     
     SCCEX_XML_SEARCHML_ITALIC = $00040000;     
     SCCEX_XML_SEARCHML_UNDERLINE = $00080000;     
     SCCEX_XML_SEARCHML_DUNDERLINE = $00100000;     
     SCCEX_XML_SEARCHML_OUTLINE = $00200000;     
     SCCEX_XML_SEARCHML_HIDDEN = $00400000;     
     SCCEX_XML_SEARCHML_STRIKEOUT = $00800000;     
     SCCEX_XML_SEARCHML_SMALLCAPS = $01000000;     
     SCCEX_XML_SEARCHML_ALLCAPS = $02000000;     
     SCCEX_XML_SEARCHML_OCE = $04000000;     
     SCCEX_XML_SEARCHML_REVISIONADD = $10000000;     
  {  SearchML paragraph attribute options.  These must match their
      counterparts in CA.   }
     SCCEX_XML_SEARCHML_SPACING = $00010000;     
     SCCEX_XML_SEARCHML_HEIGHT = $00020000;     
     SCCEX_XML_SEARCHML_LEFTINDENT = $00040000;     
     SCCEX_XML_SEARCHML_RIGHTINDENT = $00080000;     
     SCCEX_XML_SEARCHML_FIRSTINDENT = $00100000;     
  {  SearchML offset tracking options.   }
     SCCEX_XML_SEARCHML_OFFSET_ON = 1;     
     SCCEX_XML_SEARCHML_OFFSET_OFF = 0;     
  {  SearchML options controling production of unmapped text.   }
     SCCEX_XML_NO_UNMAPPEDTEXT = 0;     
     SCCEX_XML_JUST_UNMAPPEDTEXT = 1;     
     SCCEX_XML_BOTH_UNMAPPEDTEXT = 2;     
  { XX  }
     SCCEX_XML_XDM_DTD = 10;     
     SCCEX_XML_XDM_XSD = 11;     
     SCCEX_XML_XDM_NONE = 12;     
  { Option values for SCCOPT_EX_PAGEML_FLAGS  }
  { Include text in PageML's output }
     SCCEX_PAGEML_TEXTOUT = $01;     
  {Option Values for Tiff Options }
  {1 bit black and white }
     SCCGRAPHIC_TIFF1BITBW = 1;     
  {8 bit palette }
     SCCGRAPHIC_TIFF8BITPAL = 2;     
  {24 bit RGB }
     SCCGRAPHIC_TIFF24BITRGB = 3;     
  {No compression }
     SCCGRAPHIC_TIFFCOMPNONE = 1;     
  {Packbits compression }
     SCCGRAPHIC_TIFFCOMPPB = 2;     
  {LZW compression }
     SCCGRAPHIC_TIFFCOMPLZW = 3;     
  {CCITT - 1D }
     SCCGRAPHIC_TIFFCOMP1D = 4;     
  {CCITT - Group 3 Fax }
     SCCGRAPHIC_TIFFCOMPGRP3 = 5;     
  {CCITT - Group 4 Fax }
     SCCGRAPHIC_TIFFCOMPGRP4 = 6;     
  {This will use "big-endian" (Motorola) byte ordering. }
     SCCGRAPHIC_TIFFBOBIGE = 1;     
  {This will use "little-endian" (Intel) byte ordering. }
     SCCGRAPHIC_TIFFBOLITTLEE = 0;     
  {No flags are used. }
     SCCGRAPHIC_TIFFFLAGS_NONE = $00000000;     
  {When this flag is set, the output of a multiple pages from one input document will generate a single file with a separate image for each page converted. }
     SCCGRAPHIC_TIFFFLAGS_ONEFILE = $00000001;     
  {When this flag is set the number of rows per strip is equal to the image height }
     SCCGRAPHIC_TIFFFLAGS_ONESTRIP = $00000002;     
     SCCGRAPHIC_TIFF_FILLORDER2 = 1;     
     SCCGRAPHIC_TIFF_FILLORDER1 = 0;     
     SCCFILTER_TEXT_MASK = 1 shl 0;//BIT0;
     SCCFILTER_LZW_MASK = 1 shl 1;//BIT1;
     SCCFILTER_JPG_MASK = 1 shl 2;//BIT2;
  {added this for excel. When this is set, we don't put out blank cells after the last valid data cell - rf 12/1/03 }
     SCCFILTER_NO_BLANK_CELLS_MASK = 1 shl 3;//BIT3;
  { Added to allow filters to know if they are being invoked as a normal or a support filter.  }
     SCCFILTER_SUPPORT_MASK = 1 shl 4;
  { This will over-ride bit 0 and output all sub-objects  }
     SCCFILTER_ALLSUBOBJ_MASK = 1 shl 5;
  { Added to tell filters when to output full EXIF document properties  }
     SCCFILTER_EXIFFULL = 1 shl 6;
  {Added to let FA know which filter to load if the Extract XMP metadata option is set  }
     SCCFILTER_EXTRACTXMPFILTER_MASK = 1 shl 7;
     SCCFILTER_PARSEXMPFILTER_MASK = 1 shl 8;
  { Added to tell the text filter not to output page breaks  }
     SCCFILTER_NOFF_MASK = 1 shl 9;
  { Added to tell the PST filter to ignore verification of password  }
     SCCFILTER_IGNORE_PASSWORD_MASK = 1 shl 10;
  { Added to communicate with the performance filter   BIT16 - BIT31  jrw  12/17/07  }
     SCCFILTER_RESERVED = $ffff0000;
  { added to put antialias flag in dwMiscFlags -- jm 6/21/05  }
     SCCANTIALIAS_MASK = 1 shl 0;
  { Add the Stack Buffer Overrun flag  jrw  12/5/06  }
     SCCSBO_MASK = 1 shl 1;
  { Option value for the extraction of attachment  }
     SCCEX_EXTRACT_OFF = 1;     
     SCCEX_EXTRACT_CONVERT = 2;     
     SCCEX_EXTRACT_BINARY = 3;     
  { Options value for the SS/DB cell border  }
  { Create SS/DB cell border if they are not provide by the source docoument  }
     SCCEX_SSDBBORDERS_CREATEIFMISSING = 0;     
  { Turn off the cell border  }
     SCCEX_SSDBBORDERS_OFF = 1;     
  { Use the cell botder provide by the source document  }
     SCCEX_SSDBBORDERS_USESOURCE = 2;     
  { Flags for SCCOPT_CCFLEX_FORMATOPTIONS  }
  { Produce a bitmap for every bitmap section  }
     CCFLEX_FORMATOPTIONS_BITMAPASBITMAP = $00000001;     
  { Produce a bitmap for every chart section  }
     CCFLEX_FORMATOPTIONS_CHARTASBITMAP = $00000002;     
  { Produce a bitmap for every presentation section  }
     CCFLEX_FORMATOPTIONS_PRESENTATIONASBITMAP = $00000004;     
  { Produce a bitmap for every vector section  }
     CCFLEX_FORMATOPTIONS_VECTORASBITMAP = $00000008;     
  { Don't produce flexiondoc elements for bitmap sections  }
     CCFLEX_FORMATOPTIONS_NOBITMAPELEMENTS = $00000010;     
  { Don't produce flexiondoc elements for chart sections  }
     CCFLEX_FORMATOPTIONS_NOCHARTELEMENTS = $00000020;     
  { Don't produce flexiondoc elements for presentation sections  }
     CCFLEX_FORMATOPTIONS_NOPRESENTATIONELEMENTS = $00000040;     
  { Don't produce flexiondoc elements for vector sections  }
     CCFLEX_FORMATOPTIONS_NOVECTORELEMENTS = $00000080;     
  { Use ISO 8601 formatting for all date and date/time values  }
     CCFLEX_FORMATOPTIONS_ISODATES = $00000100;     
  { Flatten styles to eliminate need to process 'basedon' attribute  }
     CCFLEX_FORMATOPTIONS_FLATTENSTYLES = $00000200;     
  { Remove references to current point in vector output  }
     CCFLEX_FORMATOPTIONS_REMOVECURRENTPOINT = $00000400;     
  { Replace font groups with references to individual fonts  }
     CCFLEX_FORMATOPTIONS_REMOVEFONTGROUPS = $00000800;     
  { Include text_offset attribute on tx.p and tx.r elements  }
     CCFLEX_FORMATOPTIONS_INCLUDETEXTOFFSETS = $00001000;     
  { Use full path for value of "path" attribute of locator_file  }
     CCFLEX_FORMATOPTIONS_USEFULLFILEPATHS = $00002000;     
  { Place style_tables element in a separate file for more efficient memory usage  }
     CCFLEX_FORMATOPTIONS_SEPARATESTYLETABLES = $00004000;     
  { Include 'delimiter' and 'word-delimiter' special characters  }
     CCFLEX_FORMATOPTIONS_DELIMITERS = $00008000;     
  { Use wp.section elements to delineate column references  }
     CCFLEX_FORMATOPTIONS_OPTIMIZESECTIONS = $00010000;     
  { Character mapping options (one of four options, see below)  }
     CCFLEX_FORMATOPTIONS_CHARMAPPING = $00060000;     
  { Character mapping options for CCFLEX_FORMATOPTIONS_CHARMAPPING  }
  { Default behavior: All text is mapped to unicode, in tx.text elements  }
     CCFLEX_CHARMAPPING_DEFAULT = $00000000;     
  { All text is left in the original character set, in tx.utext elements  }
     CCFLEX_CHARMAPPING_NOMAPPING = $00020000;     
  { Text is mapped to unicode where possble, unmappable text is left in the original character set  }
     CCFLEX_CHARMAPPING_MAPTEXT = $00040000;     
  { Both mapped and unmapped text is included as an alt element containing tx.text and tx.utext  }
     CCFLEX_CHARMAPPING_BOTH = $00060000;     
  { Generate system metadata  }
     CCFLEX_FORMATOPTIONS_GENERATESYSTEMMETADATA = $00080000;     
  { Values for SCCOPT_CCFLEX_UNITS  }
     CCFLEX_LINEARUNITS_DEFAULT = $00;     
  { Centimeters  }
     CCFLEX_LINEARUNITS_CM = $01;     
  { Ciceros  }
     CCFLEX_LINEARUNITS_CO = $02;     
  { Didots  }
     CCFLEX_LINEARUNITS_DD = $03;     
  { Feet  }
     CCFLEX_LINEARUNITS_FT = $04;     
  { Inches  }
     CCFLEX_LINEARUNITS_IN = $05;     
  { Kilometers  }
     CCFLEX_LINEARUNITS_KM = $06;     
  { Meters  }
     CCFLEX_LINEARUNITS_M = $07;     
  { Miles  }
     CCFLEX_LINEARUNITS_MI = $08;     
  { Millimeters  }
     CCFLEX_LINEARUNITS_MM = $09;     
  { Picas  }
     CCFLEX_LINEARUNITS_PC = $0A;     
  { Points  }
     CCFLEX_LINEARUNITS_PT = $0B;     
  { Twips  }
     CCFLEX_LINEARUNITS_TP = $0C;     
  { Yards  }
     CCFLEX_LINEARUNITS_YD = $0D;     
  { Values for SCCOPT_CCOD_GRAPHICOPTIONS  }
  { Standard behavior: Supported graphic types are extracted, others are converted  }
     CCOD_GRAPHICOPTIONS_STANDARD = 0;     
  { No graphics are extracted or converted  }
     CCOD_GRAPHICOPTIONS_NONE = 1;     
  { Supported graphic types are extracted, others are ignored  }
     CCOD_GRAPHICOPTIONS_EXTRACT = 2;     
  { All graphics are converted  }
     CCOD_GRAPHICOPTIONS_CONVERT = 3;     
  {OCR STUFF }
     OCR_TECH_NONE = 0;     
     OCR_TECH_NUANCE = 1;     
     OCR_TECH_OTHER = 2;     
     OCR_QUAL_FAST = 0;     
     OCR_QUAL_SLOW = 1;     
     OCR_QUAL_BALANCED = 2;     
{$endif}
  { _SCCOPVAL_H  }

implementation


end.
