:TITLE
COMSVGA Common SVGA Font/BVH DSP
* See also COMBASE.DSP for more VGA fonts

:KEY
COMSVGA

:APPEND :MODE=PRIMARY :MODE=WINDOWS
8514OEM.FON     %WINPATH%\SYSTEM
8514FIX.FON     %WINPATH%\SYSTEM
8514SYS.FON     %WINPATH%\SYSTEM
COURE.FON       %WINPATH%\SYSTEM
COURF.FON       %WINPATH%\SYSTEM
SERIFE.FON      %WINPATH%\SYSTEM
SERIFF.FON      %WINPATH%\SYSTEM
SMALLE.FON      %WINPATH%\SYSTEM
SMALLF.FON      %WINPATH%\SYSTEM
SSERIFE.FON     %WINPATH%\SYSTEM
SSERIFF.FON     %WINPATH%\SYSTEM
SYMBOLE.FON     %WINPATH%\SYSTEM
SYMBOLF.FON     %WINPATH%\SYSTEM

:APPEND :MODE=PRIMARY :MODE=WINDOWS :MODE=BIDI
SERIFDG.FON     %WINPATH%\SYSTEM
SERIFEA.FON     %WINPATH%\SYSTEM
SERIFEG.FON     %WINPATH%\SYSTEM
SSERIFDG.FON    %WINPATH%\SYSTEM
SSERIFEA.FON    %WINPATH%\SYSTEM
SSERIFEG.FON    %WINPATH%\SYSTEM

:APPEND :MODE=PRIMARY :MODE=WINDOWS_H
8514OEM.FON     %WINHPATH%\SYSTEM
8514FIX.FON     %WINHPATH%\SYSTEM
8514SYS.FON     %WINHPATH%\SYSTEM
COURE.FON       %WINHPATH%\SYSTEM
COURF.FON       %WINHPATH%\SYSTEM
SERIFE.FON      %WINHPATH%\SYSTEM
SERIFF.FON      %WINHPATH%\SYSTEM
SMALLE.FON      %WINHPATH%\SYSTEM
SMALLF.FON      %WINHPATH%\SYSTEM
SSERIFE.FON     %WINHPATH%\SYSTEM
SSERIFF.FON     %WINHPATH%\SYSTEM
SYMBOLE.FON     %WINHPATH%\SYSTEM
SYMBOLF.FON     %WINHPATH%\SYSTEM

:APPEND :MODE=PRIMARY :MODE=WINDOWS_J
8514OEM.FON     %WINJPATH%\SYSTEM
8514FIX.FON     %WINJPATH%\SYSTEM
8514SYS.FON     %WINJPATH%\SYSTEM
COURE.FON       %WINJPATH%\SYSTEM
COURF.FON       %WINJPATH%\SYSTEM
SERIFE.FON      %WINJPATH%\SYSTEM
SERIFF.FON      %WINJPATH%\SYSTEM
SMALLE.FON      %WINJPATH%\SYSTEM
SMALLF.FON      %WINJPATH%\SYSTEM
SSERIFE.FON     %WINJPATH%\SYSTEM
SSERIFF.FON     %WINJPATH%\SYSTEM
SYMBOLE.FON     %WINJPATH%\SYSTEM
SYMBOLF.FON     %WINJPATH%\SYSTEM

:APPEND :MODE=PRIMARY :MODE=WINDOWS_T
8514OEM.FON     %WINTPATH%\SYSTEM
8514FIX.FON     %WINTPATH%\SYSTEM
8514SYS.FON     %WINTPATH%\SYSTEM
COURE.FON       %WINTPATH%\SYSTEM
COURF.FON       %WINTPATH%\SYSTEM
SERIFE.FON      %WINTPATH%\SYSTEM
SERIFF.FON      %WINTPATH%\SYSTEM
SMALLE.FON      %WINTPATH%\SYSTEM
SMALLF.FON      %WINTPATH%\SYSTEM
SSERIFE.FON     %WINTPATH%\SYSTEM
SSERIFF.FON     %WINTPATH%\SYSTEM
SYMBOLE.FON     %WINTPATH%\SYSTEM
SYMBOLF.FON     %WINTPATH%\SYSTEM

* Get rid of some stuff added by VGA.DSP:
:DEL_CONFIG_LINE :MODE=PRIMARY
DEVINFO=SCR,VGA,%BOOTDRIVE%:\OS2\BOOT\VIOTBL.DCP
SET VIDEO_DEVICES=VIO_VGA
SET VIO_VGA=DEVICE(BVHVGA)
SET VIO_VGA=DEVICE(BVHVGA,BVHVGA2)
SET VIO_VGA=DEVICE(BVHVGA,BDBVH)

* Get rid of some stuff added by VGA.DSP:
:DEL_CONFIG_LINE :MODE=PRIMARY :MODE=DOS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VVGA.SYS

* Get rid of some stuff added by VGA.DSP:
:DEL_CONFIG_LINE :MODE=DUAL :MODE=DOS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VVGA.SYS /DUAL

