# config.mk
# 
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := origen
TARGET_NO_BOOTLOADER := true # Uses u-boot instead 
TARGET_NO_KERNEL := false
KERNEL_CONFIG := android_origen_defconfig
TARGET_USE_UBOOT := true
UBOOT_CONFIG := origen_config
TARGET_USE_XLOADER := false
XLOADER_BINARY := out/target/product/origen/obj/u-boot/mmc_spl/u-boot-mmc-spl.bin
TARGET_NO_RECOVERY := true
TARGET_NO_RADIOIMAGE := true
TARGET_PROVIDES_INIT_RC := true
TARGET_CPU_SMP := true
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := true
OMAP_ENHANCEMENT := false
HARDWARE_OMX := false
USE_CAMERA_STUB := false

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := false
BOARD_HAVE_BLUETOOTH_CSR := true

WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WIFI_DRIVER_MODULE_PATH := "/system/modules/ath6kl.ko"
WIFI_DRIVER_MODULE_NAME := "ath6kl"

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

ifdef HARDWARE_OMX
OMX_VENDOR := ti
OMX_VENDOR_INCLUDES := \
   hardware/ti/omx/system/src/openmax_il/omx_core/inc \
   hardware/ti/omx/image/src/openmax_il/jpeg_enc/inc
OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
BOARD_OPENCORE_LIBRARIES := libOMX_Core
BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1
endif

ifdef OMAP_ENHANCEMENT
COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT -DTARGET_OMAP4
endif

# Enable NEON feature
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

EXTRA_PACKAGE_MANAGEMENT := false

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

# bootargs
BOARD_KERNEL_CMDLINE := console=ttySAC2 root=/dev/mmcblk0p2

# Origen uses an Exynos4 -- Cortex A9
TARGET_EXTRA_CFLAGS += -mtune=cortex-a9 -mcpu=cortex-a9

# ARMs gator (DS-5)
TARGET_USE_GATOR := true
