#
# Copyright (C) 2022 FlamingoOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
   hardware/dolby

# Enable codec support
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += hardware/dolby/sepolicy/vendor

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += hardware/dolby/dolby_framework_matrix.xml
    
# Configs
PRODUCT_COPY_FILES += \
    hardware/dolby/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    hardware/dolby/configs/audio/media_codecs_vendor_audio_dolby.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_audio_dolby.xml

# Dolby
PRODUCT_VENDOR_PROPERTIES += \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    ro.vendor.dolby.dax.version=DAX3_3.6.0.12_r1 \
    ro.vendor.dolby.model=PAFM00 \
    ro.vendor.dolby.device=OP46C3 \
    ro.vendor.dolby.manufacturer=OPLUS \
    ro.vendor.dolby.brand=OPLUS 

# Dolby Manager
PRODUCT_PACKAGES += \
    DolbyManager
          
# DaxService
PRODUCT_PACKAGES += \
    manifest_dax_dolby_v3_6
   
# Proprietary blobs
PRODUCT_COPY_FILES += \
    hardware/dolby/proprietary/odm/bin/hw/vendor.dolby_v3_6.hardware.dms360@2.0-service:$(TARGET_COPY_OUT_ODM)/bin/hw/vendor.dolby_v3_6.hardware.dms360@2.0-service \
    hardware/dolby/proprietary/odm/etc/dolby/multimedia_dolby_dax_default.xml:$(TARGET_COPY_OUT_ODM)/etc/dolby/multimedia_dolby_dax_default.xml \
    hardware/dolby/proprietary/odm/etc/init/vendor.dolby_v3_6.hardware.dms360@2.0-service.rc:$(TARGET_COPY_OUT_ODM)/etc/init/vendor.dolby_v3_6.hardware.dms360@2.0-service.rc \
    hardware/dolby/proprietary/vendor/etc/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    hardware/dolby/proprietary/odm/lib/libdapparamstorage_v3_6.so:$(TARGET_COPY_OUT_ODM)/lib/libdapparamstorage_v3_6.so \
    hardware/dolby/proprietary/odm/lib/libdeccfg_v3_6.so:$(TARGET_COPY_OUT_ODM)/lib/libdeccfg_v3_6.so \
    hardware/dolby/proprietary/odm/lib/libdlbdsservice_v3_6.so:$(TARGET_COPY_OUT_ODM)/lib/libdlbdsservice_v3_6.so \
    hardware/dolby/proprietary/odm/lib/libqtigef.so:$(TARGET_COPY_OUT_ODM)/lib/libqtigef.so \
    hardware/dolby/proprietary/odm/lib/libstagefright_soft_ac4dec.so:$(TARGET_COPY_OUT_ODM)/lib/libstagefright_soft_ac4dec.so \
    hardware/dolby/proprietary/odm/lib/libstagefright_soft_ddpdec.so:$(TARGET_COPY_OUT_ODM)/lib/libstagefright_soft_ddpdec.so \
    hardware/dolby/proprietary/odm/lib/libstagefrightdolby.so:$(TARGET_COPY_OUT_ODM)/lib/libstagefrightdolby.so \
    hardware/dolby/proprietary/odm/lib/soundfx/libhwdap_v3_6.so:$(TARGET_COPY_OUT_ODM)/lib/soundfx/libhwdap_v3_6.so \
    hardware/dolby/proprietary/odm/lib/soundfx/libswdap_v3_6.so:$(TARGET_COPY_OUT_ODM)/lib/soundfx/libswdap_v3_6.so \
    hardware/dolby/proprietary/odm/lib/vendor.dolby_v3_6.hardware.dms360@2.0-impl.so:$(TARGET_COPY_OUT_ODM)/lib/vendor.dolby_v3_6.hardware.dms360@2.0-impl.so \
    hardware/dolby/proprietary/odm/lib/vendor.dolby_v3_6.hardware.dms360@2.0.so:$(TARGET_COPY_OUT_ODM)/lib/vendor.dolby_v3_6.hardware.dms360@2.0.so \
    hardware/dolby/proprietary/odm/lib64/libdapparamstorage_v3_6.so:$(TARGET_COPY_OUT_ODM)/lib64/libdapparamstorage_v3_6.so \
    hardware/dolby/proprietary/odm/lib64/libdeccfg_v3_6.so:$(TARGET_COPY_OUT_ODM)/lib64/libdeccfg_v3_6.so \
    hardware/dolby/proprietary/odm/lib64/libdlbdsservice_v3_6.so:$(TARGET_COPY_OUT_ODM)/lib64/libdlbdsservice_v3_6.so \
    hardware/dolby/proprietary/odm/lib64/libqtigef.so:$(TARGET_COPY_OUT_ODM)/lib64/libqtigef.so \
    hardware/dolby/proprietary/odm/lib64/soundfx/libhwdap_v3_6.so:$(TARGET_COPY_OUT_ODM)/lib64/soundfx/libhwdap_v3_6.so \
    hardware/dolby/proprietary/odm/lib64/soundfx/libswdap_v3_6.so:$(TARGET_COPY_OUT_ODM)/lib64/soundfx/libswdap_v3_6.so \
    hardware/dolby/proprietary/odm/lib64/vendor.dolby_v3_6.hardware.dms360@2.0-impl.so:$(TARGET_COPY_OUT_ODM)/lib64/vendor.dolby_v3_6.hardware.dms360@2.0-impl.so \
    hardware/dolby/proprietary/odm/lib64/vendor.dolby_v3_6.hardware.dms360@2.0.so:$(TARGET_COPY_OUT_ODM)/lib64/vendor.dolby_v3_6.hardware.dms360@2.0.so
    
#VNDK
PRODUCT_USE_PRODUCT_VNDK_OVERRIDE := true

PRODUCT_COPY_FILES += \
    prebuilts/vndk/v33/arm/arch-arm-armv7-a-neon/shared/vndk-core/libstagefright_foundation.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_foundation-v33.so \
    prebuilts/vndk/v33/arm64/arch-arm64-armv8-a/shared/vndk-core/libstagefright_foundation.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefright_foundation-v33.so
