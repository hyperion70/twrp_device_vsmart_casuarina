# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# API
PRODUCT_SHIPPING_API_LEVEL := 29

# qcom standard decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    system/timezone/output_data/iana/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := casuarina
PRODUCT_NAME := omni_casuarina
PRODUCT_BRAND := vsmart
PRODUCT_MODEL := Joy 3+
PRODUCT_MANUFACTURER := vsmart

PRODUCT_PROPERTY_OVERRIDES += \
	ro.adb.secure=0 \
	ro.product.device=casuarina

BUILD_FINGERPRINT := vsmart/casuarina_rus/casuarina:10/QKQ1.200311.002/V430E_RUS_U_B2_201013:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=casuarina \
    PRODUCT_NAME=casuarina_rus

