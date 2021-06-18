#
# Copyright (C) 2018-2021 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit common legion configurations
$(call inherit-product, vendor/legion/config/common.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := legion_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := POCO
PRODUCT_MODEL := Poco X3 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="vayu"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Inherit DotOS Official stuff.
TARGET_FACE_UNLOCK_SUPPORTED := true

# LegionOS Device Maintainers
LEGION_MAINTAINER :=EdvanHerv
    
#Gapps Architecture
TARGET_GAPPS_ARCH := arm64
