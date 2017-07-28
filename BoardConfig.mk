#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common msm8996-common
-include device/xiaomi/msm8996-common/BoardConfigCommon.mk

PLATFORM_PATH := device/xiaomi/scorpio

# Assert
TARGET_OTA_ASSERT_DEVICE := scorpio

# Board
TARGET_BOARD_INFO_FILE := $(PLATFORM_PATH)/board-info.txt

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(PLATFORM_PATH)/bluetooth

# Kernel
TARGET_KERNEL_CONFIG := scorpio_defconfig

# Properties
TARGET_SYSTEM_PROP += $(PLATFORM_PATH)/system.prop

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/qcom/common

# Recovery
RECOVERY_VARIANT := twrp

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP specific build flags
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 2047
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 4095
TW_NO_USB_STORAGE := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi

# inherit from the proprietary version
-include vendor/xiaomi/scorpio/BoardConfigVendor.mk
