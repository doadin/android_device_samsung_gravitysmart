USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/gravitysmart/BoardConfigVendor.mk
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/samsung/gravitysmart/recovery/recovery_ui.c

#(from samsung source)
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_CPU_ABI := armeabi

#HAVE_HTC_AUDIO_DRIVER := true 
BOARD_USES_GENERIC_AUDIO := true 
#end comment

TARGET_BOARD_PLATFORM := msm7k
#TARGET_CPU_ABI := armeabi-v6j
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm 
TARGET_ARCH_VARIANT := armv6j
TARGET_BOOTLOADER_BOARD_NAME := gravitysmart

#(from dmesg on device)
BOARD_KERNEL_CMDLINE := mem=330M console=NULL hw=4 fbaddr=0xb5000
#(from kernel kitchen from stock boot.img(from oden package))
BOARD_KERNEL_BASE := 0x13600000 
#end comment

BOARD_KERNEL_PAGESIZE := 4096
#BOARD_PAGE_SIZE := 0x00000800 #58588/14647

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0xA00000 #(10485760) #(10240*1024) #Blocksize=10240(from device which In Hex=0x2800) 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0xA00000 #10485760 #(10240*1024) #Blocksize=10240(from device which In Hex=0x2800)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0xDD00000 #231735296 #(226304*1024) #Blocksize=226304(from device which In Hex=0x37400)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x9E00000 #165675008 #(161792*1024) #Blocksize=161792(from device which In Hex=0x27800)
BOARD_FLASH_BLOCK_SIZE := 4096 

#/dev/stl14 /cache #Blocksize=21760 (from device)
#/dev/stl13 /data #Blocksize=155648 (from device)
#/dev/stl12 /system #Blocksize=226304 (from device)
#/dev/bml8 boot.img #Blocksize=10240 (from device)
#/dev/bml9 recovery.img #Blocksize=10240 (from device)

TARGET_PREBUILT_KERNEL := device/samsung/gravitysmart/prebuilt/zImage


