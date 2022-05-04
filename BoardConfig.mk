#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/psyche

# Display
TARGET_SCREEN_DENSITY := 440

# Device VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Dolby Vision
SOONG_CONFIG_NAMESPACES += dolby_vision
SOONG_CONFIG_dolby_vision += enabled
SOONG_CONFIG_dolby_vision_enabled := true

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_psyche
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_psyche

# Kernel
TARGET_KERNEL_CONFIG := psyche_defconfig

# OTA assert
TARGET_OTA_ASSERT_DEVICE := psyche

# Properties
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/xiaomi/psyche/BoardConfigVendor.mk
