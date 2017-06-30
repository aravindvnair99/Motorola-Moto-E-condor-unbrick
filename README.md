# Motorola-Moto-E-XT1022-condor-unbrick
Tools for Motorola Moto E XT1022 condor unbrick

MIT License

Copyright © 2017 Aravind V. Nair

Contact: https://aravindvnair1999.blogspot.com/p/about-the.html

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

Check here first on my XDA DevDB project before proceeding: https://forum.xda-developers.com/moto-e/general/unbrick-hard-bricked-moto-e-t3599214

> Read through my XDA DevDB post in the link above before proceeding any further.

```

DO NOT DOWNLOAD OR FORK ANYTHING. FILES ARE STILL BEING MADE!! TRY AT YOUR OWN RISK


DO NOT DOWNLOAD OR FORK ANYTHING. FILES ARE STILL BEING MADE!! TRY AT YOUR OWN RISK


DO NOT DOWNLOAD OR FORK ANYTHING. FILES ARE STILL BEING MADE!! TRY AT YOUR OWN RISK


DO NOT DOWNLOAD OR FORK ANYTHING. FILES ARE STILL BEING MADE!! TRY AT YOUR OWN RISK


DO NOT DOWNLOAD OR FORK ANYTHING. FILES ARE STILL BEING MADE!! TRY AT YOUR OWN RISK


DO NOT DOWNLOAD OR FORK ANYTHING. FILES ARE STILL BEING MADE!! TRY AT YOUR OWN RISK


DO NOT DOWNLOAD OR FORK ANYTHING. FILES ARE STILL BEING MADE!! TRY AT YOUR OWN RISK

```

A bricked device is a device that shows 'QHSUSB_DLOAD' in the Windows Device Manager and doesn't show anything on display.

# Moto E brick happens when:

* Downgrading to stock 4.4.2 from stock 5.0.x (If correct bootloader is present, no issues)
* Take OTA from stock 4.4.2 to stock 4.4.4 (If correct bootloader is present, no issues)

Fastboot is three different things with the same name: A protocol for communication between your phone hardware and a computer, software that runs on the phone when in fastboot mode and the executable file on the computer you use to make them talk to each other. Not all phones have a fastboot mode that the user can access. Because fastboot starts before android and even when android isn't installed you can you it as an alternative of recovery mode in case recovery mode partition is corrupted.

# File IDs and descriptions (Please note OEMs in many cases change default names):

* 8x10_msimage.mbn - bootloader
* MPR8x10.mbn - flasher, ram (the format was hex before MSM/MPRG8974)
* rawprogram0.xml - partition table definition, it differs if we have a 64GB phone or 32GB or a 16GB, name differs as rawprogram0_32G.xml or rawprogram0_64G.xml or rawprogram0_64G.xml, etc
* patch0.xml - patch definition of the partitions
* NON-HLOS.bin - Modem/baseband/radio firmware files

# Common terms:

1. PBL = Primary Boot Loader
2. SBL = Secondary Boot Loader
3. RPM = Resource and Power Management
4. TZ = Trust Zone
5. HDLC = High level Data Link Control
6. MSM = Mobile Station Modem
7. DMSS = Dual Mode Subscriber Station
8. QDL = Qualcomm Download
9. QHSUSB_DLOAD = Qualcomm High Speed USB Download
10. EhostDL = Emergency Host Download
11. DCN = Document Control Number, used by Qualcomm to track their thousands of documents
12. QFIL = Qualcomm Flash Image Loader
13. QPST = Qualcomm
14. EDL = Emergency Download mode
15. HLOS = High Level OS (Normal boot up mode)
16. QFIT = Qualcomm Factory Image Tools

# Partition -> File match -> Description:

1. Logo -> logo.bin -> Boot, battery full, bootloader unlocked, battery low power and battery unpluged logos are stored here.
2. Boot -> boot.img
3. Recovery -> recovery.img ->
4. Modem/Radio -> NON-HLOS.bin -> Contains radio drivers for mobile communication
5. fsg -> fsg.mbn
6. Bootloader -> motoboot.img -> Contains the bootloader without which the phone won't power on
7. PDS -> pds.img -> Contains information specific to your device: MEID, IMEI, MAC address, serial number, etc.

# Prerequsite:

Please read [Prerequisite](Prerequisite.md) file for details.

# Contributing

Please read [CONTRIBUTING.md](https://github.com/aravindvnair99/Motorola-Moto-E-XT1022-condor-unbrick/blob/master/CONTRIBUTING.md) for details on contributing.

# License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

# Authors

* **Aravind V. Nair** - *All development*- [AravindVNair99](https://github.com/aravindvnair99)

See also the list of [contributors](https://github.com/aravindvnair99/Motorola-Moto-E-XT1022-condor-unbrick/graphs/contributors) who participated in this project.
