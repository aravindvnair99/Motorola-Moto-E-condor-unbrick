* You need proper Windows drivers. There are architectural differences between Windows XP and Windows 7/8/10. The installation and process is very simple and straightforward on Windows XP (I also tested successfully on Windows 2003), but proves to be quite a challenge when running on Windows 7 or 8 or 10 although you can unbrick. Over and over people report issues when attempting the unbrick procedure on Windows 7/8/10, some have more luck than others. Some have zero luck. That being said, if you have access to a Windows XP computer, I would highly recommend that you use that. If you have no choice but to use a Windows 7 or 8 or 10 computer and have problems, please share them over at my XDA DevDB project thread and read others' experiences.

* By now you would have probably tried lot of different things to fix your phone and you would have already installed some drivers, including Qualcomm USB drivers for 9006 and 9008. My best advice is to uninstall everything you installed and tried so far and use the ones I have mentioned. Files can be downloaded from my GitHub repository. Don't go ahead and download every single thing. Just get what you need.

* Go to Device Manager, right click on the bricked USB device (QHSUSB_BULK or Qualcomm HS-USB QDLoader 9008) and go to Properties, click on Driver, then select Uninstall. Check the box to remove driver files, if prompted.

* Unplug all USB device. [Download and install Driver Booster by IObit](http://www.iobit.com/en/driver-booster.php) Click 'Toolkit from the top bar and then click 'Clean Unplugged Devices Data'. Reboot on completition.

* You need to install Riff BOX driver for Blank Flash to work. Extract Riff BOX drivers in a folder (you will find both 32bit and 64bit versions). Open dseo13b.exe and choose "Sign a System File", follow the program instructions and there you go, the program will ask you to reboot. On Windows 7/8/10, while you reboot press F8 multiple times until you get a menu, choose "Disable Driver Signature Enforcement" and Windows will boot automatically after that. To enable, simply restart your system. Remember to do this step everytime you restart your PC until you are done unbricking. Once you finish unbricking, restart your PC normally. Or just follow the steps below instead for the permanent method.

# Disable Driver Signature Enforcement For Windows 7 editions:

* Close all open things.
* Click on Start button and choose "All Programs" -> "Accessories" -> right click on "Command Prompt" and choose "Run as administrator". * Click yes on the prompt and type your password if asked. Next type these one by one and type enter after each command:

```
bcdedit.exe -set loadoptions DDISABLE_INTEGRITY_CHECKS
bcdedit.exe -set TESTSIGNING ON
shutdown /r /t 0
```

# Enable Driver Signature Enforcement For Windows 7 editions:

* Close all open things.
* Click on Start button and choose "All Programs" -> "Accessories" -> right click on "Command Prompt" and choose "Run as administrator". * Click yes on the prompt and type your password if asked. Next type these one by one and type enter after each command:
`
bcdedit.exe -set loadoptions ENABLE_INTEGRITY_CHECKS
bcdedit.exe -set TESTSIGNING OFF
shutdown /r /t 0
`

# Disable Driver Signature Enforcement For Windows 8/8.1/10 editions:

* Right click on Windows button and then click "Command Prompt (Admin)" OR Press 'Windows key + X' and press 'a'.
* Click yes on the prompt and type your password if asked. Next type these one by one and type enter after each command:
`
bcdedit.exe -set loadoptions DDISABLE_INTEGRITY_CHECKS
bcdedit.exe -set TESTSIGNING ON
shutdown /r /t 0
`

# Enable Driver Signature Enforcement For Windows 8/8.1/10 editions:

* Right click on Windows button and then click "Command Prompt (Admin)" OR Press 'Windows key + X' and press 'a'.
* Click yes on the prompt and type your password if asked. Next type these one by one and type enter after each command:
`
bcdedit.exe -set loadoptions ENABLE_INTEGRITY_CHECKS
bcdedit.exe -set TESTSIGNING OFF
shutdown /r /t 0
`
