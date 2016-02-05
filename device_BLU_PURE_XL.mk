$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/BLU/BLU_PURE_XL/BLU_PURE_XL-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/BLU/BLU_PURE_XL/overlay

LOCAL_PATH := device/BLU/BLU_PURE_XL

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/BLU/BLU_PURE_XL/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ramdisk/enableswap.sh:root/enableswap.sh \
	$(LOCAL_PATH)/ramdisk/factory_init.project.rc:root/factory_init.project.rc \
	$(LOCAL_PATH)/ramdisk/factory_init.rc:root/factory_init.rc \
	$(LOCAL_PATH)/ramdisk/fstab.mt6795:root/fstab.mt6795 \
	$(LOCAL_PATH)/ramdisk/init.aee.rc:root/init.aee.rc \
	$(LOCAL_PATH)/ramdisk/init.environ.rc:root/environ.rc \
	$(LOCAL_PATH)/ramdisk/init.modem.rc:root/init.modem.rc \
	$(LOCAL_PATH)/ramdisk/init.mt6795.rc:root/init.mt6795.rc \
	$(LOCAL_PATH)/ramdisk/init.mt6795.usb.rc:root/init.mt6795.usb.rc \
	$(LOCAL_PATH)/ramdisk/init.project.rc:root/init.project.rc \
	$(LOCAL_PATH)/ramdisk/init.ssd.rc:root/init.ssd.rc \
	$(LOCAL_PATH)/ramdisk/init.trace.rc:root/init.trace.rc \
	$(LOCAL_PATH)/ramdisk/init.trustonic.rc:root/init.trustonic.rc \
	$(LOCAL_PATH)/ramdisk/init.xlog.rc:root/init.xlog.rc \
	$(LOCAL_PATH)/ramdisk/meta_init.modem.rc:root/meta_init.modem.rc \
	$(LOCAL_PATH)/ramdisk/meta_init.project.rc:root/meta_init.project.rc \
	$(LOCAL_PATH)/ramdisk/meta_init.rc:root/meta_init.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.mt6795.rc:root/ueventd.mt6795.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_BLU_PURE_XL
PRODUCT_DEVICE := BLU_PURE_XL
