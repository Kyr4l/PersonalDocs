:TITLE
COMMON GRADD INSTALLATION CHANGES

:KEY
COMGRADD

:RUN :MODE=PRIMARY
%BOOTDRIVE%:\OS2\CMD.EXE /C=DEL %BOOTDRIVE%:\OS2\SVGADATA.PMI 2>NUL
%BOOTDRIVE%:\OS2\CMD.EXE /C=DEL %BOOTDRIVE%:\OS2\VIDEO.CFG 2>NUL

:FILES :MODE=PRIMARY
GRADD         %BOOTDRIVE%:

:CONFIG :MODE=PRIMARY
SET GRADD_CHAINS=C1
DEVICE=%BOOTDRIVE%:\OS2\GRADD.SYS

:CONFIG :MODE=PRIMARY :MODE=DOS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VMANWIN.SYS

:OS2INI :MODE=PRIMARY
OS2.INI
PM_DISPLAYDRIVERS  GRE2VMAN       GRE2VMAN
PM_DISPLAYDRIVERS  CURRENTDRIVER  GRE2VMAN
PM_DISPLAYDRIVERS  DEFAULTDRIVER  GRE2VMAN

* Halfpack and Fullpack WINOS2 common entries
:WININI :MODE=PRIMARY :MODE=WINDOWS
%WINPATH%\SYSTEM.INI
boot display.drv ifgdi2vm.drv
boot sdisplay.drv isgdi2vm.drv
boot.description display.drv "Full Screen GDI 2 VMAN"
boot.description sdisplay.drv "Seamless GDI 2 VMAN"

:WININI :MODE=PRIMARY :MODE=WINDOWS_H
%WINHPATH%\SYSTEM.INI
boot display.drv ifgdi2vm.drv
boot sdisplay.drv isgdi2vm.drv
boot.description display.drv "Full Screen GDI 2 VMAN"
boot.description sdisplay.drv "Seamless GDI 2 VMAN"

:WININI :MODE=PRIMARY :MODE=WINDOWS_J
%WINJPATH%\SYSTEM.INI
boot display.drv ifgdi2vm.drv
boot sdisplay.drv isgdi2vm.drv
boot.description display.drv "Full Screen GDI 2 VMAN"
boot.description sdisplay.drv "Seamless GDI 2 VMAN"

:WININI :MODE=PRIMARY :MODE=WINDOWS_T
%WINTPATH%\SYSTEM.INI
boot display.drv ifgdi2vm.drv
boot sdisplay.drv isgdi2vm.drv
boot.description display.drv "Full Screen GDI 2 VMAN"
boot.description sdisplay.drv "Seamless GDI 2 VMAN"

:OS2INI :MODE=PRIMARY :MODE=WINDOWS
OS2.INI
WIN_RES_00 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_00 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_00 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_00 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_01 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_01 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_01 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_01 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_02 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_02 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_02 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_02 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_03 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_03 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_03 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_03 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_04 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_04 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_04 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_04 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_05 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_05 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_05 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_05 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_06 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_06 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_06 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_06 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_07 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_07 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_07 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_07 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_08 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_08 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_08 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_08 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_09 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_09 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_09 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_09 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_10 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_10 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_10 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_10 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_11 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_11 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_11 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_11 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_12 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_12 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_12 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_12 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_13 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_13 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_13 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_13 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_17 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_17 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_17 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_17 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_18 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_18 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_18 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_18 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_19 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_19 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_19 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_19 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_20 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_20 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_20 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_20 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_25 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_25 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_25 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_25 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_26 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_26 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_26 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_26 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_UNKNOWN 51 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_UNKNOWN 52 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_UNKNOWN 53 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_UNKNOWN 54 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

* Font changes are to work around problem with 8514 fonts and IFGDI2VM.DRV:

