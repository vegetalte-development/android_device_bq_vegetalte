#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

-include device/bq/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/bq/vegetalte

# Platform
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

# Kernel
TARGET_KERNEL_SOURCE := kernel/bq/msm8939
TARGET_KERNEL_CONFIG := vegetalte_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := vegetalte,Aquaris_E5

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# Filesystem
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12444651356 # (BOARD_USERDATAIMAGE_PARTITION_SIZE - 16384 for crypto footer)

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Tap to Wake
TARGET_TAP_TO_WAKE_NODE := "/proc/gesture_open"

# Wifi
WIFI_DRIVER_MODULE_PATH := "/vendor/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"

# Inherit from the proprietary version
-include vendor/bq/vegetalte/BoardConfigVendor.mk
