#
# Copyright (C) 2011 The Android Open-Source Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true

# Use a smaller subset of system fonts to keep image size lower
SMALLER_FONT_FOOTPRINT := true
# Use the non-open-source parts, if they're present
-include vendor/asus/tf101/BoardConfigVendor.mk




TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := tf101

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000

BOARD_PAGE_SIZE := 0x00000800

TARGET_NO_RADIOIMAGE := true

#TARGET_BOARD_INFO_FILE := device/asus/tf101/board-info.txt

BOARD_EGL_CFG := device/asus/tf101/egl.cfg

BOARD_USES_HGL := true
BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true

#TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
#TARGET_RECOVERY_UI_LIB := librecovery_ui_tf101

# device-specific extensions to the updater binary
#TARGET_RECOVERY_UPDATER_LIBS += librecovery_updater_tf101
TARGET_RELEASETOOLS_EXTENSIONS := device/asus/tf101
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 5242880
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14372306944
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_KERNEL_CONFIG := tf101_defconfig
TARGET_KERNEL_SOURCE := kernel/asus/tf101

#TARGET_PROVIDES_INIT_RC := true
#TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

# Wifi related defines
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"


BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_USES_GENERIC_AUDIO := false

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_HAVE_GPS := true

# Support for dock battery
TARGET_HAS_DOCK_BATTERY := true

# Custom Tools
TARGET_RECOVERY_PRE_COMMAND := "echo 'boot-recovery' > /dev/block/mmcblk0p3; sync"
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/asus/tf101/releasetools/tf101_ota_from_target_files

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

BOARD_USES_SECURE_SERVICES := true
