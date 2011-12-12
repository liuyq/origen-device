# Copyright (C) 2011 Linaro Limited
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

PRODUCT_COPY_FILES := \
	device/linaro/origen/vold.fstab:system/etc/vold.fstab \
	device/linaro/origen/egl.cfg:system/lib/egl/egl.cfg

PRODUCT_COPY_FILES += \
        device/linaro/origen/init.rc:root/init.rc \
        device/linaro/origen/init.origen.rc:root/init.origen.rc \
        device/linaro/origen/ueventd.origen.rc:root/ueventd.origen.rc \
        device/linaro/origen/initlogo.rle:root/initlogo.rle \
        device/linaro/origen/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
        device/linaro/origen/unidisplay_ts.idc:system/usr/idc/unidisplay_ts.idc \
        device/linaro/common/wallpaper_info.xml:data/system/wallpaper_info.xml

PRODUCT_PROPERTY_OVERRIDES := \
        hwui.render_dirty_regions=false

PRODUCT_CHARACTERISTICS := tablet,nosdcard

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
        librs_jni \
        com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
        make_ext4fs

$(call inherit-product-if-exists, vendor/samsung/origen/device-origen.mk)
$(call inherit-product, frameworks/base/build/tablet-dalvik-heap.mk)
