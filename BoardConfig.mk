USE_CAMERA_STUB := true
-include device/motorola/omap4-common/BoardConfigCommon.mk
# inherit from the proprietary version
-include vendor/motorola/pasteur/BoardConfigVendor.mk
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := omap4
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := pasteur
TARGET_ARCH_VARIANT := armv7-a
BOARD_KERNEL_CMDLINE := console=/dev/null rw mem=1024M@0x80000000 vram=8004K,0x81800000 omapfb.vram=0:8000K@0x81800000,1:4K@0x81FD0000 init=/init ip=off mmcparts=mmcblk1:p1(mbmloader),p2(mbm),p3(mbmbackup),p4(cdt.bin),p5(pds),p6(utags),p7(logo.bin),p8(sp),p9(devtree),p10(devtree_backup),p11(boot),p12(recovery),p13(cdrom),p14(misc),p15(cid),p16(kpanic),p17(system),p18(cache),p19(preinstall),p20(userdata)
BOARD_KERNEL_BASE := 10000000
BOARD_PAGE_SIZE := 2048
# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 9437184
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 629145600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 60154707968
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/motorola/pasteur/kernel

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
