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

A bricked device is a device that shows 'QHSUSB_DLOAD' in the Windows Device Manager and doesn't show anything on display.

Moto E brick happens when:

1. Downgrading to stock 4.4.2 from stock 5.0.x (If correct bootloader is present, no issues)
2. Take OTA from stock 4.4.2 to stock 4.4.4 (If correct bootloader is present, no issues)

Fastboot is three different things with the same name: A protocol for communication between your phone hardware and a computer, software that runs on the phone when in fastboot mode and the executable file on the computer you use to make them talk to each other. Not all phones have a fastboot mode that the user can access. Because fastboot starts before android and even when android isn't installed you can you it as an alternative of recovery mode in case recovery mode partition is corrupted.

File IDs and descriptions (Please note OEMs in many cases change default names):

1. 8x10_msimage.mbn - bootloader
2. MPR8x10.mbn - flasher, ram (the format was hex before MSM/MPRG8974)
3. rawprogram0.xml - partition table definition, it differs if we have a 64GB phone or 32GB or a 16GB, name differs as rawprogram0_32G.xml or rawprogram0_64G.xml or rawprogram0_64G.xml, etc
4. patch0.xml - patch definition of the partitions
5. NON-HLOS.bin - Modem/baseband/radio firmware files

Common terms:

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

Partition -> File match -> Description:

1. Logo -> logo.bin -> Boot, battery full, bootloader unlocked, battery low power and battery unpluged logos are stored here.
2. Boot -> boot.img
3. Recovery -> recovery.img ->
4. Modem/Radio -> NON-HLOS.bin -> Contains radio drivers for mobile communication
5. fsg -> fsg.mbn
6. Bootloader -> motoboot.img -> Contains the bootloader without which the phone won't power on

Prerequsite:

1. You need to install Riff BOX driver for Blank Flash to work. Extract Riff BOX drivers in a folder (you will find both 32bit and 64bit versions). Open dseo13b.exe and choose "Sign a System File", follow the program instructions and there you go, the program will ask you to reboot. While you reboot press F8 multiple times until you get a menu, choose "Disable Driver Signature Enforcement" and Windows will boot automatically after that. To enable, simply restart your system.

Method 1 (QFIL): (Will provide better tutorial soon)

1. Install latest QPST tools (I used version 2.7 build 437) and open QFIL (I used version 2.0.0.4).
2. Choose Flat Build and select the COM port to which the phone is connected.
3. Select the programmer (mbn file) for MSM8x10 and then choose the rawprogram0.xml and patch0.xml by clicking 'Load XML'.
4. Click Download and watch your phone come back to life. Please try all combinations of the files I uploaded. You can download from the folders on my GitHub repository.

Method 2 (Blank Flash):

1. Don't try. Not working. You might make the situation worse. All files aren't present.
2. Blanklash won't work unless Motorola releases the signed files. It's not worth of my time to sit and sign the files with proper checksum. SORRY!
3. Those of you who already tried will most probably have to replace motherboard due to bootloader/SoC internal damage.

Method 3 (eMMC Software Download):

1. Don't try. Not working. You might make the situation worse. All files aren't present.

Method 4 (Mi Flash Tool):

1. Don't try. Not working. You might make the situation worse. All files aren't present.

Fastboot commands to restore stock firmware:

First, identify your situation:

1. Case 1: With the device powered off, press and hold the power button and volume down keys at once for 3-5 seconds to go to fastboot mode. (Only hold both keys for the specified time.)

2. Case 2: With the device powered on, go to Settings -> About Phone and tap on ‘Build number’ 6 times to unlock Developer Options. Come back to Settings to find it. In Developer Options, enable ‘adb’ and any other relevant adb setting. Then open adb on your computer and type ‘adb reboot bootloader’

Once in fastboot mode, do one of this (Everything should be in the root folder instead of sub-folders):

Note: It's better to run the 'Fastboot Unbrick.bat' script to make everything automatic.

Automatic :

1. Get 'Fastboot Unbrick.bat', 'fastboot'

Manual:

1.	fastboot flash partition gpt.bin 
2.	fastboot flash motoboot motoboot.img
3.	fastboot reboot-bootloader
4.	fastboot flash logo logo.bin
5.	fastboot flash boot boot.img
6.	fastboot flash recovery recovery.img
7.	fastboot flash system system.img
8.	fastboot flash modem NON-HLOS.bin
9.	fastboot erase modemst1 
10.	fastboot erase modemst2 
11.	fastboot flash fsg fsg.mbn
12.	fastboot erase userdata
13.	fastboot erase cache
14.	fastboot oem lock
15.	fastboot restart
