
unit charsets;
interface
uses vtchars;
{
  Automatically converted by H2Pas 1.0.0 from D:\work\FPC\ooi\charsets.tmp.h
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


  { Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved.  }
  {
  | Outside In Viewer Technology - Include
  |
  | Include:       CHARSETS.H
  | Environment:   Portable
  | Function:      Default input character sets for
  |                Outside In Technology
   }
{$ifndef _CHARSETS_H}

  { System Default  }

  const
     CS_SYSTEMDEFAULT = 0;     
  { Unicode (UCS-2)                                    0x14B00000  }
     CS_UNICODE = SO_UNICODE;     
  { big-endian UCS-2 (same effect as SO_UNICODE)       0x14B00001  }
     CS_BIGENDIAN_UNICODE = SO_BIGENDIAN_UNICODE;     
  { little-endian UCS-2                                0x14B00002  }
     CS_LITTLEENDIAN_UNICODE = SO_LITTLEENDIAN_UNICODE;     
  { UTF-8 Encoded Unicode                              0x000B000B  }
     CS_UTF8 = SO_UTF8;     
  { UTF-7 Encoded Unicode                              0x000B000C  }
     CS_UTF7 = SO_UTF7;     
  { ASCII (7-bit)                                      0x10000100  }
     CS_ASCII = SO_ASCII;     
  { UNIX character sets  }
  { Japanese (JIS)                                     0x0F0C0000  }
     CS_UNIX_JAPANESE = SO_JIS;     
  { Japanese (EUC)                                     0x0F0D0000  }
     CS_UNIX_JAPANESE_EUC = SO_EUC_JP;     
  { Chinese Traditional, Plane 1                       0x0F030000  }
     CS_UNIX_CHINESE_TRAD1 = SO_CNS11643_1;     
  { Chinese Traditional EUC, Plane 1                   0x0F070000  }
     CS_UNIX_CHINESE_EUC_TRAD1 = SO_EUC_CNS_1;     
  { Chinese Traditional, Plane 2                       0x0F040000  }
     CS_UNIX_CHINESE_TRAD2 = SO_CNS11643_2;     
  { Chinese Traditional EUC, Plane 2                   0x0F080000  }
     CS_UNIX_CHINESE_EUC_TRAD2 = SO_EUC_CNS_2;     
  { Korean Standard                                    0x0F060000  }
     CS_UNIX_KOREAN = SO_KSC1987;     
  { Simplified Chinese                                 0x0F050000  }
     CS_UNIX_CHINESE_SIMPLE = SO_GB2312;     
  { EBCDIC Code Page 37 (United States)                0x40250100  }
     CS_EBCDIC_37 = SO_EBCDIC37;     
  { EBCDIC Code Page 273 (Germany)                     0x41110100  }
     CS_EBCDIC_273 = SO_EBCDIC273;     
  { EBCDIC Code Page 274 (Belgium)                     0x41120100  }
     CS_EBCDIC_274 = SO_EBCDIC274;     
  { EBCDIC Code Page 277 (Denmark, Norway)             0x41150100 }
     CS_EBCDIC_277 = SO_EBCDIC277;     
  { EBCDIC Code Page 278 (Finland, Sweden)             0x41160100  }
     CS_EBCDIC_278 = SO_EBCDIC278;     
  { EBCDIC Code Page 280 (Italy)                       0x41180100  }
     CS_EBCDIC_280 = SO_EBCDIC280;     
  { EBCDIC Code Page 282 (Portugal)                    0x411A0100  }
     CS_EBCDIC_282 = SO_EBCDIC282;     
  { EBCDIC Code Page 284 (Latin America, Spain)        0x411C0100  }
     CS_EBCDIC_284 = SO_EBCDIC284;     
  { EBCDIC Code Page 285 (Ireland, UK)                 0x411D0100  }
     CS_EBCDIC_285 = SO_EBCDIC285;     
  { EBCDIC Code Page 297 (France)                      0x41290100  }
     CS_EBCDIC_297 = SO_EBCDIC297;     
  { EBCDIC Code Page 500 (International)               0x41F40100  }
     CS_EBCDIC_500 = SO_EBCDIC500;     
  { EBCDIC Code Page 1026 (Turkey)                     0x44020100  }
     CS_EBCDIC_1026 = SO_EBCDIC1026;     
  { DOS Code Page 437 (United States)                  0x11B50100  }
     CS_DOS_437 = SO_ANSI437;     
  { DOS Code Page 737 (Greek)                          0x12E10100  }
     CS_DOS_737 = SO_ANSI737;     
  { DOS Code Page 850 (Multilingual Latin I)           0x13520100  }
     CS_DOS_850 = SO_ANSI850;     
  { DOS Code Page 852 (Latin II)                       0x13540100  }
     CS_DOS_852 = SO_ANSI852;     
  { DOS Code Page 855 (Cyrillic)                       0x13570100  }
     CS_DOS_855 = SO_ANSI855;     
  { DOS Code Page 857 (Turkish)                        0x13590100  }
     CS_DOS_857 = SO_ANSI857;     
  { DOS Code Page 860 (Portugese)                      0x135C0100  }
     CS_DOS_860 = SO_ANSI860;     
  { DOS Code Page 861 (Icelandic)                      0x135D0100  }
     CS_DOS_861 = SO_ANSI861;     
  { DOS Code Page 863 (French)                         0x135F0100  }
     CS_DOS_863 = SO_ANSI863;     
  { DOS Code Page 865 (Danish, Norweigian)             0x13610100  }
     CS_DOS_865 = SO_ANSI865;     
  { DOS Code Page 866 (Russian)                        0x13620100  }
     CS_DOS_866 = SO_ANSI866;     
  { DOS Code Page 869 (Greek)                          0x13650100  }
     CS_DOS_869 = SO_ANSI869;     
  { Windows Code Page 874 (Thai)                       0x136A0100  }
     CS_WINDOWS_874 = SO_ANSI874;     
  { Windows Code Page 932 (Japanese Shift-JIS)         0x13A40000  }
     CS_WINDOWS_932 = SO_ANSI932;     
  { Windows Code Page 936 (Simplified Chinese GBK)     0x13A80000  }
     CS_WINDOWS_936 = SO_ANSI936;     
  { Windows Code Page 949 (Korean)                     0x13B50000  }
     CS_WINDOWS_949 = SO_ANSI949;     
  { Windows Code Page 950 (Traditional Chinese Big 5)  0x13B60000  }
     CS_WINDOWS_950 = SO_ANSI950;     
  { Windows Code Page 1250 (Central Europe)            0x14E20100  }
     CS_WINDOWS_1250 = SO_ANSI1250;     
  { Windows Code Page 1251 (Cyrillic)                  0x14E30100  }
     CS_WINDOWS_1251 = SO_ANSI1251;     
  { Windows Code Page 1252 (Latin I)                   0x14E40100  }
     CS_WINDOWS_1252 = SO_ANSI1252;     
  { Windows Code Page 1253 (Greek)                     0x14E50100  }
     CS_WINDOWS_1253 = SO_ANSI1253;     
  { Windows Code Page 1254 (Turkish)                   0x14E60100  }
     CS_WINDOWS_1254 = SO_ANSI1254;     
  { Windows Code Page 1255 (Hebrew)                    0x14E70100  }
     CS_WINDOWS_1255 = SO_ANSI1255;     
  { Windows Code Page 1256 (Arabic)                    0x14E80100  }
     CS_WINDOWS_1256 = SO_ANSI1256;     
  { Windows Code Page 1257 (Baltic)                    0x14E90100  }
     CS_WINDOWS_1257 = SO_ANSI1257;     
  { ISO-8859-1 (Latin 1)                               0x00080101  }
     CS_ISO8859_1 = SO_ISO8859_1;     
  { ISO-8859-2 (Latin 2)                               0x00080102  }
     CS_ISO8859_2 = SO_ISO8859_2;     
  { ISO-8859-3 (Latin 3)                               0x00080103  }
     CS_ISO8859_3 = SO_ISO8859_3;     
  { ISO-8859-4 (Baltic)                                0x00080104  }
     CS_ISO8859_4 = SO_ISO8859_4;     
  { ISO-8859-5 (Cyrillic)                              0x00080105  }
     CS_ISO8859_5 = SO_ISO8859_5;     
  { ISO-8859-6 (Arabic)                                0x00080106  }
     CS_ISO8859_6 = SO_ISO8859_6;     
  { ISO-8859-7 (Greek)                                 0x00080107  }
     CS_ISO8859_7 = SO_ISO8859_7;     
  { ISO-8859-8 (Hebrew)                                0x00080108  }
     CS_ISO8859_8 = SO_ISO8859_8;     
  { ISO-8859-9 (Turkish)                               0x00080109  }
     CS_ISO8859_9 = SO_ISO8859_9;     
  { ISO-8859-11 (Part 11: Latin/Thai alphabet)         0x0008010B  }
     CS_ISO8859_11 = SO_ISO8859_11;     
  { ISO-8859-13 (Latin-7)                              0x0008010D  }
     CS_ISO8859_13 = SO_ISO8859_13;     
  { ISO-8859-15 (Latin-9)                              0x0008010F  }
     CS_ISO8859_15 = SO_ISO8859_15;     
  { Mac OS Roman                                       0x80000100  }
     CS_MAC_ROMAN = SO_MACROMAN;     
  { Mac OS Croatian                                    0x80010100  }
     CS_MAC_CROATIAN = SO_MACROMANCROATIAN;     
  { Mac OS Romanian                                    0x80020100  }
     CS_MAC_ROMANIAN = SO_MACROMANROMANIAN;     
  { Mac OS Turkish                                     0x80030100  }
     CS_MAC_TURKISH = SO_MACROMANTURKISH;     
  { Mac OS Icelandic                                   0x80040100  }
     CS_MAC_ICELANDIC = SO_MACROMANICELANDIC;     
  { Mac OS Cyrillic                                    0x80050100  }
     CS_MAC_CYRILLIC = SO_MACCYRILLIC;     
  { Mac OS Greek                                       0x80060100  }
     CS_MAC_GREEK = SO_MACGREEK;     
  { Mac OS Central European                            0x80070100  }
     CS_MAC_CE = SO_MACLATIN2;     
  { Mac OS Hebrew                                      0x80090100  }
     CS_MAC_HEBREW = SO_HEBREW;     
  { Mac OS Arabic                                      0x800A0100  }
     CS_MAC_ARABIC = SO_ARABIC;     
  { Mac OS Japanese                                    0x800B0000  }
     CS_MAC_JAPANESE = SO_MACJIS;     
  { HP Roman-8                                         0x201A0100  }
     CS_HPROMAN8 = SO_HPROMAN8;     
  { Bidirectional Hebrew (Old Code)                    0x000C0101  }
     CS_BIDI_OLDCODE = SO_BIDI_OLDCODE;     
  { Bidirectional PC-8                                 0x000C0102  }
     CS_BIDI_PC8 = SO_BIDI_PC8;     
  { Bidirectional E0                                   0x000C0103  }
     CS_BIDI_E0 = SO_BIDI_E0;     
  { Russian KOI8-R                                     0x000A0101  }
     CS_RUSSIAN_KOI8 = SO_HTMLKOI8;     
  { Japanese (JIS X 0201)                              0x000A0102  }
     CS_JAPANESE_X0201 = SO_JIS_ROMAN;     
  { 8.2 defines, for backwards compatibility  }
     CS_JAPANESE = CS_UNIX_JAPANESE;     
     CS_JAPANESE_EUC = CS_UNIX_JAPANESE_EUC;     
     CS_CHINESE_TRAD1 = CS_UNIX_CHINESE_TRAD1;     
     CS_CHINESE_EUC_TRAD1 = CS_UNIX_CHINESE_EUC_TRAD1;     
     CS_CHINESE_TRAD2 = CS_UNIX_CHINESE_TRAD2;     
     CS_CHINESE_EUC_TRAD2 = CS_UNIX_CHINESE_EUC_TRAD2;     
     CS_KOREAN = CS_UNIX_KOREAN;     
     CS_CHINESE_SIMPLE = CS_UNIX_CHINESE_SIMPLE;     
{$endif}
  { _CHARSETS_H  }

implementation


end.
