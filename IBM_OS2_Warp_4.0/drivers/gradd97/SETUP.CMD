/*******************************************************/
/* Before running, SET LANG= to the correct language.  */
/* It may already be correctly set in your CONFIG.SYS. */
/* For examples:                                       */
/* SET LANG=ar_AA for Arabic                           */
/* SET LANG=pt_BR for Brazil                           */
/* SET LANG=zh_CN for Simplified Chinese               */
/* SET LANG=de_DE for Germany                          */
/* SET LANG=da_DK for Denmark                          */
/* SET LANG=es_ES for Spain                            */
/* SET LANG=el_GR for Greece                           */
/* SET LANG=fi_FI for Finland                          */
/* SET LANG=fr_FR for France                           */
/* SET LANG=iw_IL for Israel                           */
/* SET LANG=it_IT for Italy                            */
/* SET LANG=ja_JP for Japan                            */
/* SET LANG=ko_KR for Korea                            */
/* SET LANG=nl_NL for Netherlands                      */
/* SET LANG=no_NO for Norway                           */
/* SET LANG=sv_SE for Sweden                           */
/* SET LANG=zh_TW for Taiwan                           */
/* SET LANG=en_US for English (default)                */
/*******************************************************/

/*****************************************
* Intialize Rexxutil Functions
******************************************/

  call RxFuncAdd 'SysLoadFuncs' , 'REXXUTIL', 'SysLoadFuncs'

  signal on syntax name MsgExit

  call SysLoadFuncs

  numeric digits 12

/******************************************
* Define message ids from *mid*.h
*******************************************/

  MSG_NO_ERROR               =    0
  MSG_SYSINIT_BOOT_NOT_FD    = 1475
  MSG_INCORRECT_DOSVER       = 1210
  MSG_NO_META_MATCH          =  257
  MSG_PRINT_FILE_NOT_FOUND   = 1533
  MSG_COMP_INVALID_PATH      = 1171
  MSG_BOOT_MUST_RESTART      = 1716
  MSG_INSTALL_UNSUCCESSFUL   = 1975
  MSG_INSTALL_HY_HDR         = 1976
  MSG_PROC_NOT_FOUND         =  127
  MSG_REP_SOUR_PATH_REQ      = 1137
  MSG_SYS_INV_DRIVE          = 1461
  MSG_CHCP_INVALID_PARAMETER = 1761
  MSG_UNP_INSERT_PI          = 1218
  MSG_ERR_PROC_ARG           = 1249
  MSG_MBS_INVALID_COMMAND    =  872
  MSG_USAGE                  =  734
  MSG_BAD_UNIT               =   20
  MSG_CANNOT_MAKE            =   82
  REXX_FUNCTION_NOT_FOUND    =   43
  SPTReboot                  = x2d('FE00',4)
  SPTRebootErr               = x2d('FE08',4)
  SPTWithErr                 = x2d('0008',4)

/*****************************************
* Initialized globals
******************************************/

  env = 'OS2ENVIRONMENT'
  lang = value('LANG',,env)
  nlv = SubStr(lang,4)
  if nlv = ''
  then nlv = 'en'
  parse source one two me
  if arg() == 0
  then cmdline = ''
  else cmdline = arg(1)
  srcPath = filespec('Drive', me) || filespec('Path', me)
  files = srcPath || nlv || '\*.*'
  if stream(files, 'c', 'query exists') = ''
  then nlv = 'en'
  if nlv == 'cn' or nlv == 'jp' or nlv == 'kr' or nlv = 'tw'
  then cs = 'dbcs'
  else cs = 'sbcs'
  if nlv == 'kr'
  then dos = 'kr'
  else dos = cs
  cidInst = ''

