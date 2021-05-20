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

# Inherit device configuration
$(call inherit-product, device/xiaomi/wayne/device.mk)

# Inherit PPUI product configuration
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
CUSTOM_BUILD_TYPE := OFFICIAL
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

PRODUCT_PROPERTY_OVERRIDES += \
	ro.ppui.device_name=wayne \
	ro.ppui.version=3.5 \
	ro.ppui.version_code=Jasper \
	ro.ppui.is_official=true \
	ro.ppui.maintainer_name=chdelacr

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Density
TARGET_SCREEN_DENSITY := 400

# Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := aosp_wayne
PRODUCT_DEVICE := wayne
PRODUCT_MODEL := MI 6X
