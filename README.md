# Motorola-Moto-E-XT1022-condor-unbrick
Tools for Motorola Moto E XT1022 condor unbrick

# :octocat: How to contribute?

All contributions are welcome! Code, documentation, graphics or even design suggestions are welcome; use GitHub to its fullest. Submit pull requests, contribute tutorials or other wiki content -- whatever you have to offer, it would be appreciated!

Please read [CONTRIBUTING.md](https://github.com/aravindvnair99/Motorola-Moto-E-XT1022-condor-unbrick/blob/master/CONTRIBUTING.md) for details on contributing.

# :scroll: License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

# :octocat: Authors

* **Aravind V. Nair** - *All development*- [AravindVNair99](https://github.com/aravindvnair99)

See also the list of [contributors](https://github.com/aravindvnair99/Motorola-Moto-E-XT1022-condor-unbrick/graphs/contributors) who participated in this project.

# :trident: Questions, FAQ, etc

Please check my XDA DevDB post [here](https://forum.xda-developers.com/moto-e/general/unbrick-hard-bricked-moto-e-t3599214).

Check here first on my XDA DevDB project before proceeding: https://forum.xda-developers.com/moto-e/general/unbrick-hard-bricked-moto-e-t3599214

# :heavy_exclamation_mark: Prerequsite aka requirements:

Please read [Prerequisite](Prerequisite.md) file for details.

# :book: How to contact me?

Please check [here](https://github.com/aravindvnair99/Motorola-Moto-E-XT1022-condor-unbrick/blob/master/Contact%20me.md).

# :book: How to unbrick?

Please check my [XDA DevDB project here](https://forum.xda-developers.com/moto-e/general/unbrick-hard-bricked-moto-e-t3599214) before checking [GitHub here](https://github.com/aravindvnair99/Motorola-Moto-E-XT1022-condor-unbrick/blob/master/Unbrick%20methods.md).

# :scroll: Changelog

I frequently update and patch things in this repository as I get time. Be sure to check the [changelog here](https://github.com/aravindvnair99/Motorola-Moto-E-XT1022-condor-unbrick/commits/master).

> Read through my XDA DevDB post in the link above before proceeding any further.

```
DO NOT DOWNLOAD OR FORK ANYTHING. FILES ARE STILL BEING MADE!! TRY AT YOUR OWN RISK!!


DO NOT DOWNLOAD OR FORK ANYTHING. FILES ARE STILL BEING MADE!! TRY AT YOUR OWN RISK!!


DO NOT DOWNLOAD OR FORK ANYTHING. FILES ARE STILL BEING MADE!! TRY AT YOUR OWN RISK!!


DO NOT DOWNLOAD OR FORK ANYTHING. FILES ARE STILL BEING MADE!! TRY AT YOUR OWN RISK!!


DO NOT DOWNLOAD OR FORK ANYTHING. FILES ARE STILL BEING MADE!! TRY AT YOUR OWN RISK!!


DO NOT DOWNLOAD OR FORK ANYTHING. FILES ARE STILL BEING MADE!! TRY AT YOUR OWN RISK!!


DO NOT DOWNLOAD OR FORK ANYTHING. FILES ARE STILL BEING MADE!! TRY AT YOUR OWN RISK!!
```

A hard bricked device is a device that shows 'QHSUSB_DLOAD' in the Windows Device Manager and doesn't show anything on display.

# :heavy_exclamation_mark: Moto E brick happens when:

* Downgrading to stock 4.4.2 from stock 5.0.x (If correct bootloader is present, no issues)
* Take OTA from stock 4.4.2 to stock 4.4.4 (If correct bootloader is present, no issues)

Fastboot is three different things with the same name: A protocol for communication between your phone hardware and a computer, software that runs on the phone when in fastboot mode and the executable file on the computer you use to make them talk to each other. Not all phones have a fastboot mode that the user can access. Because fastboot starts before android and even when android isn't installed you can you it as an alternative of recovery mode in case recovery mode partition is corrupted.

# :book: File IDs and descriptions (Please note OEMs in many cases change default names):

* 8x10_msimage.mbn / motoboot.img - bootloader
* MPR8x10.mbn - flasher, ram (the format was hex before MSM/MPRG8974)
* rawprogram0.xml - partition table definition, it differs if we have a 64GB phone or 32GB or a 16GB, name differs as rawprogram0_32G.xml or rawprogram0_64G.xml or rawprogram0_64G.xml, etc
* patch0.xml - patch definition of the partitions
* NON-HLOS.bin / modem.img - Modem/baseband/radio firmware files
* aboot.img - Application Bootloader boots the Android kernel/Recovery kernel
* boot.img - Primary Bootloader is a computer program that loads the main operating system or runtime environment for the computer after completion of the self-tests. It acts as a communication engine to download the Secondary Boot Loader (SBL) into the internal RAM and then activates it. The SBL adds functions for erase and programming of flash memory and EEPROM; it also handles the actual download of new or updated software. This allows a minimum ROM utilization by the PBL.

# :book: Common terms:

* PBL = Primary Boot Loader
* SBL = Secondary Boot Loader
* RPM = Resource and Power Management
* TZ = Trust Zone
* HDLC = High level Data Link Control
* MSM = Mobile Station Modem
* DMSS = Dual Mode Subscriber Station
* QDL = Qualcomm Download
* QHSUSB_DLOAD = Qualcomm High Speed USB Download
* EhostDL = Emergency Host Download
* DCN = Document Control Number, used by Qualcomm to track their thousands of documents
* QFIL = Qualcomm Flash Image Loader
* QPST = Qualcomm
* EDL = Emergency Download mode
* HLOS = High Level OS (Normal boot up mode)
* QFIT = Qualcomm Factory Image Tools
* ABOOT = Application Bootloader

# :book: Partition -> File match -> Description: (Motorola specific)

* Logo -> logo.bin -> Boot, battery full, bootloader unlocked, battery low power and battery unpluged logos are stored here.
* Boot -> boot.img
* Recovery -> recovery.img ->
* Modem/Radio -> NON-HLOS.bin -> Contains radio drivers for mobile communication
* fsg -> fsg.mbn
* Bootloader -> motoboot.img -> Contains the bootloader without which the phone won't power on
* PDS -> pds.img -> Contains information specific to your device: MEID, IMEI, MAC address, serial number, etc.
* The Application Bootloader ABOOT boots the Android kernel/Recovery kernel. It is the mechanism to download images onto the device from a host machine (like Windows/Linux PC). The Primary Bootloader boot part is a computer program that loads the main operating system or runtime environment for the computer after completion of the self-tests. The PBL acts as a communication engine to download the Secondary Boot Loader (SBL) into the internal RAM and then activates it. The SBL adds functions for erase and programming of flash memory and EEPROM; it also handles the actual download of new or updated software. This allows a minimum ROM utilization by the PBL.

# :book: Original Firmware:

* [XT1019 (CDMA)](https://drive.google.com/drive/folders/0Bw_NsGJYGFyVMGNZVWZPOTYyVU0)
* [XT1021 (Single SIM)](https://drive.google.com/drive/folders/0Bw_NsGJYGFyVei1vdnJhekpDMWs)
* [XT1022 (Dual SIM)](https://drive.google.com/drive/folders/0Bw_NsGJYGFyVbjh0REhNZHpDRFk)
* [XT1023 (AWS)](https://drive.google.com/drive/folders/0Bw_NsGJYGFyVblQ3MmR1Z3JTd0E)
* [XT1025 (Dual SIM with Digital TV)](https://drive.google.com/drive/folders/0Bw_NsGJYGFyVNXNsVHh2NFNrNVE)
* [XT830C (Straight Talk)](https://www.androidfilehost.com/?fid=24052804347833874)
* [If nothing works, pick from here for your respective model](https://forum.xda-developers.com/showthread.php?t=2755857)

Note: To find out which firmware you have, type ```fastboot getvar ro.build.version.full``` in fastboot mode.
