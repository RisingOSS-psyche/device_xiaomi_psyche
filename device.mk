#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Fingerprint
TARGET_HAS_UDFPS := true

# Inherit from sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/kona.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Project ID Quota
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# A/B
TARGET_IS_VAB := true

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/camera/camera_cnf.txt:$(TARGET_COPY_OUT_VENDOR)/etc/camera/camera_cnf.txt

PRODUCT_PACKAGES += \
    libpiex_shim

# Dolby Support
TARGET_USES_MIUI_DOLBY := true

# Dolby config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml

# DSP Volume Synchronizer
PRODUCT_PACKAGES += \
    DSPVolumeSynchronizer

# Nfc
PRODUCT_PACKAGES += NfcTargetOverlay

# Overlays
PRODUCT_PACKAGES += \
    ApertureTargetOverlay \
    FrameworksTargetOverlay \
    SettingsProviderTargetOverlay \
    SettingsTargetOverlay \
    SettingsTargetOverlayPsycheCN \
    SettingsTargetOverlayPsycheGL \
    SystemUITargetOverlay

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Thermal Config
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/thermal/,$(TARGET_COPY_OUT_VENDOR)/etc)

# WiFi
PRODUCT_PACKAGES += \
    TargetWifiOverlay

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/psyche/psyche-vendor.mk)