:CONFIG :MODE=PRIMARY
DEVINFO=SCR,VGA,%BOOTDRIVE%:\OS2\BOOT\VIOTBL.DCP
SET VIDEO_DEVICES=VIO_SVGA

:CONFIG :MODE=PRIMARY :MODE=SBCS :MODE!=BIDI
SET VIO_SVGA=DEVICE(BVHVGA,BVHSVGA)

:CONFIG :MODE=PRIMARY :MODE=SBCS :MODE=BIDI
SET VIO_SVGA=DEVICE(BVHVGA,BVHSVGA,BDBVH)

:CONFIG :MODE=PRIMARY :MODE=DBCS
SET VIO_SVGA=DEVICE(BVHVGA,BVHSVGA,BVHVGA2)

:CONFIG :MODE=PRIMARY :MODE=DOS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VSVGA.SYS

:CONFIG :MODE=DUAL :MODE=DOS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VSVGA.SYS /DUAL

* Make sure SVGA is shown in Selective Install Panel
:OS2INI :MODE=PRIMARY
%BOOTDRIVE%:\OS2\INSTALL\REINSTAL.INI
InstallWindow VIOADAPTERSTR 7

:OS2INI :MODE=SECONDARY
%BOOTDRIVE%:\OS2\INSTALL\REINSTAL.INI
InstallWindow VIOADAPTER2STR 7

:OS2INI :MODE=PRIMARY
OS2.INI
PM_ControlPanel    IconTextWidth  "192"

:OS2INI :MODE=PRIMARY :MODE=DBCS
OS2.INI
PMNLS_Display      Compatibility  "2"
PMNLS_Display      VioFonts       "MINCHO"

:OS2INI :MODE=PRIMARY :MODE=DBCS :MODE=V4
OS2.INI
PMNLS_Display      SystemFont     "Helv Combined,7,16"

:OS2INI :MODE=PRIMARY :MODE=DBCS :MODE!=V4
OS2.INI
PMNLS_Display      SystemFont     "MINCHO Proportional,8,18"
PM_Workplace       TabTextFont    "10.MINCHO Proportional"
PM_Workplace       SmallFont      "10.MINCHO Proportional"
PM_Workplace       MediumFont     "10.MINCHO Proportional"
PM_Workplace       LargeFont      "10.MINCHO Proportional"
PM_SystemFonts     IconText       "10.MINCHO Proportional"
PM_SystemFonts     WindowText     "10.MINCHO Proportional"

* system.ini entries below are written during the display installation.
* graphics engines then updates the system.ini based on the resolution
* selected from above entries.
* Therefore, put common system.ini entries below.

* Halfpack WINOS2 and Fullpack WINOS2 common entries
:WININI :MODE=PRIMARY :MODE=WINDOWS :MODE!=GR
%WINPATH%\SYSTEM.INI
boot fonts.fon    vgasys.fon

:WININI :MODE=PRIMARY :MODE=WINDOWS :MODE=GR
%WINPATH%\SYSTEM.INI
boot fonts.fon    vgasysa.fon

* Fullpack WINOS2 specific entries
:WININI :MODE=PRIMARY :MODE=WINOS2 :MODE!=GR
%WINPATH%\SYSTEM.INI
boot fixedfon.fon vgafix.fon
boot oemfonts.fon vgaoem.fon

:WININI :MODE=PRIMARY :MODE=WINOS2 :MODE=GR
%WINPATH%\SYSTEM.INI
boot fixedfon.fon vgafixa.fon
boot oemfonts.fon vgaoem.fon

:WININI :MODE=PRIMARY :MODE=WINDOWS_H
%WINHPATH%\SYSTEM.INI
boot fonts.fon    vgasys.fon
boot fixedfon.fon vgafix.fon
boot oemfonts.fon vgaoem.fon

:WININI :MODE=PRIMARY :MODE=WINDOWS_J :MODE=CN
%WINJPATH%\SYSTEM.INI
boot fonts.fon    vgasys.fon
boot fixedfon.fon vgafix.fon
boot oemfonts.fon vgaoem.fon

:WININI :MODE=PRIMARY :MODE=WINDOWS_J :MODE=JP
%WINJPATH%\SYSTEM.INI
boot fonts.fon    ps55ssys.fon
boot fixedfon.fon ps55sfix.fon
boot oemfonts.fon ps55soem.fon

:WININI :MODE=PRIMARY :MODE=WINDOWS_T
%WINTPATH%\SYSTEM.INI
boot fonts.fon    vgasys.fon
boot fixedfon.fon vgafix.fon
boot oemfonts.fon vgaoem.fon

:WININI :MODE=PRIMARY :MODE=WINDOWS :MODE!=GR
%WINPATH%\WIN.INI
fonts "Roman (Plotter)"                          roman.fon
fonts "Script (Plotter)"                         script.fon
fonts "Modern (Plotter)"                         modern.fon
fonts "MS Sans Serif 8,10,12,14,18,24 (VGA res)" sserife.fon
fonts "Courier 10,12,15 (VGA res)"               coure.fon
fonts "MS Serif 8,10,12,14,18,24 (VGA res)"      serife.fon
fonts "Symbol 8,10,12,14,18,24 (VGA res)"        symbole.fon
fonts "Small Fonts (VGA res)"                    smalle.fon

