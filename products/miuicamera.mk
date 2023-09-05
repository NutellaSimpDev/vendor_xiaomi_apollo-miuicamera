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

# Permissions
PRODUCT_COPY_FILES += \
    vendor/xiaomi/apollo-miuicamera/configs/default-permissions/miuicamera-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/miuicamera-permissions.xml \
    vendor/xiaomi/apollo-miuicamera/configs/default-permissions/miuigallery-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/miuigallery-permissions.xml \
    vendor/xiaomi/apollo-miuicamera/configs/default-permissions/miuigalleryeditor-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/miuigalleryeditor-permissions.xml

# Priv-app Permissions
PRODUCT_COPY_FILES += \
    vendor/xiaomi/apollo-miuicamera/configs/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml \
    vendor/xiaomi/apollo-miuicamera/configs/permissions/privapp-permissions-miuigallery.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuigallery.xml \
    vendor/xiaomi/apollo-miuicamera/configs/permissions/privapp-permissions-miuigalleryeditor.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuigalleryeditor.xml \
    vendor/xiaomi/apollo-miuicamera/configs/permissions/privapp-permissions-miuivideoplayer.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuivideoplayer.xml

# Sysconfig
PRODUCT_COPY_FILES += \
    vendor/xiaomi/apollo-miuicamera/configs/sysconfig/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml \
    vendor/xiaomi/apollo-miuicamera/configs/sysconfig/miuigallery-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuigallery-hiddenapi-package-whitelist.xml \
    vendor/xiaomi/apollo-miuicamera/configs/sysconfig/miuigalleryeditor-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuigalleryeditor-hiddenapi-package-whitelist.xml

# Props
PRODUCT_SYSTEM_PROPERTIES += \
    persist.log.tag.HapticCompat=S \
    persist.log.tag.CAM_CameraUtil=S \
    persist.log.tag.OneHopHelper=S \
    persist.log.tag.DeviceUtils=S \
    persist.log.tag.CAM_BoostFrameworkImpl=S \
    persist.vendor.camera.privapp.list=com.android.camera \
    ro.com.google.lens.oem_camera_package=com.android.camera \
    vendor.camera.aux.packagelist=com.android.camera,org.pixelexperience.faceunlock

# Overlay
PRODUCT_PACKAGES += \
    MiuiCameraOverlayLos \
    MiuiCameraOverlayAosp

include vendor/xiaomi/apollo-miuicamera/products/board.mk

$(call inherit-product, vendor/xiaomi/apollo-miuicamera/common/common-vendor.mk)