/*****************************************
* GRADD only globals
******************************************/

  GRADDKEYS    = 'ATI CHP DYN G_V GEN MGA NM S3 TRI VIRGE VGA'
  GRADDDSCS    = 'm64grdbb chpgrdbb dyngrdbb g_vgrdbb gengrdbb mgagrdbb nmgrdbb s3grdbb trigrdbb s3dgrdbb vgagrdbb'
  graddPackDSC = 'grdpack.dsc'

/*****************************************
* Set up Source Paths
******************************************/

  srcName = filespec('Name', me)

/*****************************************
* Set up default boot drive.
* GRADD is not supported on OS/2 Versions less than 3.0.
* Let us verify we have the right version now.
******************************************/

  parse value(SysOS2Ver()) with major '.' os2Ver
  rc = MSG_INCORRECT_DOSVER
  select
    when major < 2 then call MsgExit MyGetMsg(SysGetMessage(MSG_INCORRECT_DOSVER))
    when datatype(os2Ver) \= 'NUM' then call MsgExit MyGetMsg(SysGetMessage(MSG_INCORRECT_DOSVER))
    when os2Ver < 30 then call MsgExit MyGetMsg(SysGetMessage(MSG_INCORRECT_DOSVER))
    /* SysBootDrive() only works on WSeB level code */
    when os2Ver < 45 /* Before WSeB */
      then do
        /* We must make best "guess" */
        rc = MSG_NO_ERROR
        os2bootpath = SysSearchPath('PATH', 'os2boot')
        if os2bootpath == ''
        then do
          /* Maybe boot drive root is not in path! */
          os2bootpath = translate(value('PATH',,env))
          if os2bootpath \= ''
          then do
            first = pos(':\OS2;', os2bootpath)
            if first <= 0
            then os2bootpath = ''
            else do
              os2bootpath = substr(os2bootpath, first - 1, 2)
              bootDrive = filespec('drive', os2bootPath)
              file1 = bootDrive || '\os2boot'
              call SysFileTree file1,'file','F'
              if file.0 == 0
              then os2bootpath = ''
            end
          end
        end
        if os2bootpath == ''
        then do
          /* Maybe boot drive \OS2 has been renamed! */
          os2bootpath = SysSearchPath('PATH', 'unpack2.exe')
          if os2bootpath \= ''
          then do
            bootDrive = filespec('drive', os2bootPath)
            file1 = bootDrive || '\os2boot'
            call SysFileTree file1,'file','F'
            if file.0 == 0
            then os2bootpath = ''
          end
          if os2bootpath == ''
          then do
            /* Maybe unpack2 is not on boot drive! */
            os2bootpath = Directory()
            bootDrive = filespec('drive', os2bootPath)
            file1 = bootDrive || '\os2boot'
            call SysFileTree file1,'file','F'
            if file.0 == 0
            then call MsgExit SysGetMessage(MSG_SYSINIT_BOOT_NOT_FD)
          end
        end
      end
    otherwise /* WSeB or after */
      os2bootpath = SysBootDrive()
  end
  rc = MSG_NO_ERROR
  bootDrive = filespec('drive', os2bootPath)