:WININI :MODE=PRIMARY :MODE=WINDOWS :MODE=GR
%WINPATH%\WIN.INI
fonts "Arial %ANYSTRING%"
fonts "Times %ANYSTRING%"
fonts "Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)" serifeg.fon
fonts "Helv 8,10,12,14,18,24 (VGA res)"           sserifea.fon
fonts "Tms Rmn 8,10,12,14,18,24 (VGA res)"        serifea.fon
fonts "Helv Hellas 8,10,12,14,18,24 (VGA res)"    sserifeg.fon
fonts "Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)" serifdg.fon
fonts "Helv Hellas 8,10,12,14,18,24 (120 dpi)"    sserifdg.fon

:WININI :MODE=PRIMARY :MODE=WINOS2 :MODE!=GR
%WINPATH%\WIN.INI
fonts "Symbol %ANYSTRING%"
fonts "Helv %ANYSTRING%"
fonts "Tms Rmn %ANYSTRING%"

:WININI :MODE=PRIMARY :MODE=WINOS2 :MODE=GR
%WINPATH%\WIN.INI
fonts "Symbol 8,%ANYSTRING%"

:WININI :MODE=PRIMARY :MODE=WINOS2
%WINPATH%\WIN.INI
fonts "Courier %ANYSTRING%"
fonts "MS Sans Serif %ANYSTRING%"
fonts "MS Serif %ANYSTRING%"
fonts "Small Fonts %ANYSTRING%"

:WININI :MODE=PRIMARY :MODE=WINOS2 :MODE!=GR
%WINPATH%\WIN.INI
fonts "Roman (Plotter)"                          roman.fon
fonts "Script (Plotter)"                         script.fon
fonts "Modern (Plotter)"                         modern.fon
fonts "MS Sans Serif 8,10,12,14,18,24 (VGA res)" sserife.fon
fonts "Courier 10,12,15 (VGA res)"               coure.fon
fonts "MS Serif 8,10,12,14,18,24 (VGA res)"      serife.fon
fonts "Symbol 8,10,12,14,18,24 (VGA res)"        symbole.fon
fonts "Small Fonts (VGA res)"                    smalle.fon

:WININI :MODE=PRIMARY :MODE=WINOS2 :MODE=GR
%WINPATH%\WIN.INI
fonts "Arial %ANYSTRING%"
fonts "Times %ANYSTRING%"
fonts "Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)" serifeg.fon
fonts "Helv 8,10,12,14,18,24 (VGA res)"           sserifea.fon
fonts "Tms Rmn 8,10,12,14,18,24 (VGA res)"        serifea.fon
fonts "Helv Hellas 8,10,12,14,18,24 (VGA res)"    sserifeg.fon
fonts "Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)" serifdg.fon
fonts "Helv Hellas 8,10,12,14,18,24 (120 dpi)"    sserifdg.fon

:WININI :MODE=PRIMARY :MODE=WINOS2 :MODE=BIDI :MODE=ARABIC
%WINPATH%\WIN.INI
fonts "Arabic Transparent 8,10 %ANYSTRING%"
fonts "Simplified Arabic 8,10 %ANYSTRING%"
fonts "Traditional Arabic 8,10 %ANYSTRING%"
fonts "Arabic Transparent 8,10 (VGA res)"   artre.fon
fonts "Simplified Arabic 8,10 (VGA res)"    simpe.fon
fonts "Traditional Arabic 8,10 (VGA res)"   trade.fon

:WININI :MODE=PRIMARY :MODE=WINDOWS_H
%WINHPATH%\WIN.INI
fonts "Symbol %ANYSTRING%"
fonts "Helv %ANYSTRING%"
fonts "Tms Rmn %ANYSTRING%"
fonts "Courier %ANYSTRING%"
fonts "MS Sans Serif %ANYSTRING%"
fonts "MS Serif %ANYSTRING%"
fonts "Small Fonts %ANYSTRING%"
fonts "Roman (Plotter)"                         roman.fon
fonts "Script (Plotter)"                        script.fon
fonts "Modern (Plotter)"                        modern.fon
fonts "MS Sans Serif 8,10,12,14,18,24 (96 dpi)" sserife.fon
fonts "Courier 10,12,15 (96 dpi)"               coure.fon
fonts "MS Serif 8,10,12,14,18,24 (96 dpi)"      serife.fon
fonts "Symbol 8,10,12,14,18,24 (96 dpi)"        symbole.fon
fonts "Small Fonts (96 dpi)"                    smalle.fon

