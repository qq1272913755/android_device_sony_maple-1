$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

IS_MAPLE_DSDS := false

# Inherit device configuration
$(call inherit-product, device/sony/maple/device.mk)

### BOOTANIMATION
# vendor/lineage/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
# vendor/lineage/config/common.mk
TARGET_BOOTANIMATION_HALF_RES := true

ifeq ($(IS_MAPLE_DSDS),true)
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.vendor.name=G8142
else
PRODUCT_PROPERTY_OVERRIDES += \
	ro.product.vendor.name=G8141
endif

### lineage
#$(call inherit-product, vendor/lineage/config/gsm.mk)
$(call inherit-product, vendor/lineage/config/common.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_maple
PRODUCT_DEVICE := maple
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=maple \

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile
