# Nintendo Wii configuration

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
BOARD_HAVE_BLUETOOTH := true

# We do not want the Android build system to try and assemble any sort
# of images with the Linux Kernel in them, so we set these
# variables, and provide a zImage for ease of developer use.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true

TARGET_CPU_ABI := ppc750
TARGET_ARCH_VARIANT := ppc750
TARGET_BOARD_PLATFORM := powerpc
TARGET_BOOTLOADER_BOARD_NAME := wii

# Dummy values, required for debug builds
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