:WININI :MODE=PRIMARY :MODE=WINDOWS_J
%WINJPATH%\WIN.INI
fonts "Symbol %ANYSTRING%"
fonts "Helv %ANYSTRING%"
fonts "Tms Rmn %ANYSTRING%"
fonts "Courier %ANYSTRING%"
fonts "MS Sans Serif %ANYSTRING%"
fonts "MS Serif %ANYSTRING%"
fonts "Small Fonts %ANYSTRING%"
fonts "Roman (Plotter)"                         roman.fon
fonts "Script (Plotter)"                        script.fon
fonts "Modern (Plotter)"                        modern.fon
fonts "MS Sans Serif 8,10,12,14,18,24 (96 dpi)" sserife.fon
fonts "Courier 10,12,15 (96 dpi)"               coure.fon
fonts "MS Serif 8,10,12,14,18,24 (96 dpi)"      serife.fon
fonts "Symbol 8,10,12,14,18,24 (96 dpi)"        symbole.fon
fonts "Small Fonts (96 dpi)"                    smalle.fon

:WININI :MODE=PRIMARY :MODE=WINDOWS_T
%WINTPATH%\WIN.INI
fonts "Symbol %ANYSTRING%"
fonts "Helv %ANYSTRING%"
fonts "Tms Rmn %ANYSTRING%"
fonts "Courier %ANYSTRING%"
fonts "MS Sans Serif %ANYSTRING%"
fonts "MS Serif %ANYSTRING%"
fonts "Small Fonts %ANYSTRING%"
fonts "Roman (Plotter)"                         roman.fon
fonts "Script (Plotter)"                        script.fon
fonts "Modern (Plotter)"                        modern.fon
fonts "MS Sans Serif 8,10,12,14,18,24 (96 dpi)" sserife.fon
fonts "Courier 10,12,15 (96 dpi)"               coure.fon
fonts "MS Serif 8,10,12,14,18,24 (96 dpi)"      serife.fon
fonts "Symbol 8,10,12,14,18,24 (96 dpi)"        symbole.fon
fonts "Small Fonts (96 dpi)"                    smalle.fon

* Halfpack WINOS2 and Fullpack WINOS2 common entries
:OS2INI :MODE=PRIMARY :MODE=WINDOWS :MODE!=GR
OS2.INI
WIN_RES_00 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_00 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_00 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_00 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_00 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_00 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_01 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_01 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_01 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_01 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_01 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_01 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_02 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_02 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_02 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_02 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_02 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_02 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_03 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_03 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_03 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_03 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_03 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_03 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_04 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_04 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_04 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_04 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_04 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_04 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_05 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_05 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_05 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_05 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_05 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_05 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_06 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_06 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_06 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_06 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_06 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_06 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_07 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_07 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_07 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_07 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_07 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_07 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_08 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_08 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_08 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_08 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_08 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_08 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_09 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sys.fon"
WIN_RES_09 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_09 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_09 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_09 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_09 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_10 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sys.fon"
WIN_RES_10 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_10 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_10 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_10 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_10 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_11 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sys.fon"
WIN_RES_11 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_11 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_11 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_11 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_11 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_12 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sys.fon"
WIN_RES_12 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_12 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_12 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_12 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_12 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_13 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sys.fon"
WIN_RES_13 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_13 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_13 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_13 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_13 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_17 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sys.fon"
WIN_RES_17 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_17 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_17 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_17 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_17 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_18 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sys.fon"
WIN_RES_18 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_18 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_18 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_18 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_18 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_19 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sys.fon"
WIN_RES_19 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_19 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_19 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_19 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_19 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_20 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sys.fon"
WIN_RES_20 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_20 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_20 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_20 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_20 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_25 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sys.fon"
WIN_RES_25 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_25 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_25 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_25 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_25 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_26 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sys.fon"
WIN_RES_26 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_26 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_26 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_26 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_26 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_UNKNOWN 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_UNKNOWN 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sseriff.fon"
WIN_RES_UNKNOWN 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               courf.fon"
WIN_RES_UNKNOWN 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      seriff.fon"
WIN_RES_UNKNOWN 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbolf.fon"
WIN_RES_UNKNOWN 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smallf.fon"

* Halfpack WINOS2 and Fullpack WINOS2 common entries
:OS2INI :MODE=PRIMARY :MODE=WINDOWS :MODE=GR
OS2.INI
WIN_RES_00 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_00 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_00 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_00 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_00 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_00 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_00 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

WIN_RES_01 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_01 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_01 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_01 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_01 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_01 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_01 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

WIN_RES_02 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_02 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_02 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_02 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_02 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_02 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_02 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

WIN_RES_03 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_03 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_03 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_03 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_03 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_03 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_03 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

WIN_RES_04 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_04 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_04 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_04 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_04 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_04 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_04 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

WIN_RES_05 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_05 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_05 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_05 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_05 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_05 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_05 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

WIN_RES_06 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_06 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_06 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_06 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_06 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_06 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_06 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

WIN_RES_07 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_07 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_07 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_07 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_07 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_07 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_07 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

WIN_RES_08 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_08 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_08 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_08 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_08 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_08 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_08 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

