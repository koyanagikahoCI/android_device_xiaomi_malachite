#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Build the GApps-free Evolution X variant.
WITH_GMS := false

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/malachite/device.mk)

# Inherit Evolution X's common configuration through LineageOS's common product.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := evolution_malachite
PRODUCT_DEVICE := malachite
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 24090RA29G

PRODUCT_SYSTEM_NAME := malachite_global
PRODUCT_SYSTEM_DEVICE := malachite

# Evolution X's common config provides the fingerprint override for RCS and Wallet.
PRODUCT_BUILD_PROP_OVERRIDES += \
    SystemModel=$(PRODUCT_SYSTEM_DEVICE) \
    SystemName=$(PRODUCT_SYSTEM_NAME) \
    ProductModel=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
