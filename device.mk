$(call inherit-product, device/motorola/omap4-common/common.mk)

DEVICE_FOLDER := device/motorola/pasteur

# Device overlay
    DEVICE_PACKAGE_OVERLAYS += $(DEVICE_FOLDER)/overlay

# Hardware HALs
PRODUCT_PACKAGES += \
    power.pasteur \
    camera.pasteur \
    lights.pasteur \
    hwcomposer.pasteur

# Modem
PRODUCT_PACKAGES += \
    nc \
    Stk \
    libreference-cdma-sms

# Kexec files
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/init.target.rc:root/init.target.rc \
    $(DEVICE_FOLDER)/kexec/devtree:system/etc/kexec/devtree \
    $(OUT)/ramdisk.img:system/etc/kexec/ramdisk.img \
    $(OUT)/kernel:system/etc/kexec/kernel

# Prebuilts
PRODUCT_COPY_FILES += \
    $(DEVICE_FOLDER)/media_profiles.xml:system/etc/media_profiles.xml \
    $(DEVICE_FOLDER)/vold.fstab:system/etc/vold.fstab

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product, vendor/motorola/pasteur/pasteur-vendor.mk)
$(call inherit-product, vendor/motorola/omap4-common/omap4-common-imgtec-vendor-blobs.mk)
$(call inherit-product, vendor/motorola/omap4-common/omap4-common-lte-vendor-blobs.mk)
