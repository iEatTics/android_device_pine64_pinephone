#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from pinephone device
$(call inherit-product, device/pine64/pinephone/device.mk)

PRODUCT_DEVICE := pinephone
PRODUCT_NAME := twrp_pinephone
PRODUCT_BRAND := Pine64
PRODUCT_MODEL := PinePhone
PRODUCT_MANUFACTURER := pine64

PRODUCT_GMS_CLIENTID_BASE := android-pine64

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pinephone-userdebug 12 SD1A.210817.037.A1 eng.roman.20211124.115653 test-keys"

BUILD_FINGERPRINT := Pine64/pinephone/pinephone:12/SD1A.210817.037.A1/roman11241154:userdebug/test-keys
