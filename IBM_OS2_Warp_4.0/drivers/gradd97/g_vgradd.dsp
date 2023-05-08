:TITLE
GENGRADD and VGAGRADD DSP

:KEY
G_VGRADD

:CONFIG :MODE=PRIMARY
SET C1=GENGRADD,SBFILTER,VGAGRADD

:WININI :MODE=PRIMARY :MODE=WINDOWS
%WINPATH%\SYSTEM.INI
boot   useos2shield 1
boot   os2shield    winsheld.exe
Desktop IconSpacing 75

:WININI :MODE=PRIMARY :MODE=WINDOWS_H
%WINHPATH%\SYSTEM.INI
boot   useos2shield 1
boot   os2shield    winsheld.exe
Desktop IconSpacing 75

:WININI :MODE=PRIMARY :MODE=WINDOWS_J
%WINJPATH%\SYSTEM.INI
boot   useos2shield 1
boot   os2shield    winsheld.exe
Desktop IconSpacing 75

:WININI :MODE=PRIMARY :MODE=WINDOWS_T
%WINTPATH%\SYSTEM.INI
boot   useos2shield 1
boot   os2shield    winsheld.exe
Desktop IconSpacing 75

:SET_RESOLUTION
WIDTH=640
HEIGHT=480
COLORS=16
PLANES=1
