#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common crooked stuff.
$(call inherit-product, vendor/crooked/config/common.mk)
$(call inherit-product, vendor/crooked/config/gsm.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, device/google/coral/aosp_coral.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

include device/google/coral/coral/device-crooked.mk

# Face unlock
TARGET_FACE_UNLOCK_SUPPORTED := false

# Device identifier. This must come after all inclusions
PRODUCT_NAME := crooked_coral
PRODUCT_DEVICE := coral
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4 XL


# Boot animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=coral \
    PRIVATE_BUILD_DESC="coral-user 12 SQ3A.220605.009.A1 8643238 release-keys"

BUILD_FINGERPRINT := google/coral/coral:12/SQ3A.220605.009.A1/8643238:user/release-keys

$(call inherit-product, vendor/google/coral/coral-vendor.mk)
$(call inherit-product-if-exists, vendor/gms/products/gms.mk)

