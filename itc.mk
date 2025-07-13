#
# SPDX-FileCopyrightText: PixelOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/fcnt/itc/device.mk)

# Inherit some common 2by2 stuff.
$(call inherit-product, vendor/2by2/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_NAME := itc
PRODUCT_DEVICE := itc
PRODUCT_MANUFACTURER := fcnt
PRODUCT_BRAND := FCNT
PRODUCT_MODEL := arrows We2

PRODUCT_GMS_CLIENTID_BASE := android-fcnt

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=itc \
    BuildDesc="sys_mssi_yamato-user-14-V10RK38E-yamato.20240612.112457-release-keys" \
    BuildFingerprint=FCNT/ITC/ITC:14/V10RK38E/ITC.20240612:user/release-keys
