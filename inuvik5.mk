# inuvik5 variant is for 72165.
ifndef LOCAL_PRODUCT_OUT
LOCAL_PRODUCT_OUT         := inuvik5
endif

LOCAL_SUBVAR_NRDP_STRICT ?= n
ifneq (${WITH_SUBVAR},)
#$(warning "enabling extension '${WITH_SUBVAR}'")
include device/broadcom/inuvik5/subvar/${WITH_SUBVAR}.mk
endif

BCHP_CHIP                 := 72165
BCHP_VER                  := A0
NEXUS_PLATFORM            := 972165
PLATFORM                  := 972165
LOCAL_DEVICE_BDIST_TARGET := inuvik5
TARGET_SAGE_PLATFORM      := inuvik5
LOCAL_DEVICE_SEPOLICY_IOCTL ?= nvk
LOCAL_DEVICE_SEPOLICY_BLOCK_INSTANCE := device/broadcom/inuvik5/sepolicy/treble/${LOCAL_DEVICE_SEPOLICY_IOCTL}
ANDROID_SUPPORTS_VSI :=

# use box mode 1 by default
LOCAL_DEVICE_RTS_MODE        := 1
# do not enable secdma (note: update nxl profile)
ANDROID_ENABLE_DHD_SECDMA    := n
# wlan|bt gpio update
LOCAL_DEVICE_AON_GPIO        := device/broadcom/inuvik-common/gpio/aon_gpio.nvk5.cfg:$(TARGET_COPY_OUT_VENDOR)/power/aon_gpio.cfg

include device/broadcom/inuvik-common/inuvik.base.mk

PRODUCT_NAME                   := inuvik5
PRODUCT_MODEL                  := inuvik5
PRODUCT_BRAND                  := google
PRODUCT_DEVICE                 := inuvik5

# Netflix support
LOCAL_DEVICE_NRDP_MODEL_GROUP := INUVIK5
LOCAL_DEVICE_NRDP_OEMMODEL ?= google_inuvik5

TARGET_BOOTLOADER_BOARD_NAME  := inuvik5

