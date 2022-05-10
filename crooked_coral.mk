# Copyright (C) 2018-2021 SuperiorOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file is the build configuration for an aosp Android
# build for marlin hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, aosp and du, hence its name.
#

# Inherit some common crooked stuff.
$(call inherit-product, vendor/crooked/config/common.mk)
$(call inherit-product, vendor/crooked/config/gsm.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, device/google/coral/aosp_coral.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

PRODUCT_NAME := crooked_coral
PRODUCT_DEVICE := coral
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4 XL

# Face unlock
TARGET_FACE_UNLOCK_SUPPORTED := false

# Boot animation
TARGET_SCREEN_HEIGHT := 2960
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=coral \
    PRIVATE_BUILD_DESC="coral-user 12 SP2A.220505.002 8353555 release-keys"

BUILD_FINGERPRINT := google/coral/coral:12/SP2A.220505.002/8353555:user/release-keys

$(call inherit-product-if-exists, vendor/gms/products/gms.mk)
