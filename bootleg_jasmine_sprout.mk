#
# Copyright (C) 2018 The Xiaomi-SDM660 Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#
#TWRP
BUILD_TWRP := true

# Inherit device configuration
$(call inherit-product, device/xiaomi/jasmine_sprout/device.mk)
$(call inherit-product, vendor/xiaomi/MiuiCamera/config.mk)

# Inherit some common bootleggers stuff.
IS_PHONE := true
TARGET_GAPPS_ARCH :=arm64
$(call inherit-product, vendor/bootleggers/config/common_full_phone.mk)
$(call inherit-product, vendor/gapps/config.mk)
# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Build Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRIVATE_BUILD_DESC="jasmine-user 9 PKQ1.180904.001 V10.0.9.0.PDIMIXM release-keys"

BUILD_FINGERPRINT := xiaomi/jasmine/jasmine_sprout:9/PKQ1.180904.001/V10.0.9.0.PDIMIXM:user/release-keys

# Device identifier
PRODUCT_BRAND := xiaomi
PRODUCT_MANUFACTURER := Xiaomi
<<<<<<< HEAD:bootleg_jasmine_sprout.mk
PRODUCT_PLATFORM := SDM660
PRODUCT_NAME := bootleg_jasmine_sprout
=======
PRODUCT_NAME := lineage_jasmine_sprout
>>>>>>> 8c2539a... jasmine: remove useless overrides of product name and device:lineage_jasmine_sprout.mk
PRODUCT_DEVICE := jasmine_sprout
PRODUCT_MODEL := Mi A2
