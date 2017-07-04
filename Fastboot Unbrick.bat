echo off
mode 1000
cls
title Fastboot Unbrick Script by Aravind V Nair
echo.
echo This script is made by Aravind V. Nair only for Motorola devices.
echo.
echo Please do not try on other devices.
echo.
echo You can find methods to contact me by searching Google for my name - 'Aravind V. Nair'.
echo.
echo Are you ready to unbrick? Else, press Ctrl + C.
echo.
pause
echo Are you sure? Okay, do not interrupt the process. Let the program finish.
echo.
echo Flashing boot partition
echo.
fastboot flash boot boot.img
timeout /t 2
echo.
echo Flashing recovery partition
echo.
fastboot flash recovery recovery.img
timeout /t 2
echo.
echo Flashing system partition
echo.
fastboot flash system system.img_sparsechunk.0
timeout /t 2
fastboot flash system system.img_sparsechunk.1
timeout /t 2
fastboot flash system system.img_sparsechunk.2
timeout /t 2
echo.
echo Flashing modem partition
echo.
fastboot flash modem NON-HLOS.bin
timeout /t 2
echo.
echo Wiping modem backups
fastboot erase modemst1
timeout /t 2
fastboot erase modemst2
timeout /t 2
echo.
echo Flashing fsg partition
echo.
fastboot flash fsg fsg.mbn
timeout /t 2
echo Wiping cache partition
echo.
fastboot erase cache
timeout /t 2
echo Wiping userdata partition
echo.
fastboot erase userdata
timeout /t 2
echo Device rebooting.
echo.
fastboot reboot
echo Script processed successfully. If device still doesn't work, make sure the files are correct and drivers are installed.
echo.
echo on
pause
