unit vtchars;
interface
uses scctype;
{
  Automatically converted by H2Pas 1.0.0 from D:\work\FPC\ooi\vtchars.tmp.h
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
  | Outside In Viewer Technology - Include
  |
  | Include:       VTCHARS.H
  | Environment:   Portable
  | Function:      Unified character sets for
  |                Outside In Technology
   }

const
   SCC_PACK_SET = 1;
   SCC_PACKED_BY_VWDEFS_H = 1;

  {
  | Character set is a DWORD where the high word defines the general
  | character set and the high byte of the low word is reserved for flags
  | and the low byte is the page within the character set.
  |  -----------------------------------------------
  | | Char Set Identifier  |   Flags   |Page in Set |
  |  -----------------------------------------------
   }
  {
  |   F l a g s
  |
  |   NOTE: The SO_UNICODEFONT flag is used to indicate a TrueType font that uses the unicode encoding.  It is NOT part of the
  |         character set itself, and thus is masked off when we use it in the character mapping code.
  |
  |         SO_UNICODEFONT32 indicates a UTF-32 font which we don't currently support.
   }

  const
     SO_CSSINGLEPAGE = $00000100;
     SO_WORDPERFECTFONT = $00000200;
     SO_UNICODEFONT = $00000400;
     SO_UNICODEFONT32 = $00000800;
     SO_ANSIMASK = $10000000;
     SO_FONTMASK = $20000000;
     SO_EBCDICMASK = $40000000;
     SO_MACMASK = $80000000;
     SO_MAPPROBFLAG = $00008000;
  {
  | This one is for some of the unix dbcs charsets. Since we ran out of upper nibble mask bits, this one must be tested differently than
  | a regular mask.  Also, this relies on the fact that as of now there are no other charsets that have an F in that location, so don't make
  | one that does in the future!!
   }
     SO_UNIXUNMASK = $0F000000;     
     SO_CHARFAMILYMASK = $000F0000;     
  {
  |   S p e c i a l
   }
     SO_DEFAULTCHARSET = 0;     
  {
  |   U n k n o w n s
   }
  { 0x00010100  }
     SO_PCUNKNOWN = $00010000 or SO_CSSINGLEPAGE;     
     SO_PC = SO_PCUNKNOWN;     
  { 0x00020100  }
     SO_MACUNKNOWN = $00020000 or SO_CSSINGLEPAGE;     
     SO_MAC = SO_MACUNKNOWN;     
  { 0x00030100  }
     SO_ANSIUNKNOWN = $00030000 or SO_CSSINGLEPAGE;     
     SO_WINDOWS = SO_ANSIUNKNOWN;     
     SO_DBCSUNKNOWN = $00050000;     
     SO_DBCS = SO_DBCSUNKNOWN;     
     SO_WPF5 = $00060000;     
  { WordPerfect changed some pages of their character set between 5 & 6  }
     SO_WPF6 = $00070000;     
     SO_ISO8859 = $00080000;     
  { For Lotus 123.  }
     SO_LOTUSMBCS = $00090000;     
     SO_HTMLSBCS = $000A0000;     
     SO_HTMLDBCS = $000B0000;     
  { For BIDI  }
     SO_OLD_HEBREW = $000C0000;

  {
  |   U N I X  DBCS PAGES, these are all now stored in some form in the bin file instead of being created algorithmically.
   }

  { 0x0F0C0000 for jis character sets, used on unix  jis 0208-1990              }
  { was #define dname def_expr }
  SO_JIS = SO_UNIXUNMASK or ((VTDWORD($0C)) shl 16);
      { return type might be wrong }

  { 0x0F0D0000 euc for jis character sets, it's just jis0208-1990|0x8080        }
  SO_EUC_JP     = SO_UNIXUNMASK or ((VTDWORD($0D)) shl 16);

  { 0x0F030000 chinese traditional character set cns11643-1986, plane one       }
  SO_CNS11643_1 = SO_UNIXUNMASK or ((VTDWORD(3)) shl 16);

  { 0x0F070000 plane 1 of cns11643 in euc , it's just |x8080  -kef              }
  SO_EUC_CNS_1  = SO_UNIXUNMASK or ((VTDWORD(7)) shl 16);

  { 0x0F040000 chinese traditional character set cns11643-1986, plane 2         }
  SO_CNS11643_2 = SO_UNIXUNMASK or ((VTDWORD(4)) shl 16);

  { 0x0F080000 plane 2 of cns11643 in euc, it's just |x8080 -kef                }
  SO_EUC_CNS_2  = SO_UNIXUNMASK or ((VTDWORD(8)) shl 16);

  { 0x0F060000 korean standard ksc1987-1992                                     }
  SO_KSC1987    = SO_UNIXUNMASK or ((VTDWORD(6)) shl 16);

  { 0x0F050000 simplified chinese GB2312-80                                     }
  SO_GB2312     = SO_UNIXUNMASK or ((VTDWORD(5)) shl 16);

  { 0x0F0C0000 JIS C 6226-1978 - an early version of JIS X 0208-1990  }

  const
     SO_JIS1978 = SO_JIS;     
  { 0x0F0C0000 JIS X 0208-1983 - an early version of JIS X 0208-1990  }
     SO_JIS1983 = SO_JIS;     
  { 0x0F0C0000 JIS X 0208-1990                                        }
     SO_JIS1990 = SO_JIS;

//  function SOMAKEWPF5CS(wCodePage : longint) : longint;
//  function SOMAKEWPF6CS(wCodePage : longint) : longint;
//  function SOMAKELOTUSMBCS(wCodePage : longint) : longint;

  { 0x0009010 + wCodePage  }
  {
  |   EBCDIC pages (and some other IBM pages)
   }
const
  SO_EBCDIC37    = (SO_EBCDICMASK or ((VTDWORD(37)) shl 16)) or SO_CSSINGLEPAGE;
  SO_EBCDIC273   = (SO_EBCDICMASK or ((VTDWORD(237)) shl 16)) or SO_CSSINGLEPAGE;
  SO_EBCDIC274   = (SO_EBCDICMASK or ((VTDWORD(274)) shl 16)) or SO_CSSINGLEPAGE;
  SO_EBCDIC277   = (SO_EBCDICMASK or ((VTDWORD(277)) shl 16)) or SO_CSSINGLEPAGE;
  SO_EBCDIC278   = (SO_EBCDICMASK or ((VTDWORD(278)) shl 16)) or SO_CSSINGLEPAGE;
  SO_EBCDIC280   = (SO_EBCDICMASK or ((VTDWORD(280)) shl 16)) or SO_CSSINGLEPAGE;
  SO_EBCDIC282   = (SO_EBCDICMASK or ((VTDWORD(282)) shl 16)) or SO_CSSINGLEPAGE;
  SO_EBCDIC284   = (SO_EBCDICMASK or ((VTDWORD(284)) shl 16)) or SO_CSSINGLEPAGE;
  SO_EBCDIC285   = (SO_EBCDICMASK or ((VTDWORD(285)) shl 16)) or SO_CSSINGLEPAGE;
  SO_EBCDIC297   = (SO_EBCDICMASK or ((VTDWORD(297)) shl 16)) or SO_CSSINGLEPAGE;
  SO_EBCDIC500   = (SO_EBCDICMASK or ((VTDWORD(500)) shl 16)) or SO_CSSINGLEPAGE;
  SO_EBCDIC870   = (SO_EBCDICMASK or ((VTDWORD(870)) shl 16)) or SO_CSSINGLEPAGE;
  SO_EBCDIC871   = (SO_EBCDICMASK or ((VTDWORD(871)) shl 16)) or SO_CSSINGLEPAGE;
  SO_EBCDIC1026  = (SO_EBCDICMASK or ((VTDWORD(1026)) shl 16)) or SO_CSSINGLEPAGE;
  SO_KOI8_R      = (SO_EBCDICMASK or ((VTDWORD(878)) shl 16)) or SO_CSSINGLEPAGE;
  SO_KOI8_U      = (SO_EBCDICMASK or ((VTDWORD(1168)) shl 16)) or SO_CSSINGLEPAGE;

  { 0x40250100 This is so the DCA WIN.3f filter compile  }

  const
     SO_DCA = SO_EBCDIC37;
  {
  |   ANSI pages
   }
  { Some of the ANSI encodings below are actually OEM (DOS) encodings  }

  { 0x10000100 Ansi 0 is 7-Bit ASCII  }
  SO_ANSI0        = (SO_ANSIMASK or ((VTDWORD(0)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ASCII = SO_ANSI0;

  { 0x11B50100 United States  }
  SO_ANSI437      = (SO_ANSIMASK or ((VTDWORD(437)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI708      = (SO_ANSIMASK or ((VTDWORD(708)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI709      = (SO_ANSIMASK or ((VTDWORD(709)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI710      = (SO_ANSIMASK or ((VTDWORD(710)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI720      = (SO_ANSIMASK or ((VTDWORD(720)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI737      = (SO_ANSIMASK or ((VTDWORD(737)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI775      = (SO_ANSIMASK or ((VTDWORD(775)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI850      = (SO_ANSIMASK or ((VTDWORD(850)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI852      = (SO_ANSIMASK or ((VTDWORD(852)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI855      = (SO_ANSIMASK or ((VTDWORD(855)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI857      = (SO_ANSIMASK or ((VTDWORD(857)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI860      = (SO_ANSIMASK or ((VTDWORD(860)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI861      = (SO_ANSIMASK or ((VTDWORD(861)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI862      = (SO_ANSIMASK or ((VTDWORD(862)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI863      = (SO_ANSIMASK or ((VTDWORD(863)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI864      = (SO_ANSIMASK or ((VTDWORD(864)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI865      = (SO_ANSIMASK or ((VTDWORD(865)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI866      = (SO_ANSIMASK or ((VTDWORD(866)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI869      = (SO_ANSIMASK or ((VTDWORD(869)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI874      = (SO_ANSIMASK or ((VTDWORD(874)) shl 16)) or SO_CSSINGLEPAGE;

  SO_ANSI1040     = (SO_ANSIMASK or ((VTDWORD(1040)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI1041     = (SO_ANSIMASK or ((VTDWORD(1041)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI1043     = (SO_ANSIMASK or ((VTDWORD(1043)) shl 16)) or SO_CSSINGLEPAGE;
  SO_THAINOVELL   = (SO_ANSIMASK or ((VTDWORD(1044)) shl 16)) or SO_CSSINGLEPAGE;

  SO_ANSI1250     = (SO_ANSIMASK or ((VTDWORD(1250)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI1251     = (SO_ANSIMASK or ((VTDWORD(1251)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI1252     = (SO_ANSIMASK or ((VTDWORD(1252)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI1253     = (SO_ANSIMASK or ((VTDWORD(1253)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI1254     = (SO_ANSIMASK or ((VTDWORD(1254)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI1255     = (SO_ANSIMASK or ((VTDWORD(1255)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI1256     = (SO_ANSIMASK or ((VTDWORD(1256)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI1257     = (SO_ANSIMASK or ((VTDWORD(1257)) shl 16)) or SO_CSSINGLEPAGE;
  SO_ANSI1258     = (SO_ANSIMASK or ((VTDWORD(1258)) shl 16)) or SO_CSSINGLEPAGE;

  SO_ANSI932          = SO_ANSIMASK or ((VTDWORD(932)) shl 16);
  SO_ANSI936          = SO_ANSIMASK or ((VTDWORD(936)) shl 16);
  SO_ANSI942          = SO_ANSIMASK or ((VTDWORD(942)) shl 16);
  SO_ANSI944          = SO_ANSIMASK or ((VTDWORD(944)) shl 16);
  SO_ANSI948          = SO_ANSIMASK or ((VTDWORD(948)) shl 16);
  SO_ANSI949          = SO_ANSIMASK or ((VTDWORD(949)) shl 16);
  SO_ANSI950          = SO_ANSIMASK or ((VTDWORD(950)) shl 16);
  SO_ANSI1200         = SO_ANSIMASK or ((VTDWORD(1200)) shl 16);
  SO_HWP_HANGUL       = SO_ANSIMASK or ((VTDWORD(1260)) shl 16);
  SO_ANSI1361         = SO_ANSIMASK or ((VTDWORD(1361)) shl 16);
  SO_PDFCID_JAPAN1_H  = SO_ANSIMASK or ((VTDWORD(2001)) shl 16);
  SO_PDFCID_JAPAN1_V  = SO_ANSIMASK or ((VTDWORD(2002)) shl 16);
  SO_PDFCID_JAPAN2    = SO_ANSIMASK or ((VTDWORD(2003)) shl 16);
  SO_PDFCID_GB1       = SO_ANSIMASK or ((VTDWORD(2004)) shl 16);
  SO_PDFCID_CNS_H     = SO_ANSIMASK or ((VTDWORD(2005)) shl 16);
  SO_PDFCID_CNS_V     = SO_ANSIMASK or ((VTDWORD(2006)) shl 16);
  SO_PDFCID_KOREA1    = SO_ANSIMASK or ((VTDWORD(2007)) shl 16);

  SO_UNICODE = SO_ANSI1200;

  {
   |
   | These two are for use with the default input character set feature, to allow support for unicode files
   | without an appropriate BOM.
   |
  }
  { 0x14B00001  }
  { 0x14B00002  }
  SO_BIGENDIAN_UNICODE    = SO_UNICODE or VTDWORD(1);
  SO_LITTLEENDIAN_UNICODE = SO_UNICODE or VTDWORD(2);

  {
  |   ISO pages
  }
  { 0x00080101 Latin-1 - subset of ANSI 1252  }
  { 0x00080102 Latin-2                        }
  { 0x00080103 Latin-3                        }
  { 0x00080104 Latin-4                        }
  { 0x00080105 Cyrillic                       }
  { 0x00080106 Arabic                         }
  { 0x00080107 Greek - subset of ANSI 1253    }
  { 0x00080108 Hebrew                         }
  { 0x00080109 Turkish                        }
  { 0x0008010B Part 11: Latin/Thai alphabet   }
  { 0x0008010D Latin-7                        }
  { 0x0008010F Latin-9                        }

  SO_ISO8859_1  =(SO_ISO8859 or SO_CSSINGLEPAGE) or (VTDWORD(1));
  SO_ISO8859_2  =(SO_ISO8859 or SO_CSSINGLEPAGE) or (VTDWORD(2));
  SO_ISO8859_3  =(SO_ISO8859 or SO_CSSINGLEPAGE) or (VTDWORD(3));
  SO_ISO8859_4  =(SO_ISO8859 or SO_CSSINGLEPAGE) or (VTDWORD(4));
  SO_ISO8859_5  =(SO_ISO8859 or SO_CSSINGLEPAGE) or (VTDWORD(5));
  SO_ISO8859_6  =(SO_ISO8859 or SO_CSSINGLEPAGE) or (VTDWORD(6));
  SO_ISO8859_7  =(SO_ISO8859 or SO_CSSINGLEPAGE) or (VTDWORD(7));
  SO_ISO8859_8  =(SO_ISO8859 or SO_CSSINGLEPAGE) or (VTDWORD(8));
  SO_ISO8859_9  =(SO_ISO8859 or SO_CSSINGLEPAGE) or (VTDWORD(9));
  SO_ISO8859_11 =(SO_ISO8859 or SO_CSSINGLEPAGE) or (VTDWORD(11));
  SO_ISO8859_13 =(SO_ISO8859 or SO_CSSINGLEPAGE) or (VTDWORD(13));
  SO_ISO8859_15 =(SO_ISO8859 or SO_CSSINGLEPAGE) or (VTDWORD(15));

  {
  |   Mac pages
  }
  SO_MACROMAN           =(SO_MACMASK or ((VTDWORD(0))  shl 16)) or SO_CSSINGLEPAGE;
  SO_MACROMANCROATIAN   =(SO_MACMASK or ((VTDWORD(1))  shl 16)) or SO_CSSINGLEPAGE;
  SO_MACROMANROMANIAN   =(SO_MACMASK or ((VTDWORD(2))  shl 16)) or SO_CSSINGLEPAGE;
  SO_MACROMANTURKISH    =(SO_MACMASK or ((VTDWORD(3))  shl 16)) or SO_CSSINGLEPAGE;
  SO_MACROMANICELANDIC  =(SO_MACMASK or ((VTDWORD(4))  shl 16)) or SO_CSSINGLEPAGE;
  SO_MACCYRILLIC        =(SO_MACMASK or ((VTDWORD(5))  shl 16)) or SO_CSSINGLEPAGE;
  SO_MACGREEK           =(SO_MACMASK or ((VTDWORD(6))  shl 16)) or SO_CSSINGLEPAGE;
  SO_MACLATIN2          =(SO_MACMASK or ((VTDWORD(7))  shl 16)) or SO_CSSINGLEPAGE;
  SO_GREEK2             =(SO_MACMASK or ((VTDWORD(8))  shl 16)) or SO_CSSINGLEPAGE;
  SO_HEBREW             =(SO_MACMASK or ((VTDWORD(9))  shl 16)) or SO_CSSINGLEPAGE;
  SO_ARABIC             =(SO_MACMASK or ((VTDWORD(10)) shl 16)) or SO_CSSINGLEPAGE;
  SO_MACJIS             = SO_MACMASK or ((VTDWORD(11)) shl 16);

  {
  |   Font specific pages
   }
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }

  SO_WINSYMBOL                 = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(0 )) shl 16);
  SO_MACSYMBOL                 = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(1 )) shl 16);
  SO_PLACEHOLDER               = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(2 )) shl 16);
  SO_MSLINEDRAW                = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(3 )) shl 16);
  SO_ZAPFDINGBATS              = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(4 )) shl 16);
  SO_WPARABIC                  = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(5 )) shl 16);
  SO_WPARABICSCRIPT            = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(6 )) shl 16);
  SO_WPBOXDRAWING              = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(7 )) shl 16);
  SO_WPCYRILLICA               = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(8 )) shl 16);
  SO_WPCYRILLICB               = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(9 )) shl 16);
  SO_WPGREEK                   = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(10)) shl 16);
  SO_WPHEBREWDAVID             = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(11)) shl 16);
  SO_WPICONICSYMBOLSA          = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(12)) shl 16);
  SO_WPICONICSYMBOLSB          = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(13)) shl 16);
  SO_WPJAPANESE                = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(14)) shl 16);
  SO_WPMATHA                   = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(15)) shl 16);
  SO_WPMATHB                   = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(16)) shl 16);
  SO_WPEXTENDEDMATHA           = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(17)) shl 16);
  SO_WPEXTENDEDMATHB           = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(18)) shl 16);
  SO_WPMULTINATIONALA          = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(19)) shl 16);
  SO_WPMULTINATIONALB          = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(20)) shl 16);
  SO_WPOVERFLOWSET             = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(21)) shl 16);
  SO_WPPHONETIC                = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(22)) shl 16);
  SO_WPTYPOGRAPHIC             = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(23)) shl 16);
  SO_MTEXTRA                   = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(24)) shl 16);
  SO_BOOKSHELFSYMBOL3          = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(25)) shl 16);
  SO_HPROMAN8                  = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(26)) shl 16);
  SO_MICROSOFTOFFICEPRIVATEUSE = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(27)) shl 16);
  SO_WINWEBDINGS               = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(28)) shl 16);
  SO_WINWINGDINGS              = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(29)) shl 16);
  SO_WINWINGDINGS2             = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(30)) shl 16);
  SO_WINWINGDINGS3             = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(31)) shl 16);
  SO_BOTANICAL                 = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(32)) shl 16);
  SO_MONOTYPESORTS             = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(33)) shl 16);
  SO_BOOKSHELFSYMBOL7          = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(34)) shl 16);
  SO_GENERICSYMBOL             = (SO_FONTMASK or SO_CSSINGLEPAGE) or ((VTDWORD(35)) shl 16);
 { some const nOTE:  No corresponding entry in cmmap000.bin  }

  {
  | WARNING:
  | The above SO_ charset definitions cannot be changed.  Character Map bin file is created
  | based on this order, additional charsets may only be added at the end
   }
  {
  |   Bidi mappings
   }
  SO_BIDI_OLDCODE =  (SO_OLD_HEBREW or SO_CSSINGLEPAGE) or (VTDWORD(1));
  SO_BIDI_PC8     =  (SO_OLD_HEBREW or SO_CSSINGLEPAGE) or (VTDWORD(2));
  SO_BIDI_E0      =  (SO_OLD_HEBREW or SO_CSSINGLEPAGE) or (VTDWORD(3));

  {
  | HTML Pages
   }
  { 0x000A0101 Russian - koi8-r is currently not an international standard        }
  { 0x000A0102 JIS X 0201-1976 - very similar to 7 bit ASCII; the "first side"    }
  { 0x000A0103 Very similar to 7 bit, no contol char ASCII                        }
  { 0x000A0104 JIS X 0201-1976 - Kana characters (half-width); the "second side"  }
  { 0x000B0006 CSN11643.1992-3 - traditional Chinese, plane 3  }
  { 0x000B0007 CSN11643.1992-4 - traditional Chinese, plane 4  }
  { 0x000B0008 CSN11643.1992-5 - traditional Chinese, plane 5  }
  { 0x000B0009 CSN11643.1992-6 - traditional Chinese, plane 6  }
  { 0x000B000A CSN11643.1992-7 - traditional Chinese, plane 7  }
   SO_HTMLKOI8    = (SO_HTMLSBCS or SO_CSSINGLEPAGE) or (VTDWORD(1));
   SO_JIS_ROMAN   = (SO_HTMLSBCS or SO_CSSINGLEPAGE) or (VTDWORD(2));
   SO_ISO646      = (SO_HTMLSBCS or SO_CSSINGLEPAGE) or (VTDWORD(3));
   SO_JIS_KANA    = (SO_HTMLSBCS or SO_CSSINGLEPAGE) or (VTDWORD(4));

   SO_CNS11643_3  =  SO_HTMLDBCS or (VTDWORD(6));
   SO_CNS11643_4  =  SO_HTMLDBCS or (VTDWORD(7));
   SO_CNS11643_5  =  SO_HTMLDBCS or (VTDWORD(8));
   SO_CNS11643_6  =  SO_HTMLDBCS or (VTDWORD(9));
   SO_CNS11643_7  =  SO_HTMLDBCS or (VTDWORD(10));

  {
  | UTF-8 support is only used by HTML Export right now, so the definition of it doesn't
  | really matter.  If the VT ever attempts to handle UTF-8 input, this #define may need to change
  | but we'll worry about it then. And UTF-7 by the MIME filter.  SO_ISO2022JP is an encoding that
  | was added for the the MSG and HTML filters.  It is not an actual character set.
   }
   SO_UTF8        =  SO_HTMLDBCS or (VTDWORD(11));
   SO_UTF7        =  SO_HTMLDBCS or (VTDWORD(12));
   SO_ISO2022JP   =  SO_HTMLDBCS or (VTDWORD(13));

  {
   | The following are Unicode ranges as defined in the OpenType font specification document.  The ranges are defined
   | as part of the OS/2 table in OpenType/TrueType fonts.
    }
const
  SO_UR_BASIC_LATIN		                             	= (SO_MACMASK or ((VTDWORD($0100)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_LATIN_1_SUPPLEMENT		                     	= (SO_MACMASK or ((VTDWORD($0101)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_LATIN_EXTENDED_A		                       	= (SO_MACMASK or ((VTDWORD($0102)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_LATIN_EXTENDED_B	  	                     	= (SO_MACMASK or ((VTDWORD($0103)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_IPA_EXTENSIONS		                         	= (SO_MACMASK or ((VTDWORD($0104)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_PHONETIC_EXTENSIONS		                     	= (SO_MACMASK or ((VTDWORD($0105)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_PHONETIC_EXTENSIONS_SUPPLEMENT	        		= (SO_MACMASK or ((VTDWORD($0106)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_SPACING_MODIFIER_LETTERS      	        		= (SO_MACMASK or ((VTDWORD($0107)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_MODIFIER_TONE_LETTERS			                  = (SO_MACMASK or ((VTDWORD($0108)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_COMBINING_DIACRITICAL_MARKS			            = (SO_MACMASK or ((VTDWORD($0109)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_COMBINING_DIACRITICAL_MARKS_SUPPLEMENT			= (SO_MACMASK or ((VTDWORD($010A)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_GREEK_AND_COPTIC			                      = (SO_MACMASK or ((VTDWORD($010B)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_COPTIC			                                = (SO_MACMASK or ((VTDWORD($010C)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_CYRILLIC			                              = (SO_MACMASK or ((VTDWORD($010D)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_CYRILLIC_SUPPLEMENT			                    = (SO_MACMASK or ((VTDWORD($010E)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_CYRILLIC_EXTENDED_A			                    = (SO_MACMASK or ((VTDWORD($010F)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_CYRILLIC_EXTENDED_B			                    = (SO_MACMASK or ((VTDWORD($0110)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_ARMENIAN		          	                    = (SO_MACMASK or ((VTDWORD($0111)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_HEBREW			                                = (SO_MACMASK or ((VTDWORD($0112)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_VAI			                                    =  SO_MACMASK or ((VTDWORD($0113)) shl 16);
  SO_UR_ARABIC			                                = (SO_MACMASK or ((VTDWORD($0114)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_ARABIC_SUPPLEMENT		  	                    = (SO_MACMASK or ((VTDWORD($0115)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_NKO			                                    = (SO_MACMASK or ((VTDWORD($0116)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_DEVANAGARI        			                    = (SO_MACMASK or ((VTDWORD($0117)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_BENGALI		            	                    = (SO_MACMASK or ((VTDWORD($0118)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_GURMUKHI	        		                      = (SO_MACMASK or ((VTDWORD($0119)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_GUJARATI	        		                      = (SO_MACMASK or ((VTDWORD($011A)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_ORIYA			                                  = (SO_MACMASK or ((VTDWORD($011B)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_TAMIL			                                  = (SO_MACMASK or ((VTDWORD($011C)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_TELUGU		            	                    = (SO_MACMASK or ((VTDWORD($011D)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_KANNADA		            	                    = (SO_MACMASK or ((VTDWORD($011E)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_MALAYALAM	          		                    = (SO_MACMASK or ((VTDWORD($011F)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_THAI			                                  = (SO_MACMASK or ((VTDWORD($0120)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_LAO			                                    = (SO_MACMASK or ((VTDWORD($0121)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_GEORGIAN	          		                    = (SO_MACMASK or ((VTDWORD($0122)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_GEORGIAN_SUPPLEMENT			                    = (SO_MACMASK or ((VTDWORD($0123)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_BALINESE	          		                    = (SO_MACMASK or ((VTDWORD($0124)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_HANGUL_JAMO			                            = (SO_MACMASK or ((VTDWORD($0125)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_LATIN_EXTENDED_ADDITIONAL              			= (SO_MACMASK or ((VTDWORD($0126)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_LATIN_EXTENDED_C			                      = (SO_MACMASK or ((VTDWORD($0127)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_LATIN_EXTENDED_D			                      = (SO_MACMASK or ((VTDWORD($0128)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_GREEK_EXTENDED			                        = (SO_MACMASK or ((VTDWORD($0129)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_GENERAL_PUNCTUATION			                    = (SO_MACMASK or ((VTDWORD($012A)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_SUPPLEMENTAL_PUNCTUATION               			= (SO_MACMASK or ((VTDWORD($012B)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_SUPERSCRIPTS_AND_SUBSCRIPTS			            = (SO_MACMASK or ((VTDWORD($012C)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_CURRENCY_SYMBOLS		                      	= (SO_MACMASK or ((VTDWORD($012D)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_COMBINING_DIACRITICAL_MARKS_FOR_SYMBOLS			= (SO_MACMASK or ((VTDWORD($012E)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_LETTERLIKE_SYMBOLS  			                  = (SO_MACMASK or ((VTDWORD($012F)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_NUMBER_FORMS			                          = (SO_MACMASK or ((VTDWORD($0130)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_ARROWS			                                = (SO_MACMASK or ((VTDWORD($0131)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_SUPPLEMENTAL_ARROWS_A			                  = (SO_MACMASK or ((VTDWORD($0132)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_SUPPLEMENTAL_ARROWS_B			                  = (SO_MACMASK or ((VTDWORD($0133)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_MISCELLANEOUS_SYMBOLS_AND_ARROWS			      = (SO_MACMASK or ((VTDWORD($0134)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_MATHEMATICAL_OPERATORS		                	= (SO_MACMASK or ((VTDWORD($0135)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_SUPPLEMENTAL_MATHEMATICAL_OPERATORS			    = (SO_MACMASK or ((VTDWORD($0136)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A			  = (SO_MACMASK or ((VTDWORD($0137)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B			  = (SO_MACMASK or ((VTDWORD($0138)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_MISCELLANEOUS_TECHNICAL		                	= (SO_MACMASK or ((VTDWORD($0139)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_CONTROL_PICTURES			                      = (SO_MACMASK or ((VTDWORD($013A)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_OPTICAL_CHARACTER_RECOGNITION	          		= (SO_MACMASK or ((VTDWORD($013B)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_ENCLOSED_ALPHANUMERICS			                = (SO_MACMASK or ((VTDWORD($013C)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_BOX_DRAWING			                            = (SO_MACMASK or ((VTDWORD($013D)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_BLOCK_ELEMENTS			                        = (SO_MACMASK or ((VTDWORD($013E)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_GEOMETRIC_SHAPES		                      	= (SO_MACMASK or ((VTDWORD($013F)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_MISCELLANEOUS_SYMBOLS		                  	= (SO_MACMASK or ((VTDWORD($0140)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_DINGBATS			                              = (SO_MACMASK or ((VTDWORD($0141)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_CJK_SYMBOLS_AND_PUNCTUATION			            = (SO_MACMASK or ((VTDWORD($0142)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_HIRAGANA			                              = (SO_MACMASK or ((VTDWORD($0143)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_KATAKANA			                              = (SO_MACMASK or ((VTDWORD($0144)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_KATAKANA_PHONETIC_EXTENSIONS			          = (SO_MACMASK or ((VTDWORD($0145)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_BOPOMOFO			                              = (SO_MACMASK or ((VTDWORD($0146)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_BOPOMOFO_EXTENDED			                      = (SO_MACMASK or ((VTDWORD($0147)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_HANGUL_COMPATIBILITY_JAMO			              = (SO_MACMASK or ((VTDWORD($0148)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_PHAGS_PA			                              = (SO_MACMASK or ((VTDWORD($0149)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_ENCLOSED_CJK_LETTERS_AND_MONTHS			        = (SO_MACMASK or ((VTDWORD($014A)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_CJK_COMPATIBILITY			                      = (SO_MACMASK or ((VTDWORD($014B)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_HANGUL_SYLLABLES			                      =  SO_MACMASK or ((VTDWORD($014C)) shl 16);
  SO_UR_NON_PLANE_0			                            =  SO_MACMASK or ((VTDWORD($014D)) shl 16);
  SO_UR_PHOENICIAN			                            = (SO_MACMASK or ((VTDWORD($014E)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_CJK_UNIFIED_IDEOGRAPHS			                =  SO_MACMASK or ((VTDWORD($014F)) shl 16);
  SO_UR_CJK_RADICALS_SUPPLEMENT			                = (SO_MACMASK or ((VTDWORD($0150)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_KANGXI_RADICALS	        		                = (SO_MACMASK or ((VTDWORD($0151)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_IDEOGRAPHIC_DESCRIPTION_CHARACTERS	    		= (SO_MACMASK or ((VTDWORD($0152)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A	    		=  SO_MACMASK or ((VTDWORD($0153)) shl 16);
  SO_UR_CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B	    		=  SO_MACMASK or ((VTDWORD($0154)) shl 16);
  SO_UR_KANBUN			                                = (SO_MACMASK or ((VTDWORD($0155)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_CJK_STROKES			                            = (SO_MACMASK or ((VTDWORD($0156)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_CJK_COMPATIBILITY_IDEOGRAPHS			          =  SO_MACMASK or ((VTDWORD($0157)) shl 16);
  SO_UR_CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT			=  SO_MACMASK or ((VTDWORD($0158)) shl 16);
  SO_UR_ALPHABETIC_PRESENTATION_FORMS			          = (SO_MACMASK or ((VTDWORD($0159)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_ARABIC_PRESENTATION_FORMS_A			            = (SO_MACMASK or ((VTDWORD($015A)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_COMBINING_HALF_MARKS			                  = (SO_MACMASK or ((VTDWORD($015B)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_VERTICAL_FORMS			                        = (SO_MACMASK or ((VTDWORD($015C)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_CJK_COMPATIBILITY_FORMS		                	= (SO_MACMASK or ((VTDWORD($015D)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_SMALL_FORM_VARIANTS			                    = (SO_MACMASK or ((VTDWORD($015E)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_ARABIC_PRESENTATION_FORMS_B			            = (SO_MACMASK or ((VTDWORD($015F)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_HALFWIDTH_AND_FULLWIDTH_FORMS			          = (SO_MACMASK or ((VTDWORD($0160)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_SPECIALS		                                = (SO_MACMASK or ((VTDWORD($0161)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_TIBETAN			                                = (SO_MACMASK or ((VTDWORD($0162)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_SYRIAC			                                = (SO_MACMASK or ((VTDWORD($0163)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_THAANA			                                = (SO_MACMASK or ((VTDWORD($0164)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_SINHALA			                                = (SO_MACMASK or ((VTDWORD($0165)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_MYANMAR			                                = (SO_MACMASK or ((VTDWORD($0166)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_ETHIOPIC		          	                    =  SO_MACMASK or ((VTDWORD($0167)) shl 16);
  SO_UR_ETHIOPIC_SUPPLEMENT			                    = (SO_MACMASK or ((VTDWORD($0168)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_ETHIOPIC_EXTENDED			                      = (SO_MACMASK or ((VTDWORD($0169)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_CHEROKEE			                              = (SO_MACMASK or ((VTDWORD($016A)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS			  =  SO_MACMASK or ((VTDWORD($016B)) shl 16);
  SO_UR_OGHAM			                                  = (SO_MACMASK or ((VTDWORD($016C)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_RUNIC			                                  = (SO_MACMASK or ((VTDWORD($016D)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_KHMER			                                  = (SO_MACMASK or ((VTDWORD($016E)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_KHMER_SYMBOLS			                          = (SO_MACMASK or ((VTDWORD($016F)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_MONGOLIAN	    		                          = (SO_MACMASK or ((VTDWORD($0170)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_BRAILLE_PATTERNS	                          = (SO_MACMASK or ((VTDWORD($0171)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_YI_SYLLABLES			                          =  SO_MACMASK or ((VTDWORD($0172)) shl 16);
  SO_UR_YI_RADICALS			                            = (SO_MACMASK or ((VTDWORD($0173)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_TAGALOG			                                = (SO_MACMASK or ((VTDWORD($0174)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_HANUNOO			                                = (SO_MACMASK or ((VTDWORD($0175)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_BUHID			                                  = (SO_MACMASK or ((VTDWORD($0176)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_TAGBANWA			                              = (SO_MACMASK or ((VTDWORD($0177)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_OLD_ITALIC		  	                          = (SO_MACMASK or ((VTDWORD($0178)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_GOTHIC			                                = (SO_MACMASK or ((VTDWORD($0179)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_DESERET			                                = (SO_MACMASK or ((VTDWORD($017A)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_BYZANTINE_MUSICAL_SYMBOLS		      	        = (SO_MACMASK or ((VTDWORD($017B)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_MUSICAL_SYMBOLS		                	        = (SO_MACMASK or ((VTDWORD($017C)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_ANCIENT_GREEK_MUSICAL_NOTATION			        = (SO_MACMASK or ((VTDWORD($017D)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_MATHEMATICAL_ALPHANUMERIC_SYMBOLS		      	=  SO_MACMASK or ((VTDWORD($017E)) shl 16);
  SO_UR_VARIATION_SELECTORS			                    = (SO_MACMASK or ((VTDWORD($017F)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_VARIATION_SELECTORS_SUPPLEMENT			        = (SO_MACMASK or ((VTDWORD($0180)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_TAGS			                                  = (SO_MACMASK or ((VTDWORD($0181)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_LIMBU			                                  = (SO_MACMASK or ((VTDWORD($0182)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_TAI_LE		                                	= (SO_MACMASK or ((VTDWORD($0183)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_NEW_TAI_LUE		                            	= (SO_MACMASK or ((VTDWORD($0184)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_BUGINESE	  	                            	= (SO_MACMASK or ((VTDWORD($0185)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_GLAGOLITIC		                            	= (SO_MACMASK or ((VTDWORD($0186)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_TIFINAGH		                              	= (SO_MACMASK or ((VTDWORD($0187)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_YIJING_HEXAGRAM_SYMBOLS			                = (SO_MACMASK or ((VTDWORD($0188)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_SYLOTI_NAGRI	          		                = (SO_MACMASK or ((VTDWORD($0189)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_LINEAR_B_SYLLABARY			                    = (SO_MACMASK or ((VTDWORD($018A)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_LINEAR_B_IDEOGRAMS			                    = (SO_MACMASK or ((VTDWORD($018B)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_AEGEAN_NUMBERS			                        = (SO_MACMASK or ((VTDWORD($018C)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_ANCIENT_GREEK_NUMBERS			                  = (SO_MACMASK or ((VTDWORD($018D)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_UGARITIC		      	                        = (SO_MACMASK or ((VTDWORD($018E)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_OLD_PERSIAN	      		                      = (SO_MACMASK or ((VTDWORD($018F)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_SHAVIAN			                                = (SO_MACMASK or ((VTDWORD($0190)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_OSMANYA			                                = (SO_MACMASK or ((VTDWORD($0191)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_CYPRIOT_SYLLABARY			                      = (SO_MACMASK or ((VTDWORD($0192)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_KHAROSHTHI			                            = (SO_MACMASK or ((VTDWORD($0193)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_TAI_XUAN_JING_SYMBOLS		  	                = (SO_MACMASK or ((VTDWORD($0194)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_CUNEIFORM			                              =  SO_MACMASK or ((VTDWORD($0195)) shl 16);
  SO_UR_CUNEIFORM_NUMBERS_AND_PUNCTUATION		      	= (SO_MACMASK or ((VTDWORD($0196)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_COUNTING_ROD_NUMERALS			                  = (SO_MACMASK or ((VTDWORD($0197)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_SUNDANESE		  	                            = (SO_MACMASK or ((VTDWORD($0198)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_LEPCHA		    	                            = (SO_MACMASK or ((VTDWORD($0199)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_OL_CHIKI		  	                            = (SO_MACMASK or ((VTDWORD($019A)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_SAURASHTRA			                            = (SO_MACMASK or ((VTDWORD($019B)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_KAYAH_LI			                              = (SO_MACMASK or ((VTDWORD($019C)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_REJANG			                                = (SO_MACMASK or ((VTDWORD($019D)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_CHAM			                                  = (SO_MACMASK or ((VTDWORD($019E)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_ANCIENT_SYMBOLS			                        = (SO_MACMASK or ((VTDWORD($019F)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_PHAISTOS_DISC			                          = (SO_MACMASK or ((VTDWORD($01A0)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_CARIAN			                                = (SO_MACMASK or ((VTDWORD($01A1)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_LYCIAN			                                = (SO_MACMASK or ((VTDWORD($01A2)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_LYDIAN			                                = (SO_MACMASK or ((VTDWORD($01A3)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_DOMINO_TILES     			                      = (SO_MACMASK or ((VTDWORD($01A4)) shl 16)) or SO_CSSINGLEPAGE;
  SO_UR_MAHJONG_TILES    			                      = (SO_MACMASK or ((VTDWORD($01A5)) shl 16)) or SO_CSSINGLEPAGE;


implementation

//  SOMAKEWPF5CS     = ((SO_WPF5 or SO_CSSINGLEPAGE) or SO_WORDPERFECTFONT) or (VTDWORD(wCodePage));
//  SOMAKEWPF6CS     = ((SO_WPF6 or SO_CSSINGLEPAGE) or SO_WORDPERFECTFONT) or (VTDWORD(wCodePage));
//  SOMAKELOTUSMBCS  = (SO_LOTUSMBCS or SO_CSSINGLEPAGE) or (VTDWORD(wCodePage));
//  SOMAKEEBCDICSBCS = (SO_EBCDICMASK or ((VTDWORD(wCodePage)) shl 16)) or SO_CSSINGLEPAGE;

end.
