## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := pasteur

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/motorola/pasteur/device_pasteur.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pasteur
PRODUCT_NAME := full_pasteur
PRODUCT_BRAND := Android
PRODUCT_MODEL := pasteur
PRODUCT_MANUFACTURER := motorola

TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280

