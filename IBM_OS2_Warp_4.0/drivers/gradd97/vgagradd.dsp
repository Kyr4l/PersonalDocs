:TITLE
VGA GRADD DSP

:KEY
VGAGRADD

:DEL_CONFIG_LINE :MODE=PRIMARY
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VVGA.SYS
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VVGA.SYS /DUAL

:CONFIG :MODE=PRIMARY
SET C1=VGAGRADD

:CONFIG :MODE=PRIMARY
DEVICE=%BOOTDRIVE%:\OS2\MDOS\VSVGA.SYS

* Use native VGA driver vga.drv for faster relative speed than ifgdi2vm.drv
:WININI :MODE=PRIMARY :MODE=WINDOWS
%WINPATH%\SYSTEM.INI
boot display.drv vga.drv
boot.description display.drv "VGA"

:WININI :MODE=PRIMARY :MODE=WINDOWS_H
%WINHPATH%\SYSTEM.INI
boot display.drv vga.drv
boot.description display.drv "VGA °íµñ 10pt."

:WININI :MODE=PRIMARY :MODE=WINDOWS_J
%WINJPATH%\SYSTEM.INI
boot display.drv vga.drv
boot.description display.drv "VGA ºÞ¼¯¸ 10pt."

:WININI :MODE=PRIMARY :MODE=WINDOWS_T
%WINTPATH%\SYSTEM.INI
boot display.drv vga.drv
boot.description display.drv "VGA 10pt."
