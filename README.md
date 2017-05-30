# Motorola-Moto-E-XT1022-condor-unbrick
Tools for Motorola Moto E XT1022 condor unbrick

MIT License

Copyright (c) 2017 Aravind V. Nair

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

Check here first: https://forum.xda-developers.com/moto-e/general/unbrick-hard-bricked-moto-e-t3599214

Prerequsite:

1. You need to install Riff BOX driver for Blank Flash to work. Extract Riff BOX drivers in a folder (you will find both 32bit and 64bit versions). Open dseo13b.exe and choose "Sign a System File", follow the program instructions and there you go, the program will ask you to reboot. While you reboot press F8 many times until you get a menu, choose "Disable Driver Signature Enforcement" and Windows will boot automatically after that. To enable, simply restart your system.

Method 1 (QFIL):

1. Install latest QPST tools (I used version 2.7 build 437) and open QFIL (I used version 2.0.0.4).
2. Choose Flat Build and select the COM port to which the phone is connected.
3. Select the programmer (mbn file) for MSM8x10 and then choose the rawprogram0.xml and patch0.xml by clicking 'Load XML'.
4. Click Download and watch your phone come back to life. Please try all combinations of the files I uploaded.

Method 2 (Blank Flash):

1. Don't try. Not working. You might make the situation worse.

Method 3 (eMMC Software Download):

1. 

Fastboot commands to restore stock firmware:

First, identify your situation:

1. Case 1: With the device powered off, press and hold the power button and volume down keys at once for 3-5 seconds to go to fastboot mode. (Only hold both keys for the specified time.)

2. Case 2: With the device powered on, go to Settings -> About Phone and tap on ‘Build number’ 6 times to unlock Developer Options. Come back to Settings to find it. In Developer Options, enable ‘adb’ and any other relevant adb setting. Then open adb on your computer and type ‘adb reboot bootloader’

Once in fastboot mode, type these (Make sure all files are in one folder and not sub-folders):

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
