:TITLE
VGA32 main DSP

:KEY
VGA32

:FILES :MODE=PRIMARY :MODE=WINDOWS
WINVGA          %WINPATH%\SYSTEM

:FILES :MODE=PRIMARY :MODE=WINOS2
SWINVGA         %WINPATH%\SYSTEM

:FILES :MODE=PRIMARY :MODE=WINDOWS_H
WINVGA          %WINHPATH%\SYSTEM
%NLV%\OEMJVGA   %WINHPATH%\SYSTEM
SWINVGA         %WINHPATH%\SYSTEM

:FILES :MODE=PRIMARY :MODE=WINDOWS_J
WINVGA          %WINJPATH%\SYSTEM
SWINVGA         %WINJPATH%\SYSTEM

:FILES :MODE=PRIMARY :MODE=WINDOWS_J :MODE=JP
%NLV%\OEMJVGA   %WINJPATH%\SYSTEM

:FILES :MODE=PRIMARY :MODE=WINDOWS_T
WINVGA          %WINTPATH%\SYSTEM
SWINVGA         %WINTPATH%\SYSTEM

:APPEND :MODE=PRIMARY :MODE=WINDOWS
vga.drv         %WINPATH%\SYSTEM
*vgamono.drv    %WINPATH%\SYSTEM
*vgalogo.lgo    %WINPATH%\SYSTEM
*vga.3gr        %WINPATH%\SYSTEM
*vgalogo.rle    %WINPATH%\SYSTEM
*vgacolor.2gr   %WINPATH%\SYSTEM

:APPEND :MODE=PRIMARY :MODE=WINDOWS_H
vga.drv         %WINHPATH%\SYSTEM
*vgamono.drv    %WINHPATH%\SYSTEM
*vgalogo.lgo    %WINHPATH%\SYSTEM
*vga.3gr        %WINHPATH%\SYSTEM
*vgalogo.rle    %WINHPATH%\SYSTEM
*vgacolor.2gr   %WINHPATH%\SYSTEM

:APPEND :MODE=PRIMARY :MODE=WINDOWS_J
vga.drv         %WINJPATH%\SYSTEM
*vgamono.drv    %WINJPATH%\SYSTEM
*vgalogo.lgo    %WINJPATH%\SYSTEM
*vga.3gr        %WINJPATH%\SYSTEM
*vgalogo.rle    %WINJPATH%\SYSTEM
*vgacolor.2gr   %WINJPATH%\SYSTEM

:APPEND :MODE=PRIMARY :MODE=WINDOWS_T
vga.drv         %WINTPATH%\SYSTEM
*vgamono.drv    %WINTPATH%\SYSTEM
*vgalogo.lgo    %WINTPATH%\SYSTEM
*vga.3gr        %WINTPATH%\SYSTEM
*vgalogo.rle    %WINTPATH%\SYSTEM
*vgacolor.2gr   %WINTPATH%\SYSTEM

:CONFIG :MODE=PRIMARY
DEVINFO=SCR,VGA,%BOOTDRIVE%:\OS2\BOOT\VIOTBL.DCP
SET VIDEO_DEVICES=VIO_VGA
SET DISPLAYTYPE=VGA

:CONFIG :MODE=PRIMARY :MODE=SBCS :MODE!=BIDI
SET VIO_VGA=DEVICE(BVHVGA)

:CONFIG :MODE=PRIMARY :MODE=SBCS :MODE=BIDI
SET VIO_VGA=DEVICE(BVHVGA,BDBVH)

:CONFIG :MODE=PRIMARY :MODE=DBCS
SET VIO_VGA=DEVICE(BVHVGA,BVHVGA2)

:CONFIG :MODE=PRIMARY :MODE=DOS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VVGA.SYS

:CONFIG :MODE=DUAL :MODE=DOS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VVGA.SYS /DUAL

:OS2INI :MODE=PRIMARY
%BOOTDRIVE%:\OS2\INSTALL\REINSTAL.INI
InstallWindow VIOADAPTERSTR 4

:OS2INI :MODE=SECONDARY
%BOOTDRIVE%:\OS2\INSTALL\REINSTAL.INI
InstallWindow VIOADAPTER2STR 4

:OS2INI :MODE=PRIMARY
OS2.INI
PM_DISPLAYDRIVERS  IBMVGA32       IBMVGA32
PM_DISPLAYDRIVERS  CURRENTDRIVER  IBMVGA32
PM_DISPLAYDRIVERS  DEFAULTDRIVER  IBMVGA32

* Fullpack WINOS2 specific entries
:WININI :MODE=PRIMARY :MODE=WINOS2 :MODE!=GR
%WINPATH%\WIN.INI
fonts "Symbol %ANYSTRING%"