WIN_RES_09 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sysa.fon"
WIN_RES_09 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_09 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_09 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_09 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_09 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_09 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_10 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sysa.fon"
WIN_RES_10 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_10 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_10 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_10 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_10 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_10 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_11 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sysa.fon"
WIN_RES_11 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_11 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_11 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_11 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_11 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_11 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_12 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sysa.fon"
WIN_RES_12 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_12 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_12 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_12 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_12 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_12 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_13 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sysa.fon"
WIN_RES_13 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_13 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_13 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_13 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_13 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_13 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_17 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sysa.fon"
WIN_RES_17 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_17 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_17 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_17 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_17 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_17 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_18 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sysa.fon"
WIN_RES_18 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_18 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_18 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_18 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_18 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_18 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_19 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sysa.fon"
WIN_RES_19 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_19 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_19 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_19 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_19 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_19 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_20 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sysa.fon"
WIN_RES_20 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_20 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_20 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_20 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_20 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_20 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_25 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sysa.fon"
WIN_RES_25 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_25 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_25 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_25 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_25 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_25 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_26 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon 8514sysa.fon"
WIN_RES_26 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_26 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_26 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_26 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_26 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_26 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_UNKNOWN 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_UNKNOWN 02 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_UNKNOWN 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_UNKNOWN 04 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_UNKNOWN 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_UNKNOWN 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_UNKNOWN 07 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

* Fullpack WINOS2 specific entries
:OS2INI :MODE=PRIMARY :MODE=WINOS2 :MODE!=GR
OS2.INI
WIN_RES_00 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_00 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_00 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_00 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_00 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_00 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_00 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_00 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_00 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_00 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_00 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_00 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_01 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_01 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_01 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_01 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_01 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_01 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_01 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_01 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_01 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_01 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_01 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_01 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_02 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_02 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_02 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_02 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_02 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_02 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_02 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_02 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_02 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_02 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_02 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_02 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_03 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_03 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_03 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_03 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_03 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_03 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_03 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_03 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_03 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_03 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_03 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_03 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_04 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_04 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_04 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_04 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_04 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_04 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_04 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_04 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_04 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_04 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_04 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_04 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_05 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_05 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_05 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_05 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_05 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_05 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_05 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_05 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_05 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_05 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_05 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_05 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_06 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_06 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_06 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_06 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_06 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_06 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_06 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_06 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_06 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_06 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_06 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_06 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_07 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_07 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_07 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_07 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_07 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_07 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_07 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_07 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_07 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_07 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_07 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_07 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_08 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_08 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_08 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_08 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_08 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_08 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_08 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_08 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_08 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_08 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_08 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_08 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_09 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_09 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_09 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_09 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_09 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_09 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_09 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_09 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_09 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_09 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_09 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_09 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_10 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_10 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_10 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_10 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_10 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_10 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_10 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_10 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_10 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_10 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_10 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_10 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_11 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_11 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_11 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_11 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_11 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_11 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_11 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_11 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_11 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_11 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_11 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_11 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_12 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_12 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_12 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_12 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_12 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_12 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_12 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_12 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_12 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_12 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_12 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_12 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_13 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_13 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_13 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_13 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_13 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_13 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_13 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_13 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_13 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_13 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_13 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_13 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_17 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_17 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_17 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_17 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_17 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_17 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_17 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_17 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_17 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_17 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_17 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_17 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_18 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_18 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_18 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_18 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_18 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_18 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_18 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_18 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_18 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_18 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_18 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_18 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_19 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_19 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_19 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_19 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_19 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_19 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_19 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_19 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_19 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_19 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_19 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_19 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_20 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_20 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_20 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_20 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_20 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_20 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_20 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_20 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_20 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_20 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_20 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_20 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_25 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_25 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_25 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_25 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_25 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_25 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_25 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_25 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_25 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_25 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_25 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_25 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_26 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_26 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_26 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_26 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_26 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_26 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_26 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_26 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (8514/a res)\" sseriff.fon"
WIN_RES_26 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (8514/a res)\"               courf.fon"
WIN_RES_26 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (8514/a res)\"      seriff.fon"
WIN_RES_26 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (8514/a res)\"        symbolf.fon"
WIN_RES_26 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (8514/a res)\"                    smallf.fon"

WIN_RES_UNKNOWN 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_UNKNOWN 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_UNKNOWN 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol %ANYSTRING%\""
WIN_RES_UNKNOWN 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_UNKNOWN 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_UNKNOWN 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_UNKNOWN 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_UNKNOWN 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sseriff.fon"
WIN_RES_UNKNOWN 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               courf.fon"
WIN_RES_UNKNOWN 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      seriff.fon"
WIN_RES_UNKNOWN 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbolf.fon"
WIN_RES_UNKNOWN 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smallf.fon"

* Fullpack WINOS2 specific entries
:OS2INI :MODE=PRIMARY :MODE=WINOS2 :MODE=GR
OS2.INI
WIN_RES_00 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_00 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_00 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_00 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_00 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_00 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_00 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_00 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_00 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_00 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_00 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_00 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_00 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

WIN_RES_01 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_01 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_01 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_01 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_01 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_01 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_01 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_01 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_01 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_01 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_01 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_01 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_01 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

WIN_RES_02 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_02 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_02 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_02 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_02 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_02 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_02 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_02 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_02 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_02 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_02 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_02 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_02 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