/******************************************
* Verify options if any
*******************************************/

  if arg() == 0
    then call Usage
    else do
       parse value(cmdline) with tmp1 '/' option tmp2
       if option \= ''
       then do
          if translate(option) == 'U'
          then do
             cidInst = ' /u'
             cmdline = tmp1 || tmp2
          end
          else do
             say MyGetMsg(SysGetMessage(MSG_MBS_INVALID_COMMAND,, '"' || '/' || option || '"'))
             call Usage
          end
       end
       parse value(cmdline) with gradd srcTmp bootTmp junk
       if junk \= '' then call Usage
       if wordpos(translate(gradd), GRADDKEYS) == 0
         then call Usage
         else dscFile = word(GRADDDSCS, wordpos(translate(gradd), GRADDKEYS)) || '.dsc'
       if srcTmp \= ''
         then do
            if filespec('Drive',srcTmp) == strip(srcTmp, 'T', '\')
              then srcChk = srcTmp
              else srcChk = strip(srcTmp, 'T', '\') || '\'
            file1 = srcChk || srcName
            call SysFileTree file1, 'file', 'F'
            if file.0 == 0
              then do
                 say FileNotFound( file1 )
                 say MyGetMsg(SysGetMessage(MSG_CHCP_INVALID_PARAMETER,,srcTmp))
                 call Usage
              end
              else srcPath = srcChk
         end
       if bootTmp \= ''
         then do
            bootTmp   = strip(bootTmp, 'T', '\')
            file1 = bootTmp || '\OS2BOOT'
            call SysFileTree file1, 'file', 'F'
            if file.0 == 0
              then do
                 msg = MyGetMsg(SysGetMessage(MSG_SYSINIT_BOOT_NOT_FD))
                 parse value(msg) with first 'OS2BOOT' last
                 msg = first || '"' || file1 || '"' || last
                 say msg
                 say MyGetMsg(SysGetMessage(MSG_SYS_INV_DRIVE))
                 call Usage
              end
              else bootDrive = bootTmp
         end
    end
  if filespec('Drive', srcPath) \= strip(srcPath, 'T', '\')
  then srcDir = strip(srcPath, 'T', '\')
  else srcDir = srcPath

/*****************************************
* Set up Target Paths
******************************************/

  installDir = bootDrive || '\os2\install'
  restoreDir = installDir || '\vga'

/*****************************************
* Start logging
******************************************/

  call SysFileTree installDir, 'file', 'D'
  if file.0 == 0 then call MsgExit MyGetMsg(SysGetMessage(MSG_COMP_INVALID_PATH,,'"' || installDir || '"'))
  logFile = installDir || '\display.log'
  call SysFileTree logFile, 'file', 'F', ,'-----'
  startmsg = MyGetMsg(SysGetMessage(MSG_UNP_INSERT_PI,, SubStr(dscFile,1, pos('.', dscFile)-1 ) || ' ' ))
  cmd = 'parse value(startmsg) with . '''D2c(10)''' installmsg '''D2c(13)''' junk'
  interpret cmd
  installmsg = strip(installmsg)
  call LogIt '======================================================================'
  say installmsg
  call LogIt installmsg ' - ' Date('L')  Time()
  file1 = srcPath || 'build.lvl'
  call SysFileTree file1,'file','F'
  if file.0 == 0
  then call LogFileNotFound file1
  else '@type ' || file1 || ' >> ' || logFile

/*****************************************
* GRADD also requires a certain fixpak level for both version 3.x and 4.0.
* Let us verify we have the right levels now.
******************************************/

  rc = MSG_INCORRECT_DOSVER
  select
     when os2Ver < 40   /* Warp 3.0 needs fixpak 35 or later */
        then do
           needFPLevel = 8.259
        end
     when os2Ver < 45   /* Warp 4.0 needs fixpak 5 or later */
        then do
           needFPLevel = 9.029
        end
     otherwise          /* Releases after Warp 4.0 should be GRADD ready */
        do
           needFPLevel = 0
        end
  end
  parse value(GetGraddLevel(bootDrive || '\os2\dll\gre2vman.dll')) with graddLevel graddStamp

  if (GetFPLevel() >= needFPLevel)
  then do
     newStamp   = 1
  end
  else call MsgExit MyGetMsg(SysGetMessage(MSG_INCORRECT_DOSVER))
  rc = MSG_NO_ERROR

/*******************************************************
* Setup path and Copy required files to \os2\install
********************************************************/

  oldPath = value('PATH',,env)
  newPath = value('PATH', srcPath || ';' || oldPath, env)

  file1 = srcPath || 'unpack2.exe'
  call SysFileTree file1,'file','F'
  if file.0 == 0
  then call LogFileNotFound file1
  else call LogAndDoCmd 'copy ' || file1 || ' ' || installDir
  rc = MSG_NO_ERROR
  unpackFiles =                       'dspinstl.ex_'
  unpackFiles = unpackFiles || ' ' || 'inscfg32.dl_'
  unpackFiles = unpackFiles || ' ' || nlv || '\unpack'
  unpackFiles = unpackFiles || ' ' || nlv || '\vgamri'
  do i = 1 to words(unpackFiles)
    call LogAndDoCmd 'unpack2 ' || srcPath || word(unpackFiles, i) || ' ' || bootDrive
    if rc \= MSG_NO_ERROR then call MsgExit ""
  end
  call LogAndDoCmd 'unpack2 ' || srcPath || 'dspinstl.ex_ ' || restoreDir
  if rc \= MSG_NO_ERROR then call MsgExit ""
  call LogAndDoCmd 'copy ' || bootDrive || '\os2\dll\dspimri.dll ' || restoreDir
  if rc \= MSG_NO_ERROR then call MsgExit ""

/********************************************************
* Obtain .DSC file
*********************************************************/

  call SysFileTree installDir || '\' || dscFile, 'file', 'F'
  if file.0 == 0 then call MsgExit MyGetMsg(SysGetMessage(MSG_PRINT_FILE_NOT_FOUND,, '"' || installDir || '\' || dscFile || '"')),
                                   || MyGetMsg(SysGetMessage(MSG_NO_META_MATCH))
                 else parse value(file.1) with . . . . dscFile
  dscFile = installDir || '\' || FileSpec('Name', dscFile)

  if SysFileTree(bootDrive || '\os2\video.cfg','file','F',,'+****') == 0
    then call SysFileDelete bootDrive || '\os2\video.cfg'

  if translate(gradd) == 'VGA' then call SysIni ,'PM_DISPLAYDRIVERS','DEFAULTSYSTEMRESOLUTION','DELETE:'

  graddPackDSC = installDir || '\' || graddPackDSC
  parse value(GetGraddLevel(srcPath || 'gre2vman.dll')) with . tmpStamp
  if datatype(tmpStamp) == 'NUM' then newStamp = tmpStamp

  dspInstall = installDir || '\dspinstl.exe'

  if ((symbol('newStamp') == 'VAR') & (newStamp \= ''))
  then
     if ((graddStamp == '') | ( newStamp > graddStamp))
     then do
        '@' || dspInstall '/pk:other /s:' || srcDir,
                       || ' /t:' || bootDrive,
                       || ' /pd:' || strip(graddPackDSC),
                       || ' /l:' || logFile || cidInst
     end

  '@' || dspInstall '/pk:svga /s:' || srcDir,
                 || ' /t:' || bootDrive,
                 || ' /pd:' || strip(dscFile),
                 || ' /l:' || logFile || cidInst

  if ( (rc == MSG_NO_ERROR) | ((cidInst \= '') & ( rc == SPTReboot)) )
    then call MsgExit MyGetMsg(SysGetMessage(MSG_BOOT_MUST_RESTART))
    else call MsgExit MyGetMsg(SysGetMessage(MSG_ERR_PROC_ARG,,dscFile))

/******************************************************
* Procedure for determining level of Gradd subsystem
*******************************************************/

GetGraddLevel: Procedure

   parse arg graddModule

   gtvVer = ''

   if stream(graddModule,'c', 'query exists') \= ''
   then do
       newQueue = RxQueue('Create')
       oldQueue = RxQueue('Set', newQueue)
       '@bldlevel 'graddModule '| rxqueue' newQueue
       do while queued() \=0
          parse upper pull tag data
          if tag == 'SIGNATURE:'
          then
             do while queued() \= 0
               parse upper pull tag data
               if tag == 'DESCRIPTION:'
                  then parse value(data) with  'V' gtvVer gtvStamp .
             end
       end
       call RxQueue 'Delete', newQueue
       call RxQueue 'Set', oldQueue
   end

   if datatype(gtvVer)   \= 'NUM' then gtvVer = 0
   if datatype(gtvStamp) \= 'NUM' then gtvStamp = 0

   return gtvVer gtvStamp

/******************************************************
* Procedure for determining fix pack level of system
*******************************************************/

GetFPLevel: Procedure

   newQueue = RxQueue('Create')
   oldQueue = RxQueue('Set', newQueue)
   '@ver /r | rxqueue' newQueue
   do while queued() \=0
      parse upper pull tag data
      if tag == 'REVISION'
      then leave
   end
   call RxQueue 'Delete', newQueue
   call RxQueue 'Set', oldQueue

   return data

/******************************************************
* Error message processing and exit
*******************************************************/

MsgExit:

   parse arg errmsg

   result = rc
   if rc == REXX_FUNCTION_NOT_FOUND
    then do
        say sigl'  +++      'SourceLine(sigl)
        say 'REX0043: 'ErrorText(REXX_FUNCTION_NOT_FOUND)
    end
    else do
      if errmsg == '' then errmsg = 'REXX' || right(rc,4,'0') || ': 'ErrorText(rc)
      say errmsg
      if ( (rc \= MSG_NO_ERROR) & ((cidInst \= '') & ( rc \= SPTReboot)) )
        then do
           exitmsg = MyGetMsg(SysGetMessage(MSG_INSTALL_UNSUCCESSFUL))
           say exitmsg
        end
      if symbol('logfile') == 'VAR'
        then do
           call LogIt errmsg
           if symbol('exitmsg') == 'VAR'
             then do
               call LogIt exitmsg
               say MyGetMsg(SysGetMessage(MSG_INSTALL_HY_HDR)) || ' ' || logfile
             end
        end
    end
   if rc == MSG_INCORRECT_DOSVER
   then '@pause && e ' || srcPath || nlv || '\readme.txt'
   if symbol('oldPath') == 'VAR' then call value 'PATH' , oldPath, env
   exit result

/******************************************************
* Safely write to logfile
*******************************************************/

LogAndDoCmd:

  call LogIt arg(1)
  '@' || arg(1) || ' >> ' || logfile || ' 2>&1'
  return

/******************************************************
* Log File Not Found
*******************************************************/

LogFileNotFound:

  call LogIt FileNotFound( arg(1) )
  return

/******************************************************
* File Not Found
*******************************************************/

FileNotFound:

  return MyGetMsg(SysGetMessage(MSG_PRINT_FILE_NOT_FOUND,, '"' || arg(1) || '"'))

/******************************************************
* Safely write to logfile
*******************************************************/

LogIt: Procedure expose logfile

  parse arg message
  call lineout logfile, message
  call stream logfile, 'c', 'close'
  return

/******************************************************
* Remove SYSXXXX: from messages
*******************************************************/

MyGetMsg: Procedure

  parse arg message
  if pos('SYS', word(message, 1)) == 1
    then parse arg . message
  return message

/*****************************************************
* Print usage and exit
******************************************************/

Usage:

  msg = MyGetMsg(SysGetMessage(MSG_USAGE,,srcName))
  cmd = 'parse value(msg) with msg '''srcName''' .'
  interpret cmd
  say msg
  say 'SET LANG = ll_cc'
  say me || ' xxx [' || srcPath || '] [' || bootDrive || '] [/u]'
  say ''
  say '   ll_cc = ar_AA | pt_BR | zh_CN | de_DE | da_DK |'
  say '           es_ES | el_GR | fi_FI | fr_FR | iw_IL |'
  say '           it_IT | jp_JP | ko_KR | nl_NL | no_NO |'
  say '           sv_SE | zh_TW | en_US | ...'
  say ''
  say '   xxx = ATI | CHP | DYN | G_V | GEN | MGA | NM | S3 | TRI | VGA | VIRGE'
  say ''
  say '   MORE < ' srcPath || nlv || '\README.TXT'
  say ''
  exit 1
