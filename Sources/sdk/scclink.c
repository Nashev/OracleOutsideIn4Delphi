/* Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved. */ 

#ifdef WINDOWS
#ifndef SCC_PACK_SET
#define SCC_PACK_SET 1
#define SCC_PACKED_BY_SCCLINK_C 1
#pragma pack(push,8)
#endif /* SCC_PACK_SET */
#endif /* WINDOWS */

#include <windows.h>
#include <direct.h>
#include <ctype.h>

#if defined(__cplusplus)
extern "C"
{
#endif



#ifdef WIN32
#define MYCHARPTR   VTLPSTR
#endif 

static HINSTANCE SCCLoadViewerDLL(VTLPTSTR lpViewerPath)
{
    HINSTANCE   locRet = 0;
    VTLPTSTR    locDirPtr;
    VTTCHAR     *locPath = NULL;
    VTTCHAR     *locDir = NULL;
    VTWORD      wPathLen; 

    wPathLen = lstrlen(lpViewerPath);

    locDir = (VTTCHAR *)malloc((wPathLen + 1) * sizeof(VTTCHAR));
    if(locDir)
    {
        /*
        |   Make copy of load path
        */

        lstrcpy(locDir,lpViewerPath);

        /*
        |   Strip off trailing "\"
        */
        locDirPtr = locDir;
        while (*locDirPtr != 0x00)  locDirPtr++;
        locDirPtr--;
        if (*locDirPtr == '\\') *locDirPtr = 0x00;

        /* 11 comes from adding "\SCCVW.DLL" plus the null terminator
        |  to locDir
        */
        locPath = (VTTCHAR *)malloc((wPathLen + 11) * sizeof(VTTCHAR));
        if(locPath)
        {
            /*
            |   Load the library
            */
            lstrcpy(locPath,locDir);
            lstrcat(locPath,"\\");
            lstrcat(locPath,"SCCVW.DLL");
            locRet = LoadLibraryEx(locPath, NULL, LOAD_WITH_ALTERED_SEARCH_PATH);
            free(locPath);
        }
        free(locDir);
    }
    return(locRet);
}


static VTVOID SCCGetExePath(HINSTANCE hInst,VTLPTSTR lpPath,VTWORD wPathLen)
{
    GetModuleFileName(hInst, lpPath, wPathLen);

    /*
    |   Strip the file name
    */

    while (*lpPath != 0x00)
        lpPath++;
    while (*lpPath != '\\' && *lpPath != ':')
        lpPath--;
    lpPath++;
    *lpPath = 0x00;
}

#if defined(__cplusplus)
}
#endif

#ifdef SCC_PACKED_BY_SCCLINK_C
#pragma pack(pop)
#undef SCC_PACKED_BY_SCCLINK_C
#undef SCC_PACK_SET
#endif /* SCC_PACKED_BY_SCCLINK_C */
