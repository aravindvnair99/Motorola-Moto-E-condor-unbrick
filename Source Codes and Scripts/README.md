# :heavy_exclamation_mark: Usage:

These scripts are meant for Linux systems only. Don't try on other OSs'.

# boot_info

Prints information about the boot.img passed to it, including the base address, page size and ramdisk address. This tool prints out everything needed to repack the boot.img correctly.

> su ./boot_info boot.img

# split_boot

More commonly known as split_bootimg.pl, this rips apart the boot.img to extract the ramdisk and zImage. It will split the boot.img into a separate folder (specified by the file name of the boot.img passed to it) and extracts the ramdisk into a sub-folder as well (extracts the cpio from the gz and then extracts the actual files from the cpio archive)

> su ./split_boot boot.img

# unpack_ramdisk

Unpacks the given ramdisk file.

> su ./unpack_ramdisk <ramdiskFile>

# repack_ramdisk

Repacks the ramdisk from the given directory.

> su ./repack_ramdisk <ramdiskDirectory> [outputFile]
    
# mkbootimg

mkbootimg binary that creates a boot.img file from the given ramdisk and zImage. Supports the --ramdiskaddr option (ramdisk address) so that even nonstandard boot.img's can be repacked correctly (Use with boot_info for best results).

# umkbootimg

Included for convenience. Not made by me. Check [here](https://forum.xda-developers.com/showthread.php?t=1877807) for more info.

# unpack

Wrapper script for the umkbootimg binary to unpack the boot.img into a separate directory and then unpack the ramdisk into a sub-directory.
