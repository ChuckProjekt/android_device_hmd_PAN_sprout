#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from PAN_sprout device
$(call inherit-product, device/hmd/PAN_sprout/device.mk)

PRODUCT_DEVICE := PAN_sprout
PRODUCT_NAME := lineage_PAN_sprout
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 4.2
PRODUCT_MANUFACTURER := hmd

PRODUCT_GMS_CLIENTID_BASE := android-hmd-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Panther_00WW-user 11 RKQ1.200928.002 00WW_3_150 release-keys"

BUILD_FINGERPRINT := Nokia/Panther_00WW/PAN_sprout:11/RKQ1.200928.002/00WW_3_150:user/release-keys
