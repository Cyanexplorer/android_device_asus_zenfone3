#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Platform
TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8953
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Crypto
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw
TARGET_HW_DISK_ENCRYPTION := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_zenfone3
TARGET_RECOVERY_DEVICE_MODULES := libinit_zenfone3
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/

# Recovery
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci 
BOARD_KERNEL_CMDLINE += loop.max_part=7 androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME  := Image.gz-dtb
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_KERNEL_BASE        := 0x80000000
BOARD_KERNEL_TAGS_OFFSET := 0x01000000
BOARD_RAMDISK_OFFSET     := 0x00000100
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/asus/msm8953
TARGET_KERNEL_CONFIG := zenfone3-perf_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432        #    32768 * 1024 mmcblk0p58
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728      #   131072 * 1024 mmcblk0p65
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432    #    32768 * 1024 mmcblk0p59
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4026531840    #  3932160 * 1024 mmcblk0p66
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57583582208 # 56233967 * 1024 mmcblk0p67
BOARD_FLASH_BLOCK_SIZE := 131072

# TWRP
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_TWRPAPP := true
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_BRIGHTNESS := 80
TW_IGNORE_MISC_WIPE_DATA := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi
TW_USE_TOOLBOX := true
