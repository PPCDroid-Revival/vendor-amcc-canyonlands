# AMCC 460EX configuration

TARGET_ARCH = powerpc
TARGET_COMPRESS_MODULE_SYMBOLS := false
TARGET_PRELINK_MODULE := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := true
TARGET_HARDWARE_3D := false
USE_CAMERA_STUB := true
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
USE_CUSTOM_RUNTIME_HEAP_MAX := "64M"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_BOOTIMAGE_USE_EXT2 := true

# We do not want the Android build system to try and assemble any sort
# of images with U-Boot or the Linux Kernel in them, so we set these
# variables, and provide a uImage and Device Tree (canyonlands.dtb) for ease of
# developer use.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true

TARGET_CPU_ABI := ppc440e
TARGET_ARCH_VARIANT := ppc440e
TARGET_BOARD_PLATFORM := powerpc
TARGET_BOOTLOADER_BOARD_NAME := canyonlands

# Dummy values, required for debug builds
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
