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
PRODUCT_LOCALES += en_US hdpi

# Boot screen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/COOPER.rle:root/COOPER.rle

# Support files
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Feature live wallpaper
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Media configuration xml file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml

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



# Keychars and keylayout files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keyfiles/gt2_keypad0.kcm.bin:system/usr/keychars/gt2_keypad0.kcm.bin \
    $(LOCAL_PATH)/keyfiles/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    $(LOCAL_PATH)/keyfiles/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    $(LOCAL_PATH)/keyfiles/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
    $(LOCAL_PATH)/keyfiles/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/keyfiles/gt2_keypad0.kl:system/usr/keylayout/gt2_keypad0.kl \
    $(LOCAL_PATH)/keyfiles/qwerty.kl:system/usr/keylayout/qwerty.kl


PRODUCT_PACKAGES += \
    librs_jni \
    copybit.msm7k \
    gralloc.msm7k 

PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    libstagefrighthw

PRODUCT_PACKAGES += \
    badblocks \
    e2fsck \
    e2label \
    mke2fs \
    mke2fs.conf \
    resize2fs \
    tune2fs \
    make_ext4fs \
    setup_fs

PRODUCT_PACKAGES += \
    hciconfig \
    hcitool \
    libaudioutils

# For userdebug builds
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1



# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product-if-exists, vendor/samsung/gravitysmart/device-vendor.mk)
