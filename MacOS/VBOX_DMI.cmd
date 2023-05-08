echo "Note: You should replace your "Mac OS" with your own virtual Machine"
echo "Code for Virtualbox 6.x:"

cd "C:\Program Files\Oracle\VirtualBox\"

echo "If using an AMD CPU : ' VBoxManage modifyvm "MacOS" --cpu-profile "Intel Core i7-6700K" '"

VBoxManage.exe modifyvm "MacOS_Sierra" --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage setextradata "MacOS_Sierra" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage setextradata "MacOS_Sierra" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "MacOS_Sierra" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
VBoxManage setextradata "MacOS_Sierra" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata "MacOS_Sierra" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 0


echo "https://www.nosware.com/macos-sierra-iso-download/19801/"
pause