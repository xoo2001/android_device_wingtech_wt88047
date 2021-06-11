# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2017-2021 The LineageOS Project
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

$(call inherit-product, device/xiaomi/wt88047x/full_wt88047x.mk)

# Inherit some common NusantaraProject stuff.
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)
USE_PIXEL_CHARGING := true

# Shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_k.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Assert
TARGET_OTA_ASSERT_DEVICE := HM2014811,HM2014812,HM2014813,HM2014814,HM2014815,HM2014816,HM2014817,HM2014818,HM2014819,HM2014820,HM2014821,HM2014112,wt88047,wt86047,wt88047x

PRODUCT_NAME := nad_wt88047x
BOARD_VENDOR := xiaomi
PRODUCT_DEVICE := wt88047x

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Build fingerprint
BUILD_FINGERPRINT="Xiaomi/2014817/HM2014817:5.1.1/LMY47V/V9.2.5.0.LHJMIEK:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="2014817-user 5.1.1 LMY47V V9.2.5.0.LHJMIEK release-keys"
