#
# Copyright (C) 2020 The LineageOS Project
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

# Device features
PRODUCT_COPY_FILES += \
    vendor/xiaomi/toco-miuicamera/configs/device_features/toco.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/device_features/toco.xml

# Permissions
PRODUCT_COPY_FILES += \
    vendor/xiaomi/toco-miuicamera/configs/default-permissions/miuicamera-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/miuicamera-permissions.xml \
    vendor/xiaomi/toco-miuicamera/configs/permissions/privapp-permissions-miui.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miui.xml

# Sysconfig
PRODUCT_COPY_FILES += \
    vendor/xiaomi/toco-miuicamera/configs/sysconfig/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml

# Props
PRODUCT_PRODUCT_PROPERTIES += \
	ro.com.google.lens.oem_camera_package=com.android.camera \
	ro.hardware.camera=xiaomi

PRODUCT_SYSTEM_PROPERTIES += \
    persist.vendor.camera.privapp.list=com.android.camera \
    vendor.camera.aux.packagelist=com.android.camera

$(call inherit-product, vendor/xiaomi/toco-miuicamera/common/common-vendor.mk)