:WININI :MODE=PRIMARY :MODE=WINOS2 :MODE=GR
%WINPATH%\WIN.INI
fonts "Symbol 8,%ANYSTRING%"

:WININI :MODE=PRIMARY :MODE=WINOS2
%WINPATH%\WIN.INI
fonts "Courier %ANYSTRING%"
fonts "MS Sans Serif %ANYSTRING%"
fonts "MS Serif %ANYSTRING%"
fonts "Small Fonts %ANYSTRING%"

:WININI :MODE=PRIMARY :MODE=WINDOWS :MODE!=GR
%WINPATH%\WIN.INI
fonts "Roman (Plotter)"                           roman.fon
fonts "Script (Plotter)"                          script.fon
fonts "Modern (Plotter)"                          modern.fon
fonts "MS Sans Serif 8,10,12,14,18,24 (VGA res)"  sserife.fon
fonts "Courier 10,12,15 (VGA res)"                coure.fon
fonts "MS Serif 8,10,12,14,18,24 (VGA res)"       serife.fon
fonts "Symbol 8,10,12,14,18,24 (VGA res)"         symbole.fon
fonts "Small Fonts (VGA res)"                     smalle.fon

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

:WININI :MODE=PRIMARY :MODE=WINDOWS
%WINPATH%\WIN.INI
Desktop IconSpacing 75

:WININI :MODE=PRIMARY :MODE=WINDOWS_H
%WINHPATH%\WIN.INI
fonts "Symbol %ANYSTRING%"
fonts "Helv %ANYSTRING%"
fonts "Tms Rmn %ANYSTRING%"
fonts "Courier %ANYSTRING%"
fonts "MS Sans Serif %ANYSTRING%"
fonts "MS Serif %ANYSTRING%"
fonts "Small Fonts %ANYSTRING%"
fonts "Roman (Plotter)"                           roman.fon
fonts "Script (Plotter)"                          script.fon
fonts "Modern (Plotter)"                          modern.fon
fonts "MS Sans Serif 8,10,12,14,18,24 (VGA res)"  sserife.fon
fonts "Courier 10,12,15 (VGA res)"                coure.fon
fonts "MS Serif 8,10,12,14,18,24 (VGA res)"       serife.fon
fonts "Symbol 8,10,12,14,18,24 (VGA res)"         symbole.fon
fonts "Small Fonts (VGA res)"                     smalle.fon
Desktop IconSpacing 75

:WININI :MODE=PRIMARY :MODE=WINDOWS_J
%WINJPATH%\WIN.INI
fonts "Symbol %ANYSTRING%"
fonts "Helv %ANYSTRING%"
fonts "Tms Rmn %ANYSTRING%"
fonts "Courier %ANYSTRING%"
fonts "MS Sans Serif %ANYSTRING%"
fonts "MS Serif %ANYSTRING%"
fonts "Small Fonts %ANYSTRING%"
fonts "Roman (Plotter)"                           roman.fon
fonts "Script (Plotter)"                          script.fon
fonts "Modern (Plotter)"                          modern.fon
fonts "MS Sans Serif 8,10,12,14,18,24 (VGA res)"  sserife.fon
fonts "Courier 10,12,15 (VGA res)"                coure.fon
fonts "MS Serif 8,10,12,14,18,24 (VGA res)"       serife.fon
fonts "Symbol 8,10,12,14,18,24 (VGA res)"         symbole.fon
fonts "Small Fonts (VGA res)"                     smalle.fon
Desktop IconSpacing 75

:WININI :MODE=PRIMARY :MODE=WINDOWS_T
%WINTPATH%\WIN.INI
fonts "Symbol %ANYSTRING%"
fonts "Helv %ANYSTRING%"
fonts "Tms Rmn %ANYSTRING%"
fonts "Courier %ANYSTRING%"
fonts "MS Sans Serif %ANYSTRING%"
fonts "MS Serif %ANYSTRING%"
fonts "Small Fonts %ANYSTRING%"
fonts "Roman (Plotter)"                           roman.fon
fonts "Script (Plotter)"                          script.fon
fonts "Modern (Plotter)"                          modern.fon
fonts "MS Sans Serif 8,10,12,14,18,24 (VGA res)"  sserife.fon
fonts "Courier 10,12,15 (VGA res)"                coure.fon
fonts "MS Serif 8,10,12,14,18,24 (VGA res)"       serife.fon
fonts "Symbol 8,10,12,14,18,24 (VGA res)"         symbole.fon
fonts "Small Fonts (VGA res)"                     smalle.fon
Desktop IconSpacing 75

