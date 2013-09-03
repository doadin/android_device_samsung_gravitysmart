USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/gravitysmart/BoardConfigVendor.mk
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/samsung/gravitysmart/recovery/recovery_ui.c

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI := armeabi-v6j
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv6j
TARGET_BOOTLOADER_BOARD_NAME := gravitysmart

#HAVE_HTC_AUDIO_DRIVER := true
BOARD_USES_GENERIC_AUDIO := true

BOARD_KERNEL_CMDLINE := mem=330M console=NULL hw=4 fbaddr=0xb5000
BOARD_KERNEL_BASE := 0x13600000
BOARD_KERNEL_PAGESIZE := 4096
#BOARD_PAGE_SIZE := 0x00000800 #58588/14647

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 10240  #0x00300000(orig)  #Blocksize=10240(from device)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10240  #00500000(orig)  #Blocksize=10240(from device)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 226304  #0x08ac0000(orig)  #Blocksize=226304(from device)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 161792  #0x0df80000(orig)  #Blocksize=161792(from device)
#BOARD_FLASH_BLOCK_SIZE := 131072 #how to check?

#/dev/stl14 /cache #Blocksize=21760
#/dev/stl13 /data #Blocksize=155648
#/dev/stl12 /system #Blocksize=226304
#/dev/bml8 boot.img #Blocksize=10240
#/dev/bml9 recovery.img #Blocksize=10240

TARGET_PREBUILT_KERNEL := device/samsung/gravitysmart/prebuilt/zImage


