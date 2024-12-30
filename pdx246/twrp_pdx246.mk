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

# Inherit from pdx246 device
$(call inherit-product, device/sony/pdx246/device.mk)

PRODUCT_DEVICE := pdx246
PRODUCT_NAME := twrp_pdx246
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Pdx246
PRODUCT_MANUFACTURER := sony

PRODUCT_GMS_CLIENTID_BASE := android-sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pdx246-user 12 SKQ1.231127.001 1 release-keys"

BUILD_FINGERPRINT := Sony/pdx246/pdx246:12/SKQ1.231127.001/1:user/release-keys
