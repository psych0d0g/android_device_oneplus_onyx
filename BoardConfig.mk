#
# Copyright (C) 2014 The CyanogenMod Project
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

# inherit from Oppo common
-include device/oppo/msm8974-common/BoardConfigCommon.mk

LOCAL_PATH := device/oppo/onyx

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(PLATFORM_PATH)/include

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8974
TARGET_NO_RADIOIMAGE := true
TARGET_OTA_ASSERT_DEVICE := onyx

# MUST NOT USE LOCAL_PATH
BOARD_SEPOLICY_DIRS += \
    device/oppo/onyx/sepolicy

# Assertions
TARGET_BOARD_INFO_FILE ?= $(PLATFORM_PATH)/board-info.txt

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3b7 ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 01000000 --tags_offset 00000100 --dt $(PLATFORM_PATH)/dt.img
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_CONFIG := opx_defconfig
TARGET_KERNEL_SOURCE := kernel/oppo/msm8974

# ANT+
#BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Audio
AUDIO_FEATURE_ENABLED_HWDEP_CAL := true
AUDIO_FEATURE_ENABLED_FM := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
TARGET_QCOM_NO_FM_FIRMWARE := true


# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
QCOM_BT_USE_SMD_TTY := true

# Encryption
TARGET_HW_DISK_ENCRYPTION := false

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE    := 536870912
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13271448576
BOARD_USERDATAEXTRAIMAGE_PARTITION_SIZE := 59914792960
BOARD_USERDATAEXTRAIMAGE_PARTITION_NAME := 64G
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Workaround for factory issue
BOARD_VOLD_CRYPTFS_MIGRATE := true

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
COMMON_GLOBAL_CPPFLAGS += -DNO_SECURE_DISCARD

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# GPS
TARGET_GPS_HAL_PATH := $(PLATFORM_PATH)/gps
TARGET_PROVIDES_GPS_LOC_API := true

# Graphics
HAVE_ADRENO_SOURCE := false
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
TARGET_CONTINUOUS_SPLASH_ENABLED := true
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000

#Libinit - handle e1001, e1003 and e1005
TARGET_INIT_VENDOR_LIB := libinit_onyx

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Protobuf-c
PROTOBUF_SUPPORTED := true

# Radio
TARGET_RIL_VARIANT := caf

#Preload Libs
TARGET_LDPRELOAD := libNimsWrap.so

# RPC
TARGET_NO_RPC := true

# Wifi
BOARD_HAS_QCOM_WLAN_SDK          := true
TARGET_USES_WCNSS_CTRL           := true
TARGET_USES_QCOM_WCNSS_QMI       := true
TARGET_USES_WCNSS_MAC_ADDR_REV   := true
TARGET_WCNSS_MAC_PREFIX          := e8bba8

# Recovery
#TARGET_RECOVERY_FSTAB := $(PLATFORM_PATH)/rootdir/etc/fstab.qcom

-include vendor/oppo/onyx/BoardConfigVendor.mk