WIN_RES_03 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_03 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_03 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_03 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_03 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_03 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_03 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_03 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_03 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_03 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_03 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_03 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_03 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

WIN_RES_04 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_04 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_04 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_04 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_04 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_04 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_04 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_04 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_04 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_04 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_04 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_04 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_04 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

WIN_RES_05 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_05 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_05 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_05 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_05 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_05 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_05 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_05 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_05 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_05 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_05 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_05 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_05 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

WIN_RES_06 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_06 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_06 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_06 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_06 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_06 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_06 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_06 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_06 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_06 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_06 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_06 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_06 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

WIN_RES_07 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_07 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_07 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_07 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_07 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_07 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_07 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_07 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_07 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_07 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_07 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_07 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_07 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

WIN_RES_08 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_08 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_08 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_08 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_08 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_08 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_08 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_08 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (VGA res)\" serifeg.fon"
WIN_RES_08 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (VGA res)\"           sserifea.fon"
WIN_RES_08 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (VGA res)\"        serifea.fon"
WIN_RES_08 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (VGA res)\"    sserifeg.fon"
WIN_RES_08 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\" serifdg.fon"
WIN_RES_08 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"    sserifdg.fon"

WIN_RES_09 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fixa.fon"
WIN_RES_09 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_09 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_09 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_09 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_09 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_09 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_09 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_09 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_09 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_09 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_09 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_09 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_10 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fixa.fon"
WIN_RES_10 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_10 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_10 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_10 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_10 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_10 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_10 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_10 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_10 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_10 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_10 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_10 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_11 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fixa.fon"
WIN_RES_11 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_11 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_11 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_11 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_11 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_11 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_11 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_11 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_11 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_11 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_11 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_11 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_12 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fixa.fon"
WIN_RES_12 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_12 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_12 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_12 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_12 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_12 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_12 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_12 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_12 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_12 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_12 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_12 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_13 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fixa.fon"
WIN_RES_13 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_13 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_13 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_13 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_13 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_13 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_13 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_13 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_13 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_13 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_13 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_13 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_17 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fixa.fon"
WIN_RES_17 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_17 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_17 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_17 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_17 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_17 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_17 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_17 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_17 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_17 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_17 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_17 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_18 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fixa.fon"
WIN_RES_18 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_18 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_18 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_18 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_18 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_18 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_18 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_18 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_18 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_18 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_18 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_18 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_19 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fixa.fon"
WIN_RES_19 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_19 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_19 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_19 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_19 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_19 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_19 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_19 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_19 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_19 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_19 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_19 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_20 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fixa.fon"
WIN_RES_20 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_20 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_20 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_20 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_20 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_20 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_20 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_20 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_20 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_20 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_20 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_20 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_25 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fixa.fon"
WIN_RES_25 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_25 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_25 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_25 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_25 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_25 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_25 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_25 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_25 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_25 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_25 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_25 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_26 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fixa.fon"
WIN_RES_26 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_26 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_26 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_26 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_26 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_26 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_26 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_26 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_26 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_26 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_26 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_26 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

WIN_RES_UNKNOWN 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon 8514fixa.fon"
WIN_RES_UNKNOWN 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_UNKNOWN 13 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,%ANYSTRING%\""
WIN_RES_UNKNOWN 14 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier %ANYSTRING%\""
WIN_RES_UNKNOWN 15 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif %ANYSTRING%\""
WIN_RES_UNKNOWN 16 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif %ANYSTRING%\""
WIN_RES_UNKNOWN 17 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts %ANYSTRING%\""
WIN_RES_UNKNOWN 18 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (8514/a res)\" serifeg.fon"
WIN_RES_UNKNOWN 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv 8,10,12,14,18,24 (8514/a res)\"           sserifea.fon"
WIN_RES_UNKNOWN 20 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn 8,10,12,14,18,24 (8514/a res)\"        serifea.fon"
WIN_RES_UNKNOWN 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (8514/a res)\"    sserifeg.fon"
WIN_RES_UNKNOWN 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Tms Rmn Hellas 8,10,12,14,18,24 (120 dpi)\"    serifdg.fon"
WIN_RES_UNKNOWN 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Helv Hellas 8,10,12,14,18,24 (120 dpi)\"       sserifdg.fon"

* Fullpack WINOS2 specific entries
:OS2INI :MODE=PRIMARY :MODE=WINOS2 :MODE=BIDI :MODE=ARABIC
OS2.INI

WIN_RES_01 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_01 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_01 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_01 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_01 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_01 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

WIN_RES_02 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_02 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_02 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_02 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_02 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_02 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

WIN_RES_03 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_03 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_03 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_03 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_03 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_03 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

WIN_RES_04 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_04 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_04 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_04 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_04 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_04 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

WIN_RES_05 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_05 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_05 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_05 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_05 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_05 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

WIN_RES_06 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_06 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_06 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_06 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_06 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_06 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

WIN_RES_07 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_07 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_07 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_07 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_07 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_07 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

WIN_RES_08 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_08 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_08 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_08 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_08 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_08 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

