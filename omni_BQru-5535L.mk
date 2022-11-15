#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from BQru-5535L device
$(call inherit-product, device/bqru/BQru-5535L/device.mk)

PRODUCT_DEVICE := BQru-5535L
PRODUCT_NAME := omni_BQru-5535L
PRODUCT_BRAND := BQru
PRODUCT_MODEL := BQ-5535L
PRODUCT_MANUFACTURER := bqru

PRODUCT_GMS_CLIENTID_BASE := android-nlgsm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="BQru-5535L 9 PPR1.180610.011 1562202861 release-keys"

BUILD_FINGERPRINT := BQru/BQru-5535L/BQru-5535L:9/PPR1.180610.011/1562202861:user/release-keys
