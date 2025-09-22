#
# Copyright (C) 2022 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Configure twrp config common.mk
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/Blackview/BV9200/device.mk)

## Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := BV9200
PRODUCT_NAME := twrp_BV9200
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := BV9200
PRODUCT_MANUFACTURER := Blackview

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=BV9200 \
    PRODUCT_NAME=BV9200_RU \
    PRIVATE_BUILD_DESC="BV9200_RU/BV9200:12/SP1A.210812.016/1701170717:user/release-keys"

BUILD_FINGERPRINT := Blackview/BV9200_RU/BV9200:12/SP1A.210812.016/1701170717:user/release-keys
