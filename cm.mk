# Release name
PRODUCT_RELEASE_NAME := BLU_PURE_XL

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/BLU/BLU_PURE_XL/device_BLU_PURE_XL.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := BLU_PURE_XL
PRODUCT_NAME := cm_BLU_PURE_XL
PRODUCT_BRAND := BLU
PRODUCT_MODEL := BLU_PURE_XL
PRODUCT_MANUFACTURER := BLU