WIN_RES_09 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_09 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_09 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_09 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (XGA res)\"    artrf.fon
WIN_RES_09 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (XGA res)\"     simpf.fon
WIN_RES_09 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (XGA res)\"    tradf.fon

WIN_RES_10 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_10 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_10 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_10 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_10 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_10 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

WIN_RES_11 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_11 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_11 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_11 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_11 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_11 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

WIN_RES_12 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_12 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_12 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_12 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_12 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_12 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

WIN_RES_13 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_13 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_13 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_13 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_13 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_13 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

WIN_RES_17 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_17 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_17 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_17 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_17 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_17 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

WIN_RES_18 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_18 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_18 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_18 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_18 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_18 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

WIN_RES_19 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_19 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_19 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_19 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_19 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_19 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

WIN_RES_20 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_20 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_20 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_20 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_20 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_20 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

WIN_RES_25 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_25 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_25 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_25 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_25 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_25 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

WIN_RES_26 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_26 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_26 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_26 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_26 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_26 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

WIN_RES_UNKNOWN 23 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 %ANYSTRING%\""
WIN_RES_UNKNOWN 24 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 %ANYSTRING%\""
WIN_RES_UNKNOWN 25 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 %ANYSTRING%\""
WIN_RES_UNKNOWN 26 "\"%WINCSTR%\\\\win.ini\" fonts \"Arabic Transparent 8,10 (VGA res)\"    artre.fon
WIN_RES_UNKNOWN 27 "\"%WINCSTR%\\\\win.ini\" fonts \"Simplified Arabic 8,10 (VGA res)\"     simpe.fon
WIN_RES_UNKNOWN 28 "\"%WINCSTR%\\\\win.ini\" fonts \"Traditional Arabic 8,10 (VGA res)\"    trade.fon

:OS2INI :MODE=PRIMARY :MODE=WINDOWS_H
OS2.INI
WIN_RES_00 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_00 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_00 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_00 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_00 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_00 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_00 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_00 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_01 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_01 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_01 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_01 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_01 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_01 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_01 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_01 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_02 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_02 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_02 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_02 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_02 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_02 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_02 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_02 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_03 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_03 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_03 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_03 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_03 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_03 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_03 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_03 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_04 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_04 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_04 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_04 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_04 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_04 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_04 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_04 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_05 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_05 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_05 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_05 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_05 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_05 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_05 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_05 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_06 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_06 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_06 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_06 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_06 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_06 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_06 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_06 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_07 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_07 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_07 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_07 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_07 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_07 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_07 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_07 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_08 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_08 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_08 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_08 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_08 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_08 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_08 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_08 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_09 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_09 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_09 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_09 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_09 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_09 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_09 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_09 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_10 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_10 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_10 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_10 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_10 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_10 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_10 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_10 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_11 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_11 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_11 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_11 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_11 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_11 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_11 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_11 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_12 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_12 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_12 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_12 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_12 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_12 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_12 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_12 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_13 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_13 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_13 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_13 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_13 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_13 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_13 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_13 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_17 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_17 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_17 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_17 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_17 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_17 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_17 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_17 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_18 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_18 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_18 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_18 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_18 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_18 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_18 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_18 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_19 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_19 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_19 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_19 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_19 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_19 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_19 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_19 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_20 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_20 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_20 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_20 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_20 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_20 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_20 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_20 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_25 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_25 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_25 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_25 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_25 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_25 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_25 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_25 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_26 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_26 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_26 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_26 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_26 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_26 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_26 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_26 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_UNKNOWN 31 "\"%WINHCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_UNKNOWN 32 "\"%WINHCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_UNKNOWN 33 "\"%WINHCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_UNKNOWN 34 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_UNKNOWN 35 "\"%WINHCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_UNKNOWN 36 "\"%WINHCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_UNKNOWN 37 "\"%WINHCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_UNKNOWN 38 "\"%WINHCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

:OS2INI :MODE=PRIMARY :MODE=WINDOWS_J
OS2.INI
WIN_RES_00 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_00 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_00 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_00 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_00 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_00 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_00 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_00 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_01 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_01 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_01 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_01 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_01 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_01 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_01 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_01 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_02 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_02 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_02 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_02 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_02 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_02 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_02 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_02 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_03 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_03 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_03 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_03 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_03 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_03 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_03 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_03 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_04 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_04 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_04 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_04 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_04 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_04 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_04 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_04 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_05 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_05 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_05 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_05 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_05 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_05 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_05 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_05 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_06 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_06 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_06 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_06 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_06 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_06 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_06 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_06 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_07 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_07 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_07 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_07 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_07 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_07 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_07 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_07 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_08 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_08 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_08 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_08 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_08 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_08 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_08 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_08 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_09 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_09 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_09 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_09 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_09 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_09 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_09 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_09 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_10 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_10 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_10 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_10 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_10 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_10 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_10 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_10 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_11 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_11 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_11 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_11 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_11 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_11 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_11 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_11 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_12 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_12 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_12 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_12 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_12 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_12 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_12 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_12 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_13 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_13 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_13 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_13 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_13 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_13 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_13 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_13 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_17 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_17 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_17 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_17 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_17 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_17 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_17 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_17 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_18 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_18 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_18 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_18 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_18 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_18 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_18 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_18 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_19 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_19 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_19 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_19 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_19 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_19 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_19 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_19 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_20 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_20 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_20 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_20 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_20 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_20 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_20 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_20 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_25 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_25 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_25 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_25 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_25 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_25 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_25 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_25 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_26 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_26 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_26 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_26 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_26 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_26 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_26 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_26 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_UNKNOWN 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    ps55ssys.fon"
WIN_RES_UNKNOWN 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon ps55sfix.fon"
WIN_RES_UNKNOWN 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon ps55soem.fon"
WIN_RES_UNKNOWN 34 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_UNKNOWN 35 "\"%WINJCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_UNKNOWN 36 "\"%WINJCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_UNKNOWN 37 "\"%WINJCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_UNKNOWN 38 "\"%WINJCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

