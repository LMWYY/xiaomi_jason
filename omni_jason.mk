#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from jason device
$(call inherit-product, device/xiaomi/jason/device.mk)

PRODUCT_DEVICE := jason
PRODUCT_NAME := omni_jason
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note 3
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="jason-user 7.1.1 NMF26X V9.6.2.0.NCHMIFD release-keys"

BUILD_FINGERPRINT := Xiaomi/jason/jason:7.1.1/NMF26X/V9.6.2.0.NCHMIFD:user/release-keys
