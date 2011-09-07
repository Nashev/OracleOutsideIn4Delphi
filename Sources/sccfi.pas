unit sccfi;
interface
uses scctype, sccio, baseio;

{
  Automatically converted by H2Pas 1.0.0 from D:\work\FPC\ooi\sccfi.tmp.h
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
//
type
//    PFIGET  = ^FIGET;
//    PFIGETtag  = ^FIGETtag;
//    PPFIGET  = ^PFIGET;
    PVTVOID  = Pointer;
    PVTWORD  = ^VTWORD;


  { Copyright (c) 2001, 2010, Oracle and/or its affiliates. 
  All rights reserved.  }
  {
    |  Outside In Viewer Technology - Include
    |
    |  Include:      SCCFI.H
    |  Environment:  Portable
    |  Function:     Defines file type ids
     }

  {
      |
      |   Format IDs
      |
      |   NOTE: Each section has a FI_xxxBEGIN and FI_xxxEND for use with Mac string selection.
      |         Be sure to update the FI_xxxEND when adding FI's
       }

  const
     FI_IDSTART = 1000;     
  {
      |   Word Processor
       }
     FI_WPBEGIN = 1000;     
     FI_WORD4 = 1000;     
     FI_WORD5 = 1001;     
     FI_WORDSTAR5 = 1002;     
     FI_WORDSTAR4 = 1003;     
     FI_WORDSTAR2000 = 1004;     
     FI_WORDPERFECT5 = 1005;     
     FI_MULTIMATE36 = 1006;     
     FI_MULTIMATEADV = 1007;     
     FI_RFT = 1008;     
  { DisplayWrite 3  }
     FI_TXT = 1009;     
     FI_SMART = 1010;     
     FI_SAMNA = 1011;     
     FI_PFSWRITEA = 1012;     
     FI_PFSWRITEB = 1013;     
     FI_PROWRITE1 = 1014;     
     FI_PROWRITE2 = 1015;     
     FI_IBMWRITING = 1016;     
     FI_FIRSTCHOICE = 1017;     
     FI_WORDMARC = 1018;     
     FI_DIF = 1019;     
     FI_VOLKSWRITER = 1020;     
     FI_DX = 1021;     
     FI_SPRINT = 1022;     
     FI_WORDPERFECT42 = 1023;     
     FI_TOTALWORD = 1024;     
     FI_IWP = 1025;     
     FI_WORDSTAR55 = 1026;     
     FI_WANGWPS = 1027;     
     FI_RTF = 1028;     
     FI_MACWORD3 = 1029;     
     FI_MACWORD4 = 1030;     
     FI_MASS11PC = 1031;     
     FI_MACWRITEII = 1032;     
     FI_XYWRITE = 1033;     
     FI_FFT = 1034;     
     FI_MACWORDPERFECT = 1035;     
     FI_DISPLAYWRITE4 = 1036;     
     FI_MASS11VAX = 1037;     
     FI_WORDPERFECT51 = 1038;     
     FI_MULTIMATE40 = 1039;     
     FI_QAWRITE = 1040;     
     FI_MULTIMATENOTE = 1041;     
     FI_PCFILELETTER = 1043;     
     FI_MANUSCRIPT1 = 1044;     
     FI_MANUSCRIPT2 = 1045;     
     FI_ENABLEWP = 1046;     
     FI_WINWRITE = 1047;     
     FI_WORKS1 = 1048;     
     FI_WORKS2 = 1049;     
     FI_WORDSTAR6 = 1050;     
     FI_OFFICEWRITER = 1051;     
     FI_MACWORD4COMPLEX = 1052;     
     FI_DISPLAYWRITE5 = 1053;     
     FI_WINWORD1 = 1054;     
     FI_WINWORD1COMPLEX = 1055;     
     FI_AMI = 1056;     
     FI_AMIPRO = 1057;     
     FI_FIRSTCHOICE3 = 1058;     
     FI_MACWORDPERFECT2 = 1059;     
     FI_MACWORKSWP2 = 1060;     
     FI_PROWRITEPLUS = 1061;     
     FI_LEGACY = 1062;     
     FI_SIGNATURE = 1063;     
     FI_WINWORDSTAR = 1064;     
     FI_WINWORD2 = 1065;     
     FI_JUSTWRITE = 1066;     
     FI_WORDSTAR7 = 1067;     
     FI_WINWORKSWP = 1068;     
     FI_JUSTWRITE2 = 1069;     
     FI_AMICLIP = 1070;     
     FI_LEGACYCLIP = 1071;     
     FI_PROWRITEPLUSCLIP = 1072;     
     FI_MACWORD5 = 1073;     
     FI_ENABLEWP4 = 1074;     
     FI_WORDPERFECT6 = 1075;     
     FI_WORD6 = 1076;     
     FI_DX31 = 1077;     
     FI_WPFENCRYPT = 1078;     
     FI_QAWRITE3 = 1079;     
     FI_MACWORDPERFECT3 = 1080;     
     FI_CEOWORD = 1081;     
     FI_WINWORD6 = 1082;     
     FI_WORDPERFECT51J = 1083;     
     FI_ICHITARO3 = 1084;     
     FI_ICHITARO4 = 1085;     
     FI_WINWORD1J = 1086;     
     FI_WINWORD5J = 1087;     
     FI_MATSU4 = 1088;     
     FI_MATSU5 = 1089;     
     FI_P1 = 1090;     
     FI_RTFJ = 1091;     
     FI_CEOWRITE = 1092;     
     FI_WINWORKSWP3 = 1093;     
     FI_WORDPAD = 1094;     
     FI_WPFUNKNOWN = 1095;     
     FI_WINWORD2_OLECONV = 1096;     
     FI_WORDPERFECT61 = 1097;     
     FI_FTDF = 1098;     
  { Europa Fulcrum.  }
     FI_WORDPERFECT5E = 1099;     
  { Europa Fulcrum.  }
     FI_WORDPERFECT6E = 1100;     
     FI_HTML = 1101;     
     FI_WINWORD7 = 1102;     
  { No filter. Korean. }
     FI_AREHANGEUL = 1103;     
  { No filter. Korean. }
     FI_HANA = 1104;     
     FI_WINWORKSWP4 = 1105;     
     FI_PERFECTWORKS1 = 1106;     
     FI_WORDPERFECT7 = 1107;     
     FI_WORDPRO = 1108;     
     FI_HTML_LATIN2 = 1109;     
     FI_HTML_JAPANESESJIS = 1110;     
     FI_HTML_JAPANESEEUC = 1111;     
     FI_HTML_CHINESEBIG5 = 1112;     
     FI_HTML_CHINESEEUC = 1113;     
     FI_HTML_CHINESEGB = 1114;     
     FI_HTML_KOREANHANGUL = 1115;     
     FI_HTML_CYRILLIC1251 = 1116;     
     FI_HTML_CYRILLICKOI8 = 1117;     
     FI_CYRILLIC1251 = 1118;     
     FI_CYRILLICKOI8 = 1119;     
     FI_WWRITE_SHIFTJIS = 1120;     
     FI_WWRITE_CHINESEGB = 1121;     
     FI_WWRITE_HANGEUL = 1122;     
     FI_WWRITE_CHINESEBIG5 = 1123;     
     FI_WPSPLUS = 1124;     
     FI_MACWORD6 = 1125;     
     FI_WINWORD97 = 1126;     
     FI_RAINBOW = 1127;     
     FI_INTERLEAF = 1128;     
     FI_MIFF3 = 1129;     
     FI_MIFF4 = 1130;     
     FI_MIFF5 = 1131;     
     FI_TEXTMAIL = 1132;     
     FI_MACWORD97 = 1133;     
     FI_INTERLEAFJ = 1134;     
     FI_MIFF3J = 1135;     
     FI_MIFF4J = 1136;     
     FI_MIFF5J = 1137;     
     FI_MIFF55 = 1138;     
     FI_WORDPERFECT8 = 1139;     
     FI_ICHITARO8 = 1140;     
     FI_VCARD = 1141;     
     FI_HTML_CSS = 1142;     
     FI_OUTLOOK_MSG = 1143;     
     FI_POCKETWORD = 1144;     
     FI_WORDPRO97 = 1145;     
  { Word 2000                           }
     FI_WINWORD2000 = 1146;     
  { Word 2000 Save As... HTML           }
     FI_W2KHTML = 1147;     
  { Excel 2000 Save As... HTML          }
     FI_XL2KHTML = 1148;     
  { PowerPoint 2000  Save As... HTML    }
     FI_PP2KHTML = 1149;     
  { XML                                 }
     FI_XML = 1150;     
  { WML [ASCII]                         }
     FI_WML = 1151;     
  { WML [Binary]                        }
     FI_WMLB = 1152;     
     FI_HTML_JAPANESEJIS = 1153;     
     FI_WML_CHINESEBIG5 = 1154;     
     FI_WML_CHINESEEUC = 1155;     
     FI_WML_CHINESEGB = 1156;     
     FI_WML_CYRILLIC1251 = 1157;     
     FI_WML_CYRILLICKOI8 = 1158;     
     FI_WML_JAPANESEJIS = 1159;     
     FI_WML_JAPANESESJIS = 1160;     
     FI_WML_JAPANESEEUC = 1161;     
     FI_WML_KOREANHANGUL = 1162;     
     FI_WML_LATIN2 = 1163;     
     FI_WML_CSS = 1164;     
  { StarOffice Writer 5.2  }
     FI_STAROFFICEWRITER52 = 1165;     
     FI_MIFF6 = 1166;     
     FI_MIFF6J = 1167;     
     FI_MIFF = 1168;     
     FI_JAVASCRIPT = 1169;     
  {  Only used by Export - No filter associated with this FI ID  }
     FI_TEXT = 1170;     
     FI_HDML = 1171;     
     FI_CHTML = 1172;     
     FI_XHTMLB = 1173;     
     FI_HTMLAG = 1174;     
     FI_HTMLWCA = 1175;     
     FI_SEARCHML = 1176;     
     FI_POCKETWORD20 = 1177;     
  {  Only used by Export  }
     FI_WIRELESSHTML = 1178;     
     FI_HANGULWP97 = 1179;     
     FI_HANGULWP2002 = 1180;     
     FI_HTMLUNICODE = 1181;     
     FI_XML_DOCTYPE_HTML = 1182;     
     FI_PAGEML = 1183;     
     FI_EBCDIC = 1184;     
     FI_WINWORD2002 = 1185;     
     FI_WINWORD2003 = 1186;     
     FI_MIME = 1187;     
  { StarOffice Writer 6 & 7  }
     FI_STAROFFICEWRITER6 = 1188;     
  {PST 97/2000/XP file }
     FI_OUTLOOK_PST = 1189;     
  { XML/WML/HTML test   }
     FI_XHTML = 1190;     
  { Microsoft Works 2000  }
     FI_MSWORKS2000 = 1191;     
     FI_MIMEMAIL = 1192;     
     FI_MIMENEWS = 1193;     
     FI_MIMEOUTLOOKNEWS = 1194;     
     FI_MIMEOUTLOOKEML = 1195;     
  {VCalendar }
     FI_VCAL = 1196;     
     FI_TNEF = 1197;     
     FI_MHTML = 1198;     
  {  Search Export HTML output.  Created by SearchML.   }
     FI_SEARCHHTML = 1199;     
     FI_WPEND = 1199;     
  {
      |   Database
       }
     FI_DBBEGIN = 1200;     
     FI_SMARTDATA = 1200;     
     FI_DBASE3 = 1201;     
     FI_DBASE4 = 1202;     
     FI_FRAMEWORKIII = 1203;     
     FI_WORKSDATA = 1204;     
     FI_DATAEASE = 1205;     
     FI_PARADOX3 = 1206;     
     FI_PARADOX35 = 1207;     
     FI_QADBASE = 1208;     
     FI_REFLEX = 1209;     
     FI_RBASEV = 1210;     
     FI_RBASE5000 = 1211;     
     FI_RBASEFILE1 = 1212;     
     FI_RBASEFILE3 = 1213;     
     FI_FIRSTCHOICE_DB = 1214;     
     FI_MACWORKSDB2 = 1215;     
     FI_WINWORKSDB = 1216;     
     FI_PARADOX4 = 1217;     
     FI_ACCESS1 = 1218;     
     FI_CEODB = 1219;     
     FI_WINWORKSDB3 = 1220;     
     FI_WINWORKSDB4 = 1221;     
     FI_ACCESS7 = 1222;     
     FI_MSPROJECT98 = 1223;     
     FI_MSPROJECT2000 = 1224;     
     FI_MSPROJECT2002 = 1225;     
     FI_MSPROJECT2007 = 1226;     
     FI_LOTUSNOTESDB = 1227;     
     FI_MSPROJECT2010 = 1228;     
     FI_DBEND = 1228;     
     FI_WPBEGIN2 = 1300;     
  {  Search Export text output.   }
     FI_SEARCHTEXT = 1300;     
  {  PST Fields File  }
     FI_PSTF = 1301;     
  {  PST 2003 File }
     FI_PST_2003 = 1302;     
  {  Outlook PAB (Personal Address Book) file }
     FI_PAB_2002 = 1303;     
     FI_SEARCHML20 = 1304;     
     FI_SEARCHML30 = 1305;     
     FI_YAHOOIM = 1306;     
  { MS Office 2003 Word XML format  }
     FI_WORDXML2003 = 1307;     
  { MS Office 12 Word format  }
     FI_WORDXML12 = 1308;     
  { Star Office 8 & Open Office 2  }
     FI_STAROFFICEWRITER8 = 1309;     
     FI_SEARCHML31 = 1310;     
  { Microsoft Outlook Form Template. }
     FI_OUTLOOK_OFT = 1311;     
  { MS Office 12 (2007) Word XML format  }
     FI_WINWORD2007 = 1312;     
     FI_ENCRYPTED_WORD2007 = 1313;     
  { MS Office 12 (2007) Word Template XML format  }
     FI_WINWORDTEMPLATE2007 = 1314;     
     FI_SEARCHML32 = 1315;     
     FI_DRM_UNKNOWN = 1316;     
     FI_DRM_WORD = 1317;     
     FI_DRM_WORD2007 = 1318;     
     FI_ORACLE_IRM = 1319;     
     FI_XMP = 1320;     
     FI_SEARCHML33 = 1321;     
     FI_PHTML = 1322;     
  { Open Office Writer 1  }
     FI_OPENOFFICEWRITER1 = 1323;     
  { Open Office Writer 2  }
     FI_OPENOFFICEWRITER2 = 1324;     
  { IBM Lotus Symphony Document  }
     FI_SYMPHONYDOCUMENT = 1325;     
     FI_SEARCHML34 = 1326;     
  { MS Office 12 (2007) Word - Macro Enabled XML format }
     FI_WINWORD2007_MACRO = 1327;     
  { MS Office 12 (2007) Word Template - Macro Enabled XML format  }
     FI_WINWORDTEMPLATE2007_MACRO = 1328;     
  { Microsoft Word Picture  }
     FI_MSWORDPICTURE = 1329;     
  { Filter to generate XMP SO output  }
     FI_XMPS = 1330;     
  { Open Office Writer 3  }
     FI_OPENOFFICEWRITER3 = 1331;     
     FI_STAROFFICEWRITER9 = 1332;     
     FI_ORACLEOPENOFFICEWRITER3 = 1333;     
  { Samsung Jungum .GUL File  }
     FI_SAMSUNGJUNGUM = 1334;     
     FI_KINGSOFTWRITER = 1335;     
     FI_WINWORD2010 = 1336;     
     FI_WINWORDTEMPLATE2010 = 1337;     
     FI_WINWORD2010_MACRO = 1338;     
     FI_WINWORDTEMPLATE2010_MACRO = 1339;     
     FI_ENCRYPTED_WORD2010 = 1340;     
     FI_WPEND2 = 1340;     
  {generic FI that will always point to newest version of SearchML. }
     FI_SEARCHML_LATEST = 1340;     
  {
      |   Spreadsheet
       }
     FI_SSBEGIN = 1400;     
  { Lotus Symphony 1.0                    }
     FI_SYMPHONY1 = 1400;     
  { Lotus 123 1.0 & 1.0A                  }
     FI_123R1 = 1401;     
  { Lotus 123 2.0 & Symphony 1.1 & 2.0    }
     FI_123R2 = 1402;     
  { Lotus 123 3.0                         }
     FI_123R3 = 1403;     
     FI_SMARTSHEET = 1404;     
     FI_EXCEL = 1405;     
     FI_ENABLESHEET = 1406;     
     FI_WORKSSHEET = 1407;     
     FI_VPPLANNER = 1408;     
     FI_TWIN = 1409;     
     FI_SUPERCALC5 = 1410;     
     FI_QUATTROPRO = 1411;     
     FI_QUATTRO = 1412;     
     FI_PFS_PLAN = 1413;     
     FI_FIRSTCHOICE_SS = 1414;     
     FI_EXCEL3 = 1415;     
     FI_GENERIC_WKS = 1416;     
     FI_MACWORKSSS2 = 1417;     
     FI_WINWORKSSS = 1418;     
     FI_EXCEL4 = 1419;     
     FI_QUATTROPROWIN = 1420;     
  { Lotus 123 4.0   Win                   }
     FI_123R4 = 1421;     
  { Quattro Japan                         }
     FI_QUATTROPRO1J = 1422;     
  { CEO Spreadsheet                       }
     FI_CEOSS = 1423;     
     FI_EXCEL5 = 1424;     
     FI_MULTIPLAN4 = 1425;     
     FI_WINWORKSSS3 = 1426;     
     FI_QUATTROPRO4 = 1427;     
     FI_QUATTROPRO5 = 1428;     
     FI_QUATTROPRO6 = 1429;     
     FI_123R2OS2 = 1430;     
     FI_123R2OS2CHART = 1431;     
     FI_WINWORKSSS4 = 1432;     
     FI_QUATTROPRO7NB = 1433;     
     FI_QUATTROPRO7GR = 1434;     
  { Lotus    123 6.0   Win95 - Gemini     }
     FI_123R6 = 1435;     
     FI_MACEXCEL4 = 1436;     
     FI_MACEXCEL5 = 1437;     
     FI_EXCEL97 = 1438;     
     FI_EXCEL3WORKBOOK = 1439;     
     FI_EXCEL4WORKBOOK = 1440;     
  { with MacBinary header                 }
     FI_MACEXCEL4WORKBOOK = 1441;     
  { without MacBinary header              }
     FI_REGMACEXCEL4WB = 1442;     
  { Lotus 123 - SmartSuite 98             }
     FI_123R9 = 1443;     
     FI_QUATTROPRO8 = 1444;     
     FI_QUATTROPRO9NB = 1445;     
  { Excel 2000                            }
     FI_EXCEL2000 = 1446;     
     FI_QUATTROPRO10NB = 1447;     
  { Excel 2002                            }
     FI_EXCEL2002 = 1448;     
  { StarOffice Calc 5.2  }
     FI_STAROFFICECALC52 = 1449;     
     FI_QUATTROPRO11NB = 1450;     
  { Excel 2003                            }
     FI_EXCEL2003 = 1451;     
  { StarOffice Calc 6 & 7  }
     FI_STAROFFICECALC6 = 1452;     
     FI_QUATTROPRO12NB = 1453;     
  { StarOffice Calc 8 & Open Office 2     }
     FI_STAROFFICECALC8 = 1454;     
  { Excel 2007                            }
     FI_EXCEL2007 = 1455;     
     FI_ENCRYPTED_EXCEL2007 = 1456;     
     FI_EXCEL2007_BINARY = 1457;     
     FI_DRM_EXCEL = 1458;     
     FI_DRM_EXCEL2007 = 1459;     
     FI_MSWORKSSS6 = 1460;     
  { Open Office Calc 6  }
     FI_OPENOFFICECALC1 = 1461;     
  { Open Office Calc 8  }
     FI_OPENOFFICECALC2 = 1462;     
  { IBM Lotus Symphony Spreadsheet  }
     FI_SYMPHONYSPREADSHEET = 1463;     
  { Excel Template 2007                   }
     FI_EXCELTEMPLATE2007 = 1464;     
  { Excel Macro Enabled                      }
     FI_EXCEL2007_MACRO = 1465;     
  { Excel Template Macro Enabled 2007                   }
     FI_EXCELTEMPLATE2007_MACRO = 1466;     
  { Microsoft Office Excel 2002/2003 XML  }
     FI_EXCELXML2003 = 1467;     
  { Open Office Calc 3  }
     FI_OPENOFFICECALC3 = 1468;     
     FI_QUATTROPROX4NB = 1469;     
     FI_ENCRYPTED_EXCEL2007_BINARY = 1470;     
     FI_EXCEL2007_ADDINMACRO = 1471;     
     FI_DIFSS = 1472;     
     FI_STAROFFICECALC9 = 1473;     
     FI_ORACLEOPENOFFICECALC3 = 1474;     
     FI_KINGSOFTSPREADSHEETS = 1475;     
     FI_EXCEL2010 = 1476;     
     FI_EXCEL2010_MACRO = 1477;     
     FI_EXCELTEMPLATE2010 = 1478;     
     FI_EXCELTEMPLATE2010_MACRO = 1479;     
     FI_EXCEL2010_ADDINMACRO = 1480;     
     FI_EXCEL2010_BINARY = 1481;     
     FI_ENCRYPTED_EXCEL2010 = 1482;     
     FI_ENCRYPTED_EXCEL2010_BINARY = 1483;     
     FI_SSEND = 1483;     
  {
      |   Graphic
       }
     FI_GRAPHICBEGIN = 1500;     
     FI_BMP = 1500;     
     FI_TIFF = 1501;     
     FI_PCX = 1502;     
     FI_GIF = 1503;     
     FI_EPSTIFF = 1504;     
     FI_CCITTGRP3 = 1505;     
     FI_MACPICT2 = 1506;     
     FI_WPG = 1507;     
     FI_WINDOWSMETA = 1508;     
     FI_LOTUSPIC = 1509;     
     FI_MACPICT1 = 1510;     
     FI_AMIDRAW = 1511;     
     FI_TARGA = 1512;     
     FI_GEMIMG = 1513;     
     FI_OS2DIB = 1514;     
     FI_WINDOWSICON = 1515;     
     FI_WINDOWSCURSOR = 1516;     
     FI_MICROGRAFX = 1517;     
     FI_MACPAINT = 1518;     
     FI_CORELDRAW2 = 1520;     
     FI_CORELDRAW3 = 1521;     
     FI_HPGL = 1522;     
     FI_HARVARDDOS3 = 1523;     
     FI_HARVARDDOS2 = 1524;     
     FI_HARVARDDOS3PRS = 1525;     
     FI_FREELANCE = 1526;     
     FI_WPG2 = 1527;     
     FI_CGM = 1528;     
     FI_EXCELCHART = 1529;     
     FI_EXCEL3CHART = 1530;     
     FI_EXCEL4CHART = 1531;     
     FI_CANDY4 = 1532;     
     FI_HANAKO1 = 1533;     
     FI_HANAKO2 = 1534;     
     FI_JPEGFIF = 1535;     
     FI_EXCEL5CHART = 1536;     
     FI_CORELDRAW4 = 1537;     
     FI_POWERPOINT4 = 1538;     
     FI_DCX = 1539;     
     FI_POWERPOINT3 = 1540;     
     FI_CORELDRAW5 = 1541;     
     FI_OS2METAFILE = 1542;     
     FI_POWERPOINT7 = 1543;     
     FI_DXFA = 1544;     
     FI_DXFB = 1545;     
     FI_DXB = 1546;     
     FI_FREELANCE3 = 1547;     
     FI_POWERPOINTMAC3 = 1548;     
     FI_POWERPOINTMAC4 = 1549;     
     FI_PRESENTATIONS = 1550;     
     FI_OS2WARPBMP = 1551;     
     FI_AUTOCADDWG12 = 1552;     
     FI_AUTOCADDWG13 = 1553;     
     FI_ILLUSTRATOR = 1554;     
     FI_PRESENTATIONS7 = 1555;     
     FI_WPG7 = 1556;     
     FI_PDF = 1557;     
     FI_FRAMEMAKER = 1558;     
     FI_SUNRASTER = 1559;     
     FI_AUTOSHADE = 1560;     
     FI_KODAKPCD = 1561;     
     FI_EXTPOWERPOINT4 = 1562;     
     FI_EXTPOWERPOINTMAC4 = 1563;     
     FI_ENHWINDOWSMETA = 1564;     
     FI_GEM = 1565;     
     FI_POWERPOINTMACB3 = 1566;     
     FI_POWERPOINTMACB4 = 1567;     
  { These were added for GDSF support  }
  { Harvard Graphics for Windows  }
     FI_HARVARDWINDOWS = 1568;     
  { IGES Drawing File Format  }
     FI_IGES = 1569;     
  { IBM Picture Interchange Format  }
     FI_IBMPIF = 1570;     
  { X-Windows Bitmap  }
     FI_XBITMAP = 1571;     
  { X-Windows Pixmap  }
     FI_XPIXMAP = 1572;     
  { GP4, CALS Raster File Format  }
     FI_CALSRASTER = 1573;     
  { Portable Network Graphics Format  }
     FI_PNG = 1574;     
  { X-Windows Dump  }
     FI_XDUMP = 1575;     
     FI_CORELDRAWCLIPART = 1576;     
     FI_HPGALLERY = 1577;     
  { Graphics Data Format  }
     FI_GDF = 1578;     
     FI_DESIGNER = 1579;     
     FI_POSTSCRIPT = 1580;     
  { end of GDSF additions  }
     FI_POWERPOINT97 = 1581;     
     FI_CORELDRAW6 = 1582;     
     FI_CORELDRAW7 = 1583;     
     FI_PDFMACBIN = 1584;     
     FI_AUTOCADDWG = 1585;     
     FI_VISIO4 = 1586;     
     FI_AUTOCADDWG14 = 1587;     
     FI_PBM = 1588;     
     FI_PGM = 1589;     
     FI_PPM = 1590;     
     FI_ADOBEPHOTOSHOP = 1591;     
  { PowerPoint 95/97 Dual Storage  }
     FI_POWERPOINT9597 = 1592;     
     FI_PAINTSHOPPRO = 1593;     
     FI_FLASHPIX = 1594;     
     FI_VISIO5 = 1595;     
     FI_CORELDRAW8 = 1596;     
     FI_VISIO6 = 1597;     
     FI_CORELDRAW9 = 1598;     
     FI_PROGRESSIVEJPEG = 1599;     
  { PowerPoint 2000  }
     FI_POWERPOINT2000 = 1600;     
     FI_DGN = 1601;     
     FI_BMP5 = 1602;     
     FI_WBMP = 1603;     
     FI_MIFFG = 1604;     
     FI_POWERPOINT2 = 1605;     
     FI_WPG10 = 1606;     
     FI_VISIO3 = 1607;     
     FI_DESIGNER7 = 1608;     
  { PDF image filter  }
     FI_PDFIMAGE = 1609;     
  { StarOffice Impress 5.2  }
     FI_STAROFFICEIMPRESS52 = 1610;     
  { AI9 uses the PDF Filter  }
     FI_ILLUSTRATOR9 = 1611;     
     FI_AUTOCADDWG2000 = 1612;     
     FI_AUTOCADDWG2DOT5 = 1613;     
     FI_AUTOCADDWG2DOT6 = 1614;     
     FI_AUTOCADDWG9 = 1615;     
     FI_AUTOCADDWG10 = 1616;     
     FI_QUARKEXP_MAC30 = 1617;     
     FI_QUARKEXP_MAC31 = 1618;     
     FI_QUARKEXP_MAC32 = 1619;     
     FI_QUARKEXP_MAC33 = 1620;     
     FI_QUARKEXP_MAC40 = 1621;     
     FI_QUARKEXP_WIN33 = 1622;     
     FI_QUARKEXP_WIN40 = 1623;     
     FI_QUARKEXP_WIN50 = 1624;     
     FI_EXPORTIMAGE = 1625;     
  { StarOffice Draw 6 & 7  }
     FI_STAROFFICEDRAW6 = 1626;     
  { StarOffice Impress 6 & 7  }
     FI_STAROFFICEIMPRESS6 = 1627;     
  { JBIG2 - embeddings only  }
     FI_JBIG2 = 1628;     
     FI_CORELDRAW10 = 1629;     
     FI_CORELDRAW11 = 1630;     
  {Visio 2003  }
     FI_VISIO2003 = 1631;     
  { StarOffice Draw 8  }
     FI_STAROFFICEDRAW8 = 1632;     
  { StarOffice Impress 8  }
     FI_STAROFFICEIMPRESS8 = 1633;     
     FI_AUTOCADDWG2004 = 1634;     
  { PowerPoint 2007  }
     FI_POWERPOINT2007 = 1635;     
     FI_MICROSOFT_XPS = 1636;     
  { PowerPoint 2007  }
     FI_ENCRYPTED_PPT2007 = 1637;     
     FI_AUTOCADDWG2007 = 1638;     
  { OS/2 version 2 bitmap  }
     FI_OS2V2BMP = 1639;     
  { StarView Metafile  }
     FI_SVM = 1640;     
  { eFax document  }
     FI_EFAX = 1641;     
  { INTERNAL USE ONLY!!!!!!  }
     FI_EMBEDDEDBMP = $85DC;     
  { FI_EMBEDDED values are set to the non-embedded  }
     FI_EMBEDDEDTIFF = $85DD;     
  { option values with the high bit set to 1  }
     FI_EMBEDDEDGIF = $85DF;     
     FI_EMBEDDEDJPEGFIF = $85ff;     
     FI_EMBEDDEDPNG = $8626;     
     FI_EMBEDDEDWBMP = $8643;     
     FI_EMBEDDEDJBIG2 = $865C;     
     FI_WATERMARK = $865D;     
     FI_EMBEDDEDJP2 = $866E;     
     FI_DRM_POWERPOINT = 1642;     
     FI_DRM_POWERPOINT2007 = 1643;     
     FI_AUTODESK_DWF = 1644;     
     FI_CORELDRAW12 = 1645;     
     FI_JPEG2000 = 1646;     
     FI_ADOBEINDESIGN = 1647;     
  {NOT SUPPORTED }
     FI_JPEG2000JPF = 1648;     
  {NOT SUPPORTED }
     FI_JPEG2000MJ2 = 1649;     
     FI_GRAPHICEND = 1649;     
  {
      |   Other
       }
     FI_OTHERBEGIN = 1650;     
     FI_WPINFORMS1 = 1650;     
     FI_SNAPSHOTTEXT = 1651;     
     FI_SNAPSHOTBMP = 1652;     
     FI_ICF = 1653;     
  { Escher is the Microsoft drawing layer.  It is not
       * a separate file type, but is used in conjunction with
       * a host file type to express the drawings in a document.
       *
       * This ID is used by the Escher filter.
        }
     FI_ESCHER = 1654;     
  { Used exclusively by PDF Export as an export type  }
     FI_PDFA = 1655;     
     FI_OTHEREND = 1655;     
  {
      |   Multimedia
       }
     FI_MULTIMBEGIN = 1700;     
     FI_RIFFWAVE = 1700;     
     FI_RIFFAVI = 1701;     
     FI_MIDI = 1702;     
     FI_DIRECTOR = 1703;     
     FI_FLASH6 = 1704;     
  { For reverse compatability  }
     FI_FLASH = FI_FLASH6;     
     FI_QUICKTIME = 1705;     
  { MP3 file with ID3v1.x metadata  }
     FI_MP3_ID31 = 1706;     
  { MP3 file with ID3v2.x metadata  }
     FI_MP3_ID32 = 1707;     
  { Non-MP3 multimedia file with ID3v1.x metadata  }
     FI_ID31 = 1708;     
  { Non-MP3 multimedia file with ID3v2.x metadata  }
     FI_ID32 = 1709;     
  { MP3 file with no metadata  }
     FI_MP3 = 1710;     
  { MPEG-1 audio - Layer 1  }
     FI_MPGAV1L1 = 1711;     
  { MPEG-1 audio - Layer 2  }
     FI_MPGAV1L2 = 1712;     
  { MPEG-2 audio - Layer 1  }
     FI_MPGAV2L1 = 1713;     
  { MPEG-2 audio - Layer 2  }
     FI_MPGAV2L2 = 1714;     
  { MPEG-2 audio - Layer 3  }
     FI_MPGAV2L3 = 1715;     
  { Advanced Systems Format  }
     FI_ASF = 1716;     
  { Windows Media Video (ASF subtype)  }
     FI_WMV = 1717;     
  { Windows Media Audio (ASF subtype)  }
     FI_WMA = 1718;     
  { Microsoft Digital Video Recording (ASF subtype)  }
     FI_DVR_MS = 1719;     
  { Real Media (both Real Audio and Real Video)  }
     FI_REALMEDIA = 1720;     
  { MPEG-1 video  }
     FI_MPEG1 = 1721;     
  { MPEG-2 video  }
     FI_MPEG2 = 1722;     
  { ISO Base Media File Format  }
     FI_ISOBASEMEDIAFILE = 1723;     
  { MPEG-4 file   }
     FI_MPEG4 = 1724;     
  { MPEG-7 file   }
     FI_MPEG7 = 1725;     
  { Resource Interchange File Format file  }
     FI_RIFF = 1726;     
     FI_MULTIMEND = 1726;     
  {
      |   Special
       }
     FI_SPECIALBEGIN = 1800;     
     FI_EXECUTABLE = 1800;     
     FI_COM = 1801;     
     FI_ZIP = 1802;     
     FI_ZIPEXE = 1803;     
     FI_ARC = 1804;     
     FI_BINDER = 1805;     
     FI_UNIXCOMP = 1806;     
     FI_TAR = 1807;     
     FI_ENVOY = 1808;     
     FI_QUICKFINDER = 1809;     
     FI_WINCLIPFILE = 1810;     
     FI_ENVOY7 = 1811;     
     FI_STUFFIT = 1812;     
     FI_LZH = 1813;     
     FI_LZH_SFX = 1814;     
     FI_GZIP = 1815;     
     FI_JAVACLASS = 1816;     
     FI_MBOX = 1817;     
  { unsupported  }
     FI_NSF6 = 1818;     
     FI_ENCRYPTED_UNKNOWNMSFTOFFICEDOC = 1819;     
     FI_MSCAB = 1820;     
     FI_RAR = 1821;     
     FI_RAREXE = 1822;     
     FI_MICROSOFTINFOPATH = 1823;     
     FI_ONENOTE2007 = 1824;     
  { FI Only - Windows Media Player Playlist  }
     FI_WPL = 1825;     
     FI_SPECIALEND = 1825;     
  {
      |   Test application
       }
     FI_CHUNKERBINARY = 1900;     
     FI_TESTQUEUE = 1901;     
  { Used by the NULL Export filter for testing mem leaks  }
     FI_NULL = 1902;     
  { Used to test CA.  }
     FI_CATEST = 1903;     
  { Used to test Chunker output.  }
     FI_CHUNKEROUTPUTTEST = 1904;     
  { Not a real FI - Used by pipeline components when the protocol supports a single format for which there is no FI id  }
     FI_DEFAULT = 1995;     
  { Not a real FI - Used by pipeline components when their output format will be the same as their input formats  }
     FI_PASSTHROUGH = 1996;     
  { Not a real FI - Used by pipeline components that support any format  }
     FI_ANY = 1997;     
     FI_NONE = 1998;     
     FI_UNKNOWN = 1999;     
  {
      |   XML (see also FI_XML and FI_XML_DOCTYPE_HTML)
       }
     FI_XMLBEGIN = 2001;     
  { Not a real FI - Used by XML pipeline components that support any XML schema  }
     FI_XML_ANY = 2000;     
  { Flexiondoc 1 (original) schema  }
     FI_XML_FLEXIONDOC = 2001;     
  { Flexiondoc 2 schema  }
     FI_XML_FLEXIONDOC2 = 2002;     
  { Flexiondoc 3 schema  }
     FI_XML_FLEXIONDOC3 = 2003;     
  { Flexiondoc 4 schema  }
     FI_XML_FLEXIONDOC4 = 2004;     
  { Flexiondoc 5 schema  }
     FI_XML_FLEXIONDOC5 = 2005;     
  { Flexiondoc 5.1 schema  }
     FI_XML_FLEXIONDOC5_1 = 2006;     
  { Domino XML schema  }
     FI_XML_DXL = 2007;     
  { Flexiondoc 5.2 schema  }
     FI_XML_FLEXIONDOC5_2 = 2008;     
  { 2009 retired  }  { Adobe Indesign Interchange  }
     FI_XML_ADOBEINX = 2010;     
     FI_XML_VISIO = 2012;     
  {
      |   HTML/Wireless Export component flavors
      |
      |   IDs 2011 - 2029 are reserved for HTML/Wireless Export (FlexionDoc active component)
       }
     FI_ML = 2011;     
  { Mail archive DXL  }
     FI_DXL_MAILARCHIVE = 2015;     
  { Mail message DXL  }
     FI_DXL_MAILMESSAGE = 2016;     
  { Generic DXL  }
     FI_DXL_GENERIC = 2017;     
  { #define FI_HTMLRESERVED_LAST 2029  }
  { Flexiondoc 5.3 schema  }
     FI_XML_FLEXIONDOC5_3 = 2030;     
  { Reserved  }
     FI_XML_OPENDOCUMENT_1_0 = 2031;     
  { Flexiondoc 5.4 schema  }
     FI_XML_FLEXIONDOC5_4 = 2032;     
  { This FI will always refer to the most recent FlexionDoc schema }
     FI_XML_FLEXIONDOC_LATEST = 2033;     
     FI_XML_FLEXIONDOC_CURRENT = FI_XML_FLEXIONDOC5_4;     
     FI_XML_BITFORM = 2090;     
     FI_XMLEND = 2099;     
  {
  |  New Section for graphics
   }
     FI_GRAPHIC2BEGIN = 2200;     
     FI_AUTOCADDWG2008 = 2200;     
     FI_PUBLISHER2003 = 2201;     
     FI_PUBLISHER2007 = 2202;     
  { Open Office Impress 6  }
     FI_OPENOFFICEIMPRESS1 = 2203;     
  { Open Office Impress 8  }
     FI_OPENOFFICEIMPRESS2 = 2204;     
  { IBM Lotus Symphony Presentations  }
     FI_SYMPHONYPRESENTATION = 2205;     
  { Open Office Draw 6  }
     FI_OPENOFFICEDRAW1 = 2206;     
  { Open Office Draw 8  }
     FI_OPENOFFICEDRAW2 = 2207;     
  { PowerPoint 2007 Template }
     FI_POWERPOINTTEMPLATE2007 = 2208;     
  { PowerPoint 2007 Macro Enabled }
     FI_POWERPOINT2007_MACRO = 2209;     
  { PowerPoint 2007 Template Macro Enabled }
     FI_POWERPOINTTEMPLATE2007_MACRO = 2210;     
  { PowerPoint 2007 Slideshow file  }
     FI_POWERPOINTSLIDESHOW2007 = 2211;     
  { PowerPoint 2007 Template Macro Enabled }
     FI_POWERPOINTSLIDESHOW2007_MACRO = 2212;     
  { Oracle Multimedia internal raster format  }
     FI_RPIX = 2213;     
  { Open Office Impress 8  }
     FI_OPENOFFICEIMPRESS3 = 2214;     
  { Open Office Draw 8  }
     FI_OPENOFFICEDRAW3 = 2215;     
  { Corel presentations X4  }
     FI_PRESENTATIONS_X4 = 2216;     
     FI_ACCESSSNAPSHOT = 2217;     
     FI_STAROFFICEIMPRESS9 = 2218;     
     FI_STAROFFICEDRAW9 = 2219;     
     FI_ORACLEOPENOFFICEIMPRESS3 = 2220;     
     FI_ORACLEOPENOFFICEDRAW3 = 2221;     
     FI_POWERPOINT2010 = 2222;     
     FI_POWERPOINTTEMPLATE2010 = 2223;     
     FI_POWERPOINTTEMPLATE2010_MACRO = 2224;     
     FI_POWERPOINTSLIDESHOW2010 = 2225;     
     FI_POWERPOINT2010_MACRO = 2226;     
     FI_POWERPOINTSLIDESHOW2010_MACRO = 2227;     
     FI_ENCRYPTED_PPT2010 = 2228;     
     FI_GRAPHIC2END = 2228;     
  {
  |   New section for internal IDs
  |   None defined here, just reserving the range
  |	Update: defining FI_PERFORMANCE as first entry in range --jm 2009-07-10
   }
     FI_OITINTERNALBEGIN = 2300;     
     FI_OITINTERNALEND = 2399;     
     FI_PERFORMANCE = FI_OITINTERNALBEGIN+0;     
  {
      |    Reserved (Writer's Toolkit)
       }
  { Was 1600 to ...  }
     FI_RESERVEDBEGIN = 2990;     
     FI_TKTHESAURUS = 2990;     
     FI_TKABBREV = 2991;     
     FI_TKDICTIONARY = 2992;     
     FI_TKQUOTE = 2993;     
     FI_TKWRITTENWORD = 2994;     
     FI_TKCULTURELIT = 2995;     
     FI_TKGRAMMAR = 2996;     
     FI_TKTHESSYN = 2997;     
  { ... 1607  }
     FI_RESERVEDEND = 2997;     
  {
      | Range of FIs reserved for OEM use
       }
     FI_OEMBEGIN = 3000;     
     FI_OEMEND = 3999;     
  {
      |
      |   Non-standard file identification codes reserved by SCC
      |
       }
  {
      |   Codes used to force generic views and specific encodings
       }
     FI_GENERICBEGIN = 4000;     
  { Text - ASCII - 7bit  }
     FI_ASCII = 4000;     
  { Hex  }
     FI_HEX = 4001;     
  { Text - ANSI - 7bit  }
     FI_ANSI = 4002;     
  { Text - UNICODE  }
     FI_UNICODE = 4003;     
  { Text - ASCII - 8bit  }
     FI_ASCII8 = 4004;     
  { Text - ANSI - 8bit  }
     FI_ANSI8 = 4005;     
     FI_DONTVIEW = 4006;     
  { Text - MAC - 7bit  }
     FI_MAC = 4007;     
  { Text - MAC - 8bit  }
     FI_MAC8 = 4008;     
     FI_SHIFTJIS = 4009;     
     FI_CHINESEGB = 4010;     
     FI_HANGEUL = 4011;     
     FI_CHINESEBIG5 = 4012;     
  { Code page 852 - MS DOS Slavic  }
     FI_LATIN2 = 4013;     
     FI_JAPANESE_EUC = 4014;     
  {** Bidi ** }
     FI_HEBREW_OLDCODE = 4015;     
     FI_HEBREW_PC8 = 4016;     
     FI_HEBREW_E0 = 4017;     
     FI_HEBREW_WINDOWS = 4018;     
     FI_ARABIC_710 = 4019;     
     FI_ARABIC_720 = 4020;     
     FI_ARABIC_WINDOWS = 4021;     
  { Used by the extended FI to ID text  }
     FI_7BITTEXT = 4022;     
     FI_JAPANESE_JIS = 4023;     
     FI_CENTRALEU_1250 = 4024;     
     FI_UTF8 = 4025;     
  { U.S. English/Portuguese EBCDIC Text                       }
     FI_EBCDIC_37 = 4026;     
  { Austrian/German EBCDIC Text                               }
     FI_EBCDIC_273 = 4027;     
  { Danish/Norwegian EBCDIC Text                              }
     FI_EBCDIC_277 = 4028;     
  { Finnish/Swedish EBCDIC Text                               }
     FI_EBCDIC_278 = 4029;     
  { Italian EBCDIC Text                                       }
     FI_EBCDIC_280 = 4030;     
  { Spanish EBCDIC Text                                       }
     FI_EBCDIC_284 = 4031;     
  { U.K. English EBCDIC Text                                  }
     FI_EBCDIC_285 = 4032;     
  { French EBCDIC Text                                        }
     FI_EBCDIC_297 = 4033;     
  { Belgian/International EBCDIC Text                         }
     FI_EBCDIC_500 = 4034;     
  { Hungarian/Polish/Yugoslavian/Czechoslovakian EBCDIC Text  }
     FI_EBCDIC_870 = 4035;     
  { Icelandic EBCDIC Text                                     }
     FI_EBCDIC_871 = 4036;     
  { Turkish EBCDIC Text                                       }
     FI_EBCDIC_1026 = 4037;     
  { U.S. English/Portuguese EBCDIC HTML                       }
     FI_HTML_EBCDIC_37 = 4038;     
  { Austrian/German IBM EBCDIC HTML                           }
     FI_HTML_EBCDIC_273 = 4039;     
  { Danish/Norwegian IBM EBCDIC HTML                          }
     FI_HTML_EBCDIC_277 = 4040;     
  { Finnish/Swedish IBM EBCDIC HTML                           }
     FI_HTML_EBCDIC_278 = 4041;     
  { Italian IBM EBCDIC HTML                                   }
     FI_HTML_EBCDIC_280 = 4042;     
  { Spanish IBM EBCDIC HTML                                   }
     FI_HTML_EBCDIC_284 = 4043;     
  { U.K. English IBM EBCDIC HTML                              }
     FI_HTML_EBCDIC_285 = 4044;     
  { French IBM EBCDIC HTML                                    }
     FI_HTML_EBCDIC_297 = 4045;     
  { Belgian/International IBM EBCDIC HTML                     }
     FI_HTML_EBCDIC_500 = 4046;     
  { Hungarian/Polish/Yugoslavian/Czechoslovakian EBCDIC HTML  }
     FI_HTML_EBCDIC_870 = 4047;     
  { Icelandic IBM EBCDIC HTML                                 }
     FI_HTML_EBCDIC_871 = 4048;     
  { Turkish IBM EBCDIC HTML                                   }
     FI_HTML_EBCDIC_1026 = 4049;     
     FI_UUENCODEDTEXT = 4050;     
     FI_UUENCODEDPART = 4051;     
     FI_XXENCODEDTEXT = 4052;     
     FI_XXENCODEDPART = 4053;     
     FI_YENCODEDTEXT = 4054;     
     FI_YENCODEDPART = 4055;     
     FI_BINHEXENCODEDTEXT = 4056;     
     FI_BINHEXENCODEDPART = 4057;     
  { Arabic Text                ASMO-708                       }
     FI_ARABIC_ASMO708 = 4058;     
  { Arabic Text                DOS OEM 720 TRANSPARENT ASMO   }
     FI_ARABIC_DOS = 4059;     
  { Arabic Text                ISO 8859-6                     }
     FI_ARABIC_ISO = 4060;     
  { Arabic Text                Mac                            }
     FI_ARABIC_MAC = 4061;     
  { Baltic Text                ISO 8859-4                     }
     FI_BALTIC_ISO = 4062;     
  { Baltic Text                Windows ANSI 1257              }
     FI_BALTIC_WINDOWS = 4063;     
  { Central European Text      DOS OEM 852 Latin II           }
     FI_CENTRALEUROPEAN_DOS = 4064;     
  { Central European Text      ISO 8859-2                     }
     FI_CENTRALEUROPEAN_ISO = 4065;     
  { Central European Text      Mac                            }
     FI_CENTRALEUROPEAN_MAC = 4066;     
  { Central European Text      Windows ANSI 1250              }
     FI_CENTRALEUROPEAN_WINDOWS = 4067;     
  { Chinese Simplified Text    Windows ANSI 936 (GB2312)      }
     FI_CHINESESIMPLIFIED_WINDOWS = 4068;     
  { Chinese Traditional Text   Windows ANSI 950 (BIG5)        }
     FI_CHINESETRADITIONAL_WINDOWS = 4069;     
  { Cyrillic Text              DOS OEM 855                    }
     FI_CYRILLIC_DOS = 4070;     
  { Cyrillic Text              ISO 8859-5                     }
     FI_CYRILLIC_ISO = 4071;     
  { Cyrillic Text              KOI8-R                         }
     FI_CYRILLIC_KOI8R = 4072;     
  { Cyrillic Text              Mac                            }
     FI_CYRILLIC_MAC = 4073;     
  { Cyrillic Text              Windows ANSI 1251              }
     FI_CYRILLIC_WINDOWS = 4074;     
  { Greek Text                 ISO 8859-7                     }
     FI_GREEK_ISO = 4075;     
  { Greek Text                 Mac                            }
     FI_GREEK_MAC = 4076;     
  { Greek Text                 Windows ANSI 1253              }
     FI_GREEK_WINDOWS = 4077;     
  { Hebrew Text                DOS OEM 862                    }
     FI_HEBREW_DOS = 4078;     
  { Hebrew Text                ISO 8859-8                     }
     FI_HEBREW_ISO_VISUAL = 4079;     
  { Japanese Text              Mac                            }
     FI_JAPANESE_MAC = 4080;     
  { DEPRECATED - #define FI_JAPANESE_SHIFTJIS  4081 - Japanese Text               Windows Shift-JIS ANSI 932     }
  { Korean Text                Windows ANSI 1361 (Johab)      }
     FI_KOREAN_JOHAB = 4082;     
  { Korean Text                Windows ANSI 949               }
     FI_KOREAN_WINDOWS = 4083;     
  { Russian Text               DOS OEM 866                    }
     FI_RUSSIAN_DOS = 4084;     
  { Thai Text                  Windows ANSI 874               }
     FI_THAI_WINDOWS = 4085;     
  { Turkish Text               DOS OEM 857                    }
     FI_TURKISH_DOS = 4086;     
  { Turkish Text               ISO 8859-9                     }
     FI_TURKISH_ISO = 4087;     
  { Turkish Text               Mac                            }
     FI_TURKISH_MAC = 4088;     
  { Turkish Text               Windows ANSI 1254              }
     FI_TURKISH_WINDOWS = 4089;     
  { Vietnamese Text            Windows ANSI 1258              }
     FI_VIETNAMESE_WINDOWS = 4090;     
  { Western European Text      ISO 8859-1                     }
     FI_WESTERNEUROPEAN_ISO = 4091;     
  { Western European Text      Mac                            }
     FI_WESTERNEUROPEAN_MAC = 4092;     
  { Western European Text      Windows ANSI 1252              }
     FI_WESTERNEUROPEAN_WINDOWS = 4093;     
  { Arabic HTML                ASMO-708                       }
     FI_HTML_ARABIC_ASMO708 = 4094;     
  { Arabic HTML                DOS OEM 720 TRANSPARENT ASMO   }
     FI_HTML_ARABIC_DOS = 4095;     
  { Arabic HTML                ISO 8859-6                     }
     FI_HTML_ARABIC_ISO = 4096;     
  { Arabic HTML                Mac                            }
     FI_HTML_ARABIC_MAC = 4097;     
  { Arabic HTML                Windows ANSI 1256              }
     FI_HTML_ARABIC_WINDOWS = 4098;     
  { Baltic HTML                ISO 8859-4                     }
     FI_HTML_BALTIC_ISO = 4099;     
  { Baltic HTML                Windows ANSI 1257              }
     FI_HTML_BALTIC_WINDOWS = 4100;     
  { Central European HTML      DOS OEM 852 Latin II           }
     FI_HTML_CENTRALEUROPEAN_DOS = 4101;     
  { Central European HTML      ISO 8859-2                     }
     FI_HTML_CENTRALEUROPEAN_ISO = 4102;     
  { Central European HTML      Mac                            }
     FI_HTML_CENTRALEUROPEAN_MAC = 4103;     
  { Central European HTML      Windows ANSI 1250              }
     FI_HTML_CENTRALEUROPEAN_WINDOWS = 4104;     
  { Chinese Simplified HTML    EUC                            }
     FI_HTML_CHINESESIMPLIFIED_EUC = 4105;     
  { Chinese Simplified HTML    Windows ANSI 936 (GB2312)      }
     FI_HTML_CHINESESIMPLIFIED_WINDOWS = 4106;     
  { Chinese Traditional HTML   Windows ANSI 950 (BIG5)        }
     FI_HTML_CHINESETRADITIONAL_WINDOWS = 4107;     
  { Cyrillic HTML              DOS OEM 855                    }
     FI_HTML_CYRILLIC_DOS = 4108;     
  { Cyrillic HTML              ISO 8859-5                     }
     FI_HTML_CYRILLIC_ISO = 4109;     
  { Cyrillic HTML              KOI8-R                         }
     FI_HTML_CYRILLIC_KOI8R = 4110;     
  { Cyrillic HTML              Mac                            }
     FI_HTML_CYRILLIC_MAC = 4111;     
  { Cyrillic HTML              Windows ANSI 1251              }
     FI_HTML_CYRILLIC_WINDOWS = 4112;     
  { Greek HTML                 ISO 8859-7                     }
     FI_HTML_GREEK_ISO = 4113;     
  { Greek HTML                 Mac                            }
     FI_HTML_GREEK_MAC = 4114;     
  { Greek HTML                 Windows ANSI 1253              }
     FI_HTML_GREEK_WINDOWS = 4115;     
  { Hebrew HTML                DOS OEM 862                    }
     FI_HTML_HEBREW_DOS = 4116;     
  { Hebrew HTML                ISO 8859-8                     }
     FI_HTML_HEBREW_ISO_VISUAL = 4117;     
  { Hebrew HTML                Windows ANSI 1255              }
     FI_HTML_HEBREW_WINDOWS = 4118;     
  { Japanese HTML              Mac                            }
     FI_HTML_JAPANESE_MAC = 4119;     
  { Japanese HTML              Windows Shift-JIS ANSI 932     }
     FI_HTML_JAPANESE_SHIFTJIS = 4120;     
  { Korean HTML                Windows ANSI 1361 (Johab)      }
     FI_HTML_KOREAN_JOHAB = 4121;     
  { Korean HTML                Windows ANSI 949               }
     FI_HTML_KOREAN_WINDOWS = 4122;     
  { Russian HTML               DOS OEM 866                    }
     FI_HTML_RUSSIAN_DOS = 4123;     
  { Thai HTML                  Windows ANSI 874               }
     FI_HTML_THAI_WINDOWS = 4124;     
  { Turkish HTML               DOS OEM 857                    }
     FI_HTML_TURKISH_DOS = 4125;     
  { Turkish HTML               ISO 8859-9                     }
     FI_HTML_TURKISH_ISO = 4126;     
  { Turkish HTML               Mac                            }
     FI_HTML_TURKISH_MAC = 4127;     
  { Turkish HTML               Windows ANSI 1254              }
     FI_HTML_TURKISH_WINDOWS = 4128;     
  { Vietnamese HTML            Windows ANSI 1258              }
     FI_HTML_VIETNAMESE_WINDOWS = 4129;     
  { Western European HTML      ISO 8859-1                     }
     FI_HTML_WESTERNEUROPEAN_ISO = 4130;     
  { Western European HTML      Mac                            }
     FI_HTML_WESTERNEUROPEAN_MAC = 4131;     
  { Western European HTML      Windows ANSI 1252              }
     FI_HTML_WESTERNEUROPEAN_WINDOWS = 4132;     
     FI_GENERICEND = 4132;     
     FI_PLUGIN = 4750;     
  { for backwards compatibility   }
     FI_JAPANESE_SHIFTJIS = FI_SHIFTJIS;     
  {
      |   Bitmap/Vector formats stored internally by applications
       }
     FI_BITMAPBEGIN = 5000;     
  { Word for Windows internal metafile  }
     FI_BINARYMETAFILE = 5000;     
  { WordPerfect internal WPG, no header  }
     FI_WPFWPG = 5001;     
  { Ami internal snap shot  }
     FI_AMISNAPSHOT = 5002;     
  { Word internal snap shoot  }
     FI_WORDSNAPSHOT = 5003;     
  { Macintosh PICT without 512 byte header  }
     FI_BINARYMACPICT = 5004;     
  { Word for Windows internal metafile bitmap  }
     FI_BINARYMETABMP = 5005;     
  { Word for Windows 6 internal metafile  WITH metfilepict header  }
     FI_BINARYMETAPICT = 5006;     
  { PerfectWorks internal embedding  }
     FI_WPFWORKSEMBED = 5007;     
  { Bitmap embedded in a WPG2 file  }
     FI_WPG2EMBED = 5008;     
  { Bitmap w/o BITMAPFILEHEADER in WKS  }
     FI_WINDOWSDIB = 5009;     
  { Bitmap embedded in a WPG1 file  }
     FI_WPG1EMBED = 5010;     
  { Bitmap embedded in another format handled by GDSF  }
     FI_GDSFEMBED = 5011;     
  { Bitmap embedded in Excel with just BITMAPCOREINFO as a header  }
     FI_WINBMPCOREINFO = 5012;     
  { Black & White Bitmap embedded in Interleaf  }
     FI_IAFBWEMBED = 5013;     
  { Color Bitmap embedded in Interleaf  }
     FI_IAFCOLOREMBED = 5014;     
  { Bitmap embedded in a PICT file  }
     FI_PICTEMBED = 5015;     
     FI_BITMAPEND = 5015;     
  { Export OCR data as Text, no formatting }
     FI_OCRTEXT = 5100;     
  { Export OCR data as RTF, yes formatting }
     FI_OCRRTF = 5101;     
  { Export OCR data as HTML. }
     FI_OCRHTML = 5102;     
     FI_IDEND = 5102;     
  { EDRM export  }
     FI_EDRM1 = 5200;     
  {
  	|  OI Interface formats
  	 }
     FI_OIFACEBEGIN = 6000;     
  { iface/OIActiveComponent.h  }
     FI_OIACTIVECOMPONENT = 6000;     
  { iface/OIDocument.h  }
     FI_OIDOCUMENT = 6001;     
  { iface/OIVect.h  }
     FI_OIVECT = 6002;     
  { iface/OISimpleVect.h  }
     FI_OISIMPLEVECT = 6003;     
  { iface/OIVect3D.h  }
     FI_OIVECT3D = 6004;     
  { iface/OIText.h  }
     FI_OITEXT = 6005;     
  { iface/OIChart.h  }
     FI_OICHART = 6006;     
  { iface/OISmartArt.h  }
     FI_OISMARTART = 6007;     
  { iface/OIChunkerInfo.h  }
     FI_OICHUNKERINFO = 6008;     
  { iface/OIVectorHotspots.h  }
     FI_OIVECTORHOTSPOTS = 6009;     
  { iface/OIChunker.h  }
     FI_OICHUNKER = 6010;     
  { iface/OIFilter.h  }
     FI_OIFILTER = 6011;     
     FI_OIFACEEND = 6009;     
  {
      |
      |   Entry points
      |
       }

  type
     PFIGET = ^FIGET;
     FIGET = record
       wId : VTWORD;
     end;
     PPFIGET = ^PFIGET;

  const
     FIFLAG_NORMAL = 0;     
     FIFLAG_EXTENDEDFI = 1;     
     FIFLAG_OVERRIDEOPTIONS = 2;     

  function FIIdFileEx(
    _para1:VTDWORD;
    _para2:PVTVOID;
    _para3:VTDWORD;
    _para4:PVTWORD;
    _para5:VTLPTSTR;
    _para6:VTWORD
  ):VTWORD; cdecl;external External_library name 'FIIdFileEx';
  function FIGetFirstId(_para1:PFIGET; _para2:PVTWORD; _para3:VTLPTSTR; _para4:VTWORD):VTBOOL;cdecl;external External_library name 'FIGetFirstId';
  function FIGetNextId(_para1:PFIGET; _para2:PVTWORD; _para3:VTLPTSTR; _para4:VTWORD):VTBOOL;cdecl;external External_library name 'FIGetNextId';
  function FIGetIDString(_para1:VTWORD; _para2:VTLPTSTR; _para3:VTWORD):VTWORD;cdecl;external External_library name 'FIGetIDString';
  function FIIdSpecial(_para1:HIOFILE; _para2:VTWORD):VTWORD;cdecl;external External_library name 'FIIdSpecial';
  function FIIdFile(_para1:VTDWORD; _para2:PVTVOID; _para3:VTDWORD; _para4:PVTWORD):VTWORD;cdecl;external External_library name 'FIIdFile';
  function FIIdHandle(_para1:HIOFILE; _para2:VTDWORD; _para3:PVTWORD):VTSHORT;cdecl;external External_library name 'FIIdHandle';
//{$ifdef UNIX_PTHREAD}
//  function FIThreadInit(ThreadOption:VTSHORT):VTLONG;cdecl;external External_library name 'FIThreadInit';
//  function FIThreadInitExt(Lock:function (_para1:PVTVOID):VTLONG; Unlock:function (_para1:PVTVOID):VTLONG):VTLONG;cdecl;external External_library name 'FIThreadInitExt';
//{$endif}
  function FIInit:VTDWORD;cdecl;external External_library name 'FIInit';
  function FIDeInit:VTDWORD;cdecl;external External_library name 'FIDeInit';

//  { defines for thread initialization.  Needed only for UNIX  }
//
//  const
//     FITHREAD_INIT_PTHREADS = 0;
//     FITHREAD_INIT_NOTHREADS = 1;
//     FITHREAD_INIT_NATIVETHREADS = 2;
//     FITHREAD_INIT_SUCCESS = 0;
//     FITHREAD_INIT_FAILED = 1;
//     FITHREAD_INIT_ALREADY_CALLED = 2;

implementation

end.
