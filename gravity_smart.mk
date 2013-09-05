# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# This device is hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot and charging images
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/COOPER.rle:root/COOPER.rle 
#    $(LOCAL_PATH)/lpm/charging.rle:root/charging.rle

# Support files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml 

# Media configuration files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml 
    #$(LOCAL_PATH)/config/media_codecs.xml:system/etc/media_codecs.xml \
    #$(LOCAL_PATH)/config/audio_policy.conf:system/etc/audio_policy.conf

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
    #$(LOCAL_PATH)/config/init.qcom.usb.rc:root/init.qcom.usb.rc \
    #$(LOCAL_PATH)/config/ueventd.qcom.rc:root/ueventd.qcom.rc \

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
	
# Needed to reset bootmode when leaving recovery
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
#    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/system/bin/postrecoveryboot.sh


# Input device calibration files
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/config/sec_touchscreen.idc:system/usr/idc/sec_touchscreen.idc

# Keychars and keylayout files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keyfiles/gt2_keypad0.kcm.bin:system/usr/keychars/gt2_keypad0.kcm.bin \
    $(LOCAL_PATH)/keyfiles/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    $(LOCAL_PATH)/keyfiles/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    $(LOCAL_PATH)/keyfiles/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
    $(LOCAL_PATH)/keyfiles/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/keyfiles/gt2_keypad0.kl:system/usr/keylayout/gt2_keypad0.kl \
    $(LOCAL_PATH)/keyfiles/qwerty.kl:system/usr/keylayout/qwerty.kl

# LPM
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/lpm/bin/charging_mode:system/bin/charging_mode \
#    $(LOCAL_PATH)/lpm/bin/playlpm:system/bin/playlpm \
#    $(LOCAL_PATH)/lpm/lib/libQmageDecoder.so:system/lib/libQmageDecoder.so \
#    $(LOCAL_PATH)/lpm/media/Disconnected.qmg:system/media/Disconnected.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_batteryerror.qmg:system/media/battery_batteryerror.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_5.qmg:system/media/battery_charging_5.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_10.qmg:system/media/battery_charging_10.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_15.qmg:system/media/battery_charging_15.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_20.qmg:system/media/battery_charging_20.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_25.qmg:system/media/battery_charging_25.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_30.qmg:system/media/battery_charging_30.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_35.qmg:system/media/battery_charging_35.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_40.qmg:system/media/battery_charging_40.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_45.qmg:system/media/battery_charging_45.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_50.qmg:system/media/battery_charging_50.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_55.qmg:system/media/battery_charging_55.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_60.qmg:system/media/battery_charging_60.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_65.qmg:system/media/battery_charging_65.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_70.qmg:system/media/battery_charging_70.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_75.qmg:system/media/battery_charging_75.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_80.qmg:system/media/battery_charging_80.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_85.qmg:system/media/battery_charging_85.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_90.qmg:system/media/battery_charging_90.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_95.qmg:system/media/battery_charging_95.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_charging_100.qmg:system/media/battery_charging_100.qmg \
#    $(LOCAL_PATH)/lpm/media/battery_error.qmg:system/media/battery_error.qmg \
#    $(LOCAL_PATH)/lpm/media/chargingwarning.qmg:system/media/chargingwarning.qmg

PRODUCT_PACKAGES += \
    copybit.msm7k \
    gralloc.default 

PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw 

PRODUCT_PACKAGES += \
    badblocks \
    e2fsck \
    mke2fs \
    mke2fs.conf \
    resize2fs \
    tune2fs \
    make_ext4fs \
    setup_fs

#PRODUCT_PACKAGES += \
#    com.android.future.usb.accessory \
#    libnetcmdiface

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product-if-exists, vendor/samsung/gravitysmart/device-vendor.mk)
