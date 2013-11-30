# Inherit common stuff
$(call inherit-product, vendor/behelit/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/behelit/overlay/common_tablet

