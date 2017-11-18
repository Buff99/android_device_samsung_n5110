#
# Copyright (C) 2016 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/n5110

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    mobiledata.interfaces=wlan0 \
    ro.radio.noril=yes

# ADB
# ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mtp,adb
#    ro.debug_level=0x4948 \
#    ro.adb.secure=0 \
#    ro.secure=0 \
#    persist.service.adb.enable=1 \
#    ro.debuggable=1 \


# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/include/hardware/gps.xml:system/etc/gps.xml \
    $(LOCAL_PATH)/include/hardware/gps.xml:vendor/etc/gps.xml \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

# Include common makefile
$(call inherit-product, vendor/samsung/n5110/n5110-vendor.mk)
$(call inherit-product, device/samsung/kona-common/kona-common.mk)
