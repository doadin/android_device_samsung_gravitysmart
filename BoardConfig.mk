USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/gravitysmart/BoardConfigVendor.mk
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/samsung/gravitysmart/recovery/recovery_ui.c

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi-v6j
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6j
TARGET_BOOTLOADER_BOARD_NAME := gravitysmart

BOARD_KERNEL_CMDLINE := mem=330M console=NULL hw=4 fbaddr=0xb5000
BOARD_KERNEL_BASE := 0x13600000
BOARD_PAGE_SIZE := 0x00000800

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0xA00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0xA00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0xDD00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x9E00000
BOARD_FLASH_BLOCK_SIZE := 4096

# cat /proc/partitions
# major minor  #blocks  name

# 137        0     513024 bml0/c
# 137        1       1536 bml1
# 137        2        512 bml2
# 137        3        768 bml3
# 137        4      25600 bml4
# 137        5       9216 bml5
# 137        6       5120 bml6
# 137        7       2048 bml7
# 137        8      10240 bml8
# 137        9      10240 bml9
# 137       10        768 bml10
# 137       11      25600 bml11
# 137       12     233984 bml12
# 137       13     161792 bml13
# 137       14      25600 bml14
# 138       12     226304 stl12
# 138       13     155648 stl13
# 138       14      21760 stl14

# FSTAB
# mount point	fstype		device			[device2]
# /boot           emmc            /dev/bml8
# /recovery       emmc            /dev/bml9
# /system         ext4            /dev/stl12
# /cache          ext4            /dev/stl14
# /data           ext4            /dev/stl13
# /sdcard         vfat            /dev/block/vold/179:1

# VOLD FSTAB
# dev_mount sdcard /mnt/sdcard auto /devices/platform/msm_sdcc.1/mmc_host

TARGET_PREBUILT_KERNEL := device/samsung/gravitysmart/zImage
# TARGET_KERNEL_SOURCE := kernel/samsung/gravitysmart
# TARGET_KERNEL_CONFIG := gt2_rev01_defconfig

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
