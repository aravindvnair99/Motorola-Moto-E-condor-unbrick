echo off
cls
title Fastboot Unbrick Script by Aravind V Nair
echo This script is made by Aravind V Nair only for Motorola devices.
echo
echo Please do not try on other devices.
echo
echo You can find methods to contact me by searching Google for my name.
echo
echo Are you ready to unbrick? Else, press Ctrl + C.
pause
echo Flashing boot partition
fastboot flash boot boot.img
timeout /t 2
fastboot flash recovery recovery.img
timeout /t 2
fastboot flash system system.img_sparsechunk.0
timeout /t 2
fastboot flash system system.img_sparsechunk.1
timeout /t 2
fastboot flash system system.img_sparsechunk.2
timeout /t 2
fastboot flash modem NON-HLOS.bin
timeout /t 2
fastboot erase modemst1
timeout /t 2
fastboot erase modemst2
timeout /t 2
fastboot flash fsg fsg.mbn
timeout /t 2
fastboot erase cache
timeout /t 2
fastboot erase userdata
timeout /t 2
fastboot reboot
echo on
pause