:OS2INI :MODE=PRIMARY :MODE=WINDOWS_J :MODE=CN
OS2.INI
WIN_RES_00 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_00 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_00 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_01 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_01 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_01 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_02 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_02 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_02 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_03 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_03 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_03 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_04 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_04 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_04 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_05 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_05 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_05 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_06 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_06 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_06 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_07 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_07 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_07 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_08 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_08 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_08 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_09 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_09 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_09 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_10 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_10 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_10 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_11 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_11 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_11 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_12 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_12 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_12 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_13 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_13 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_13 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_17 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_17 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_17 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_18 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_18 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_18 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_19 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_19 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_19 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_20 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_20 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_20 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_25 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_25 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_25 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_26 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_26 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_26 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

WIN_RES_UNKNOWN 31 "\"%WINJCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_UNKNOWN 32 "\"%WINJCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_UNKNOWN 33 "\"%WINJCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

:OS2INI :MODE=PRIMARY :MODE=WINDOWS_T
OS2.INI
WIN_RES_00 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_00 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_00 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_00 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_00 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_00 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_00 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_00 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_01 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_01 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_01 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_01 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_01 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_01 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_01 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_01 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_02 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_02 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_02 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_02 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_02 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_02 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_02 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_02 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_03 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_03 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_03 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_03 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_03 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_03 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_03 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_03 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_04 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_04 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_04 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_04 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_04 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_04 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_04 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_04 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_05 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_05 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_05 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_05 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_05 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_05 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_05 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_05 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_06 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_06 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_06 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_06 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_06 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_06 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_06 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_06 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_07 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_07 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_07 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_07 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_07 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_07 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_07 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_07 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_08 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    8514sys.fon"
WIN_RES_08 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_08 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_08 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_08 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_08 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_08 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_08 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

WIN_RES_09 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    8514sys.fon"
WIN_RES_09 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_09 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_09 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_09 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_09 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_09 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_09 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_10 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    8514sys.fon"
WIN_RES_10 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_10 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_10 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_10 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_10 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_10 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_10 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_11 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    8514sys.fon"
WIN_RES_11 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_11 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_11 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_11 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_11 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_11 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_11 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_12 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    8514sys.fon"
WIN_RES_12 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_12 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_12 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_12 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_12 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_12 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_12 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_13 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    8514sys.fon"
WIN_RES_13 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_13 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_13 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_13 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_13 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_13 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_13 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_17 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    8514sys.fon"
WIN_RES_17 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_17 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_17 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_17 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_17 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_17 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_17 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_18 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    8514sys.fon"
WIN_RES_18 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_18 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_18 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_18 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_18 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_18 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_18 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_19 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    8514sys.fon"
WIN_RES_19 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_19 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_19 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_19 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_19 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_19 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_19 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_20 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    8514sys.fon"
WIN_RES_20 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_20 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_20 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_20 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_20 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_20 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_20 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_25 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    8514sys.fon"
WIN_RES_25 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_25 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_25 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_25 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_25 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_25 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_25 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_26 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    8514sys.fon"
WIN_RES_26 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon 8514fix.fon"
WIN_RES_26 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon 8514oem.fon"
WIN_RES_26 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (120 dpi)\" sserife.fon"
WIN_RES_26 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (120 dpi)\"               coure.fon"
WIN_RES_26 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (120 dpi)\"      serife.fon"
WIN_RES_26 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (120 dpi)\"        symbole.fon"
WIN_RES_26 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (120 dpi)\"                    smalle.fon"

WIN_RES_UNKNOWN 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_UNKNOWN 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_UNKNOWN 33 "\"%WINTCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_UNKNOWN 34 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (96 dpi)\" sserife.fon"
WIN_RES_UNKNOWN 35 "\"%WINTCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (96 dpi)\"               coure.fon"
WIN_RES_UNKNOWN 36 "\"%WINTCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (96 dpi)\"      serife.fon"
WIN_RES_UNKNOWN 37 "\"%WINTCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (96 dpi)\"        symbole.fon"
WIN_RES_UNKNOWN 38 "\"%WINTCSTR%\\\\win.ini\" fonts \"Small Fonts (96 dpi)\"                    smalle.fon"

