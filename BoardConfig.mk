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

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x13600000
BOARD_PAGE_SIZE := 0x00000800

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00300000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08ac0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0df80000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/samsung/gravitysmart/prebuilt/zImage

# Below is a sample of how you can tweak the mount points using the board config.
# This is for the Samsung Galaxy S.
# Feel free to tweak or remove this code.
# If you want to add/tweak a mount point, the BOARD_X_FILESYSTEM_OPTIONS are optional.
#BOARD_DATA_DEVICE := /dev/block/mmcblk0p2
#BOARD_DATA_FILESYSTEM := auto
#BOARD_DATA_FILESYSTEM_OPTIONS := llw,check=no,nosuid,nodev
#BOARD_HAS_DATADATA := true
#BOARD_DATADATA_DEVICE := /dev/block/stl10
#BOARD_DATADATA_FILESYSTEM := auto
#BOARD_DATADATA_FILESYSTEM_OPTIONS := llw,check=no,nosuid,nodev
#BOARD_SYSTEM_DEVICE := /dev/block/stl9
#BOARD_SYSTEM_FILESYSTEM := auto
#BOARD_SYSTEM_FILESYSTEM_OPTIONS := llw,check=no
#BOARD_CACHE_DEVICE := /dev/block/stl11
#BOARD_CACHE_FILESYSTEM := auto
#BOARD_CACHE_FILESYSTEM_OPTIONS := llw,check=no,nosuid,nodev
#BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
