# Motorola-Moto-E-XT1022-condor-unbrick
Tools for Motorola Moto E XT1022 condor unbrick

Hi there!

I have a bricked Motorola Moto E XT1022 condor. I watched so many threads to try and unbrick, but unfortunately all threads just got abandoned. Hence, I have come up with a DevDB project to try and unbrick Moto E XT1022 condor. Please note, this project is only for [B]Motorola Moto E XT1022 condor[/B]. Between, I also have an unbricked Moto E.

[QUOTE]Warning: I am in no way responsible for your actions. You are on your own. Please undertake all actions at your own risk.[/QUOTE]

[QUOTE]Please compress all files before uploading to the cloud after removing personal data.[/QUOTE]

[B]Status:[/B]

Currently looking for the original Moto files and people who are willing to test or contribute.

[B]Goal:[/B]

The goal of this project is to gather all the information and tools required in unbricking a hard bricked Motorola Moto E 1st Generation XT1022 condor.

[B]Willing to help?[/B]

Please help me find the files or people who are willing to contribute.

Is there anyone who is willing to 'dd' their Moto E's 'mmcblk0' after factory reset and upload the files here? Please contact me if you are willing to help. (Factory reset because, I don't want your personal information. Without factory reset is also fine. I won't touch your personal information. But others might. Your risk!)

[B]UPDATE:[/B]

Working on QPST tools now:
* Need to find prog_emmc_firehose_8210.mbn
* Need to create partition.xml

[B]Possible methods:[/B]

1. Blank Flash
Requires: singleimage_8210.mbn, qboot utility for Moto E, programmer_8210.mbn
2. MiFlash
Requires: fastboot script, fastboot or mfastboot, MPRG8210.hex, 8210_msimage.mbn, rawprogram0.xml, patch0.xml
3. QPST
Requires: QPST tool, rawprogram0.xml, patch0.xml, prog_emmc_firehose_8210.mbn, flat build/single image, multi build/sparse images.

[B]Files:[/B]

[URL="https://drive.google.com/open?id=0B_8bPuHD9GBjd0hURmc5c1U5R0E"]Motorola Moto E files - Google Drive (Aravind V.
 Nair)[/URL]

[B]Reference:[/B]

[URL="https://forum.xda-developers.com/showthread.php?t=1959445"]Reference[/URL]
[URL="http://kernel-develop.blogspot.in/2012/05/how-to-generate-8660msimagembn.html"]Generate MSMimage.mbn[/URL]

[B]Prerequisite:[/B]

1. You need to install Riff BOX driver for Blank Flash to work. Extract Riff BOX drivers in a folder (you will find both 32bit and 64bit versions). Open dseo13b.exe and choose "Sign a System File", follow the program instructions and there you go, the program will ask you to reboot. While you reboot press F8 many times until you get a menu, choose "Disable Driver Signature Enforcement" and Windows will boot automatically after that. To enable, simply restart your system.

[B]Solution:[/B]

[B]Method 1:[/B]

1. Install latest QPST tools (I used version 2.7 build 437) and open QFIL (I used version 2.0.0.4).
2. Choose Flat Build and select the COM port to which the phone is connected.
3. Select the programmer (mbn file) for MSM8x10 and then choose the rawprogram0.xml and patch0.xml by clicking 'Load XML'.
4. Click Download and watch your phone come back to life.

Note:

1. The files are bit buggy and your mileage might vary. I bricked the phone again to test and now it is not working.


[SIZE="5"][B]Hit the thanks button below to show your support! :good: :) :D [/B][/SIZE]
