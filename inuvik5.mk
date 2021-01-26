# inuvik5 variant is for 72165.
ifndef LOCAL_PRODUCT_OUT
LOCAL_PRODUCT_OUT         := inuvik5
endif
BCHP_CHIP                 := 72165
BCHP_VER                  := A0
NEXUS_PLATFORM            := 972165
PLATFORM                  := 972165
LOCAL_DEVICE_BDIST_TARGET := inuvik5
TARGET_SAGE_PLATFORM      := inuvik5
LOCAL_DEVICE_SEPOLICY_IOCTL ?= nvk
LOCAL_DEVICE_SEPOLICY_BLOCK_INSTANCE := device/broadcom/inuvik5/sepolicy/treble/${LOCAL_DEVICE_SEPOLICY_IOCTL}

# use box mode 1 by default
LOCAL_DEVICE_RTS_MODE        := 1
# do not enable secdma (note: update nxl profile)
ANDROID_ENABLE_DHD_SECDMA    := n
# wlan|bt gpio update
LOCAL_DEVICE_AON_GPIO        := device/broadcom/inuvik-common/gpio/aon_gpio.nvk5.cfg:$(TARGET_COPY_OUT_VENDOR)/power/aon_gpio.cfg

include device/broadcom/inuvik/inuvik.mk

PRODUCT_NAME                   := inuvik5
PRODUCT_MODEL                  := inuvik5
PRODUCT_BRAND                  := google
PRODUCT_DEVICE                 := inuvik5
