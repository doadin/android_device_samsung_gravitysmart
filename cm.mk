# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
#$(call inherit-product, $(LOCAL_PATH)/device_gravitysmart.mk)

PRODUCT_RELEASE_NAME := ancora

#CM_EXPERIMENTAL := true
#CM_EXTRAVERSION := alpha1

# Setup device configuration
PRODUCT_NAME := SGH-T589
PRODUCT_DEVICE := SGH-T589
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SGH-T589

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=samsung/SGH-T589/SGH-T589/SGH-T589:2.2.2/FROYO/UVKF1:user/release-keys PRIVATE_BUILD_DESC="SGH-T589-user 2.2.2 FROYO UVKF1 release-keys"