:OS2INI :MODE=PRIMARY :MODE=WINDOWS :MODE!=GR
OS2.INI
WIN_RES_09 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_09 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_09 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_09 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_09 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_09 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_10 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_10 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_10 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_10 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_10 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_10 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_11 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_11 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_11 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_11 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_11 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_11 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_12 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_12 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_12 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_12 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_12 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_12 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_13 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_13 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_13 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_13 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_13 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_13 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_17 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_17 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_17 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_17 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_17 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_17 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_18 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_18 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_18 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_18 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_18 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_18 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_19 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_19 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_19 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_19 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_19 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_19 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_20 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_20 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_20 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_20 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_20 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_20 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_25 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_25 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_25 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_25 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_25 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_25 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_26 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_26 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_26 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_26 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_26 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_26 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_UNKNOWN 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasys.fon"
WIN_RES_UNKNOWN 02 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_UNKNOWN 03 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_UNKNOWN 04 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_UNKNOWN 05 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_UNKNOWN 06 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

:OS2INI :MODE=PRIMARY :MODE=WINDOWS :MODE=GR
OS2.INI
WIN_RES_09 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_10 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_11 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_12 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_13 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_17 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_18 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_19 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_20 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_25 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_26 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"
WIN_RES_UNKNOWN 01 "\"%WINCSTR%\\\\system.ini\" boot fonts.fon vgasysa.fon"

:OS2INI :MODE=PRIMARY :MODE=WINOS2
OS2.INI
WIN_RES_09 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_10 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_11 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_12 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_13 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_17 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_18 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_19 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_20 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_25 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_26 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"
WIN_RES_UNKNOWN 12 "\"%WINCSTR%\\\\system.ini\" boot oemfonts.fon vgaoem.fon"

:OS2INI :MODE=PRIMARY :MODE=WINOS2 :MODE!=GR
OS2.INI
WIN_RES_09 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_09 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_09 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_09 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_09 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_09 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_10 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_10 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_10 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_10 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_10 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_10 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_11 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_11 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_11 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_11 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_11 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_11 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_12 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_12 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_12 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_12 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_12 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_12 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_13 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_13 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_13 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_13 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_13 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_13 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_17 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_17 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_17 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_17 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_17 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_17 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_18 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_18 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_18 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_18 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_18 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_18 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_19 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_19 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_19 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_19 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_19 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_19 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_20 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_20 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_20 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_20 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_20 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_20 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_25 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_25 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_25 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_25 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_25 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_25 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_26 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_26 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_26 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_26 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_26 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_26 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

WIN_RES_UNKNOWN 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_UNKNOWN 18 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Sans Serif 8,10,12,14,18,24 (VGA res)\" sserife.fon"
WIN_RES_UNKNOWN 19 "\"%WINCSTR%\\\\win.ini\" fonts \"Courier 10,12,15 (VGA res)\"               coure.fon"
WIN_RES_UNKNOWN 20 "\"%WINCSTR%\\\\win.ini\" fonts \"MS Serif 8,10,12,14,18,24 (VGA res)\"      serife.fon"
WIN_RES_UNKNOWN 21 "\"%WINCSTR%\\\\win.ini\" fonts \"Symbol 8,10,12,14,18,24 (VGA res)\"        symbole.fon"
WIN_RES_UNKNOWN 22 "\"%WINCSTR%\\\\win.ini\" fonts \"Small Fonts (VGA res)\"                    smalle.fon"

:OS2INI :MODE=PRIMARY :MODE=WINOS2 :MODE=GR
OS2.INI
WIN_RES_09 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_10 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_11 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_12 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_13 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_17 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_18 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_19 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_20 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_25 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_26 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"
WIN_RES_UNKNOWN 11 "\"%WINCSTR%\\\\system.ini\" boot fixedfon.fon vgafixa.fon"

