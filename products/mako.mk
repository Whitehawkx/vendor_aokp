# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/behelit/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/behelit/configs/gsm.mk)

# Mako Overlay
#PRODUCT_PACKAGE_OVERLAYS += vendor/behelit/overlay/mako

# Setup device specific product configuration
PRODUCT_NAME := crimson_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT="google/occam/mako:4.3/JLS36C/573038:user/release-keys" PRIVATE_BUILD_DESC="occam-user 4.3 JLS36C 573038 release-keys" BUILD_NUMBER=573038

PRODUCT_COPY_FILES += \
    vendor/behelit/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip
