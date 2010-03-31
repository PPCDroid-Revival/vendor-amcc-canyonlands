# AMCC 460EX configuration

TARGET_COMPRESS_MODULE_SYMBOLS := false
TARGET_PRELINK_MODULE := false
TARGET_PROVIDES_INIT_RC := true
TARGET_NO_RADIOIMAGE := true
USE_CAMERA_STUB := true
BOARD_USES_GENERIC_AUDIO := true
#BOARD_USES_ALSA_AUDIO := true
#BUILD_WITH_ALSA_UTILS := true
BOARD_USES_VIRTUAL_TOUCHSCREEN := true
BOARD_USES_MOUSE := true
USE_CUSTOM_RUNTIME_HEAP_MAX := "64M"
USE_CUSTOM_SURFACEFLINGER_HEAP_MAX := 16

# We do not want the Android build system to try and assemble any sort
# of images with U-Boot or the Linux Kernel in them, so we set these
# variables, and provide a uImage and Device Tree (canyonlands.dtb) for ease of
# developer use.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true

# Setup some runtime system properties.
TARGET_BOARD_PLATFORM := ppc
TARGET_BOOTLOADER_BOARD_NAME := canyonlands
