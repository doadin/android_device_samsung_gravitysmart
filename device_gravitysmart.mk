$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/config/init.goldfish.rc:root/init.goldfish.rc \
    $(LOCAL_PATH)/config/init.goldfish.sh:root/init.goldfish.sh \
    $(LOCAL_PATH)/config/init.qcom.bt.sh:root/init.qcom.bt.sh \
    $(LOCAL_PATH)/config/init.qcom.coex.sh:root/init.qcom.coex.sh \
    $(LOCAL_PATH)/config/init.qcom.fm.sh:root/init.qcom.fm.sh \
    $(LOCAL_PATH)/config/init.qcom.post_boot.sh:root/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/config/init.qcom.sdio.sh:root/init.qcom.sdio.sh \
    $(LOCAL_PATH)/config/init.qcom.wifi.sh:root/init.qcom.wifi.sh \
    $(LOCAL_PATH)/config/fota.rc:root/fota.rc \
    $(LOCAL_PATH)/config/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/config/nvram_net.txt:system/vendor/firmware/nvram_net.txt 

$(call inherit-product-if-exists, vendor/samsung/gravitysmart/gravitysmart-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/gravitysmart/overlay

# Boot and charging images
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/COOPER.rle:root/COOPER.rle

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# media config xml file
PRODUCT_COPY_FILES += \
    device/samsung/gravitysmart/media_profiles.xml:system/etc/media_profiles.xml

	
# Keychars and keylayout files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keyfiles/gt2_keypad0.kcm.bin:system/usr/keychars/gt2_keypad0.kcm.bin \
    $(LOCAL_PATH)/keyfiles/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    $(LOCAL_PATH)/keyfiles/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    $(LOCAL_PATH)/keyfiles/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
    $(LOCAL_PATH)/keyfiles/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/keyfiles/gt2_keypad0.kl:system/usr/keylayout/gt2_keypad0.kl \
    $(LOCAL_PATH)/keyfiles/qwerty.kl:system/usr/keylayout/qwerty.kl

	
# uses high-density artwork where available
PRODUCT_LOCALES += hdpi
	
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/gravitysmart/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
	
# Modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dhd.ko:root/lib/modules/dhd.ko \
    $(LOCAL_PATH)/prebuilt/fsr.ko:root/lib/modules/fsr.ko \
    $(LOCAL_PATH)/prebuilt/fsr_stl.ko:root/lib/modules/fsr_stl.ko \
    $(LOCAL_PATH)/prebuilt/rfs_fat.ko:root/lib/modules/rfs_fat.ko \
    $(LOCAL_PATH)/prebuilt/rfs_glue.ko:root/lib/modules/rfs_glue.ko \
    $(LOCAL_PATH)/prebuilt/sec_param.ko:root/lib/modules/sec_param.ko \
    $(LOCAL_PATH)/prebuilt/dhd.ko:system/lib/modules/dhd.ko \
    $(LOCAL_PATH)/prebuilt/fsr.ko:system/lib/modules/fsr.ko \
    $(LOCAL_PATH)/prebuilt/fsr_stl.ko:system/lib/modules/fsr_stl.ko \
    $(LOCAL_PATH)/prebuilt/rfs_fat.ko:system/lib/modules/rfs_fat.ko \
    $(LOCAL_PATH)/prebuilt/rfs_glue.ko:system/lib/modules/rfs_glue.ko \
    $(LOCAL_PATH)/prebuilt/sec_param.ko:system/lib/modules/sec_param.ko

$(call inherit-product-if-exists, vendor/samsung/gravitysmart/gravitysmart-vendor.mk)

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := generic_gravitysmart
PRODUCT_DEVICE := gravitysmart
