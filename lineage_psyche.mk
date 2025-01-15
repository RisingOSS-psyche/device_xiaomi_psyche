#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from psyche device
$(call inherit-product, device/xiaomi/psyche/device.mk)

PRODUCT_NAME := lineage_psyche
PRODUCT_DEVICE := psyche
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2112123AG

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="psyche_global-user 13 TKQ1.221114.001 V816.0.8.0.TLDMIXM release-keys" \
    BuildFingerprint=Xiaomi/psyche_global/psyche:13/TKQ1.221114.001/V816.0.8.0.TLDMIXM:user/release-keys \
    DeviceName=psyche \
    DeviceProduct=psyche \
    SystemDevice=psyche \
    SystemName=psyche
