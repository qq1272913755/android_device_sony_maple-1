$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, device/sony/maple/device.mk)

### BOOTANIMATION
# vendor/lineage/config/common_full_phone.mk
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
# vendor/lineage/config/common.mk
TARGET_BOOTANIMATION_HALF_RES := true

### lineage
#$(call inherit-product, vendor/lineage/config/gsm.mk)
$(call inherit-product, vendor/lineage/config/common.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# VoLTE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.is_voip_enabled=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.voice_on_lte=1

PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1  \
    persist.dbg.wfc_avail_ovr=1

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_maple
PRODUCT_DEVICE := maple
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=maple \
