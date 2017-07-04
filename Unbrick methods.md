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

Note: It's better to run the 'Fastboot Unbrick.bat' script to make everything automatic and easier.

## Automatic :

### Windows Users:

1. Get 'Fastboot Unbrick.bat', 'fastboot' and your firmware files in one folder.
2. Next, double click on Fastboot Unbrick.bat and watch your phone come back to life.

### Linux Users:

1. Get 'Fastboot Unbrick.sh', 'fastboot' and your firmware files in one folder.
2. Execute Fastboot Unbrick.sh in terminal after giving permissions using chmod and watch your phone come back to life.

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