:OS2INI :MODE=PRIMARY :MODE=WINDOWS_H
OS2.INI
WIN_RES_00 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_00 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_00 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_00 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_01 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_01 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_01 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_01 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_02 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_02 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_02 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_02 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_03 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_03 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_03 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_03 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_04 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_04 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_04 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_04 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_05 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_05 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_05 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_05 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_06 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_06 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_06 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_06 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_07 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_07 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_07 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_07 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_08 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_08 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_08 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_08 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_09 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_09 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_09 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_09 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_10 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_10 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_10 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_10 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_11 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_11 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_11 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_11 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_12 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_12 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_12 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_12 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_13 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_13 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_13 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_13 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_17 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_17 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_17 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_17 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_18 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_18 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_18 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_18 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_19 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_19 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_19 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_19 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_20 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_20 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_20 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_20 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_25 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_25 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_25 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_25 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_26 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_26 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_26 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_26 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_UNKNOWN 71 "\"%WINHCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_UNKNOWN 72 "\"%WINHCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_UNKNOWN 73 "\"%WINHCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_UNKNOWN 74 "\"%WINHCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

:OS2INI :MODE=PRIMARY :MODE=WINDOWS_J
OS2.INI
WIN_RES_00 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_00 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_00 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_00 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_01 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_01 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_01 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_01 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_02 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_02 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_02 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_02 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_03 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_03 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_03 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_03 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_04 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_04 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_04 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_04 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_05 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_05 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_05 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_05 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_06 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_06 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_06 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_06 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_07 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_07 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_07 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_07 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_08 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_08 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_08 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_08 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_09 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_09 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_09 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_09 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_10 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_10 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_10 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_10 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_11 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_11 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_11 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_11 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_12 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_12 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_12 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_12 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_13 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_13 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_13 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_13 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_17 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_17 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_17 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_17 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_18 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_18 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_18 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_18 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_19 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_19 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_19 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_19 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_20 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_20 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_20 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_20 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_25 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_25 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_25 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_25 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_26 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_26 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_26 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_26 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_UNKNOWN 71 "\"%WINCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_UNKNOWN 72 "\"%WINCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_UNKNOWN 73 "\"%WINCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_UNKNOWN 74 "\"%WINCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

:OS2INI :MODE=PRIMARY :MODE=WINDOWS_T
OS2.INI
WIN_RES_00 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_00 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_00 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_00 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_01 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_01 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_01 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_01 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_02 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_02 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_02 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_02 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_03 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_03 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_03 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_03 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_04 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_04 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_04 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_04 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_05 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_05 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_05 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_05 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_06 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_06 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_06 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_06 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_07 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_07 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_07 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_07 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_08 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_08 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_08 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_08 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_09 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_09 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_09 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_09 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_09 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_09 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_10 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_10 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_10 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_10 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_10 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_10 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_11 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_11 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_11 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_11 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_11 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_11 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_12 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_12 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_12 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_12 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_12 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_12 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_13 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_13 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_13 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_13 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_13 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_13 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_17 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_17 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_17 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_17 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_17 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_17 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_18 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_18 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_18 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_18 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_18 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_18 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_19 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_19 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_19 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_19 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_19 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_19 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_20 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_20 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_20 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_20 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_20 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_20 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_25 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_25 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_25 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_25 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_25 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_25 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_26 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_26 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_26 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_26 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_26 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_26 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

WIN_RES_UNKNOWN 31 "\"%WINTCSTR%\\\\system.ini\" boot fonts.fon    vgasys.fon"
WIN_RES_UNKNOWN 32 "\"%WINTCSTR%\\\\system.ini\" boot fixedfon.fon vgafix.fon"
WIN_RES_UNKNOWN 71 "\"%WINTCSTR%\\\\system.ini\" boot sdisplay.drv isgdi2vm.drv"
WIN_RES_UNKNOWN 72 "\"%WINTCSTR%\\\\system.ini\" boot display.drv ifgdi2vm.drv"
WIN_RES_UNKNOWN 73 "\"%WINTCSTR%\\\\system.ini\" boot.description display.drv \"Full Screen GDI 2 VMAN\""
WIN_RES_UNKNOWN 74 "\"%WINTCSTR%\\\\system.ini\" boot.description sdisplay.drv \"Seamless GDI 2 VMAN\""

