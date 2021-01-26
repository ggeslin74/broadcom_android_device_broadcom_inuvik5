#!/bin/bash

# 72165 variation of 7216
source device/broadcom/inuvik/bdstcfg/nxl.def.sh

export NEXUS_PLATFORM=972165
export BCHP_VER=A0
export PLATFORM=972165
export NEXUS_ASP_SUPPORT=n
export LOCAL_DEVICE_SEPOLICY_IOCTL=nvk5

# no secdma (bringup)
export ANDROID_ENABLE_DHD_SECDMA=n
