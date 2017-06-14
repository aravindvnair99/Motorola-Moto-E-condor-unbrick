echo on
fastboot flash boot boot.img
fastboot flash recovery recovery.img
fastboot flash system system.img_sparsechunk.0
fastboot flash system system.img_sparsechunk.1
fastboot flash system system.img_sparsechunk.2
fastboot flash modem NON-HLOS.bin
fastboot erase modemst1
fastboot erase modemst2
fastboot flash fsg fsg.mbn
fastboot erase cache
fastboot erase userdata
fastboot reboot
pause