:WININI :MODE=PRIMARY :MODE=WINDOWS
%WINPATH%\SYSTEM.INI
boot   WOS2VDMApps
boot   SAVDMApps

:WININI :MODE=PRIMARY :MODE=WINDOWS :MODE!=GR
%WINPATH%\SYSTEM.INI
boot   fonts.fon vgasys.fon

:WININI :MODE=PRIMARY :MODE=WINDOWS :MODE=GR
%WINPATH%\SYSTEM.INI
boot   fonts.fon vgasysa.fon

:WININI :MODE=PRIMARY :MODE=WINDOWS
%WINPATH%\SYSTEM.INI
boot   display.drv  vga.drv
boot   sdisplay.drv vga.drv
* windows 3.1 specific system.ini entries
boot.description  display.drv  VGA
*VGA.DRV   dpi  120

* Fullpack WINOS2 specific entries
:WININI :MODE=PRIMARY :MODE=WINOS2 :MODE!=GR
%WINPATH%\SYSTEM.INI
boot   fixedfon.fon vgafix.fon

:WININI :MODE=PRIMARY :MODE=WINOS2 :MODE=GR
%WINPATH%\SYSTEM.INI
boot   fixedfon.fon vgafixa.fon

:WININI :MODE=PRIMARY :MODE=WINOS2
%WINPATH%\SYSTEM.INI
boot   oemfonts.fon vgaoem.fon
boot   sdisplay.drv swinvga.drv
boot.description  sdisplay.drv  VGA

:WININI :MODE=PRIMARY :MODE=WINDOWS_H
%WINHPATH%\SYSTEM.INI
boot   WOS2VDMApps
boot   SAVDMApps
boot   fixedfon.fon vgafix.fon
boot   fonts.fon    vgasys.fon
boot   oemfonts.fon vgaoem.fon
boot   display.drv  vga.drv
boot   sdisplay.drv vga.drv
* windows 3.1 specific system.ini entries
boot.description  display.drv "VGA °íµñ 10pt."
*VGA.DRV   dpi  120
boot sdisplay.drv  swinvga.drv
boot.description  sdisplay.drv "VGA °íµñ 10pt."

:WININI :MODE=PRIMARY :MODE=WINDOWS_J
%WINJPATH%\SYSTEM.INI
boot   WOS2VDMApps
boot   SAVDMApps
boot   display.drv  vga.drv
boot   sdisplay.drv vga.drv
* windows 3.1 specific system.ini entries
*VGA.DRV   dpi  120
boot sdisplay.drv  swinvga.drv

:WININI :MODE=PRIMARY :MODE=WINDOWS_J :MODE=CN
%WINJPATH%\SYSTEM.INI
boot   fixedfon.fon vgafix.fon
boot   fonts.fon    vgasys.fon
boot   oemfonts.fon vgaoem.fon
boot.description display.drv "VGA GOTHIC 10pt."
boot.description sdisplay.drv "VGA GOTHIC 10pt."

:WININI :MODE=PRIMARY :MODE=WINDOWS_J :MODE=JP
%WINJPATH%\SYSTEM.INI
boot   fixedfon.fon ps55sfix.fon
boot   fonts.fon    ps55ssys.fon
boot   oemfonts.fon ps55soem.fon
boot.description display.drv "VGA ºÞ¼¯¸ 10pt."
boot.description sdisplay.drv "VGA ºÞ¼¯¸ 10pt."

:WININI :MODE=PRIMARY :MODE=WINDOWS_T
%WINTPATH%\SYSTEM.INI
boot   WOS2VDMApps
boot   SAVDMApps
boot   fixedfon.fon vgafix.fon
boot   fonts.fon    vgasys.fon
boot   oemfonts.fon vgaoem.fon
boot   display.drv  vga.drv
boot   sdisplay.drv vga.drv
* windows 3.1 specific system.ini entries
boot.description display.drv "VGA 10pt."
*VGA.DRV   dpi  120
boot sdisplay.drv  swinvga.drv
boot.description sdisplay.drv "VGA 10pt."

:CONFIG :MODE=SECONDARY
SET VIDEO_DEVICES = VIO_VGA,VIO_%PRI%
SET VIO_%PRI% = DEVICE(BVH%PRI%)
SET VIO_VGA   = DEVICE(BVHVGA)

:CONFIG :MODE=SECONDARY :MODE=BIDI
SET VIO_%PRI% = DEVICE(BVH%PRI%,BDBVH)
SET VIO_VGA   = DEVICE(BVHVGA,BDBVH)

:FILES :MODE=SECONDARY
VGA       %BOOTDRIVE%:

