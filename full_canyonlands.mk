# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/amcc/canyonlands/device.mk)

PRODUCT_NAME := full_canyonlands
PRODUCT_DEVICE := canyonlands
PRODUCT_BRAND := AMCC
PRODUCT_MODEL := Full AOSP on Canyonlands

