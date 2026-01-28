#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/tecno/LH7n/device.mk)

# Inherit some common Bliss stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

BOARD_VENDOR := TECNO
PRODUCT_NAME := bliss_LH7n
PRODUCT_DEVICE := LH7n
PRODUCT_MANUFACTURER := TECNO
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO LH7n

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=LH7n \
    BuildFingerprint=TECNO/LH7n-GL/TECNO-LH7n:14/UP1A.231005.007/250416V781:user/release-keys

# Time
LINEAGE_VERSION_APPEND_TIME_OF_DAY := true

# BlissFlags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
EXTRA_UDFPS_ANIMATIONS := false
PERF_ANIM_OVERRIDE := true
TARGET_DISABLE_EPPE := true
