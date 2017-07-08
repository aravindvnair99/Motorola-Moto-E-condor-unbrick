```
Before you begin, identify what type of brick you have first.

* A hardware bricked device has nothing but a black screen (nothing ever comes on the screen, not even a boot logo), it might vibrate when a power button is pressed and held for 20 seconds, has no Recovery partition, no adb mode, and no fastboot partition. The device might be detected in Linux and you might be able to even send commands to it. In Windows, the bricked device should be detected as QHSUSB_BULK USB or one of its variations. You might have a bricked device as a result of flashing a kernel meant for a different device (or a ROM meant for another device that included a kernel), tinkering with the boot logo or bootloader, or your attempt of unlocking the bootloader resulted in corrupting the boot partition. Use any method and try your luck. Once your display starts to work, go to method 5 and perform that to fully recover your device.

* A software bricked device is one that might be stuck in a bootloop, but has a working bootloader, recovery partition, fastboot, or adb. If you press the power button and things appear on the screen and you are able to enter fastboot mode (Power + Volume Down) or recovery, then your device is soft bricked. Go straight to Method 5. DO NOT TRY OTHER METHODS NO MATTER WHAT HAPPENS UNLESS YOU HARD BRICK YOUR PHONE OF COURSE!!
```
# Method 1 (QFIL):

1. Install latest QPST tools (I used version 2.7 build 437) and open QFIL (I used version 2.0.0.4).
2. Choose Flat Build and select the COM port to which the phone is connected.
3. Select the programmer (mbn file) for MSM8x10 and then choose the rawprogram0.xml and patch0.xml by clicking 'Load XML'.
4. Click Download and watch your phone come back to life. Please try all combinations of the files I uploaded. You can download from the folders on my GitHub repository.

# Method 2 (Blank Flash):

1. Don't try. Not working. You might make the situation worse. All files aren't present.
2. Blanklash won't work unless Motorola releases the signed files. It's not worth of my time to sit and sign the files with proper checksum. SORRY!
3. Those of you who already tried will most probably have to replace motherboard due to bootloader/SoC internal damage.

# Method 3 (eMMC Software Download):

1. Don't try. Not working. You might make the situation worse. All files aren't present.

# Method 4 (Mi Flash Tool):

1. Don't try. Not working. You might make the situation worse. All files aren't present.

# Method 5 (Fastboot):

First, identify your situation:

* Case 1: With the device powered off, press and hold the power button and volume down keys at once for 3-5 seconds to go to fastboot mode. (Only hold both keys for the specified time.)

* Case 2: With the device powered on, go to Settings -> About Phone and tap on ‘Build number’ 6 times to unlock Developer Options. Come back to Settings to find it. In Developer Options, enable ‘adb’ and any other relevant adb setting. Then open adb on your computer and type ‘adb reboot bootloader’

Once in fastboot mode, do one of this (Everything should be in the root folder instead of sub-folders):

Note: It's better to run the 'Fastboot Unbrick.bat' script to make everything automatic and easier. Also, please unlock your bootloader before proceeding any further as you would render your device back to a hard bricked state or completely unusable state otherwise.

## Automatic :

### Windows Users:

1. Get 'Fastboot Unbrick.bat', 'fastboot' and your firmware files in one folder.
2. Next, double click on Fastboot Unbrick.bat and watch your phone come back to life.

### Linux and Mac Users:

1. Get 'Fastboot Unbrick.sh', 'fastboot' and your firmware files in one folder.
2. Open terminal and navigate to this folder. Or simply right click on an empty space in the folder and choose 'Open in Terminal'.
3. Type the following commands to execute the script in terminal after giving permissions using chmod and watch your phone come back to life.:

```
chmod +x "Fastboot Unbrick.sh"

sudo ./"Fastboot Unbrick.sh"
```

## Manual:

Open fastboot after connecting phone in fastboot mode and type:

```

fastboot flash partition gpt.bin 

fastboot flash motoboot motoboot.img

fastboot reboot-bootloader

fastboot flash logo logo.bin

fastboot flash boot boot.img

fastboot flash recovery recovery.img

fastboot flash system system.img

fastboot flash modem NON-HLOS.bin

fastboot erase modemst1 

fastboot erase modemst2 

fastboot flash fsg fsg.mbn

fastboot erase userdata

fastboot erase cache

fastboot oem lock

fastboot restart

```
# Method 6 (JTAG):

```
Use this as a last resort if nothing works. JTAG is strictly not for noobs.
```

You can either buy a JTAG programmer if you know how to use it and connect to the SoC or contact someone nearby in your locality who can do it for you. But before you try, ask Motorola for their pricing. In some places, contacting Motorola would be better than JTAG. Do some research for the prices and the assurance before you proceed. JTAG will surely work as long as the required files and tools are available. You get higher surety with Motorola for sure as they have the skilled people. **JTAG is strictly not for noobs.**
