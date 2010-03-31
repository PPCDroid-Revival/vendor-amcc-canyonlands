$(call inherit-product, build/target/product/ea.mk)

# Overrides
PRODUCT_BRAND := AMCC
PRODUCT_NAME := canyonlands
PRODUCT_DEVICE := canyonlands
PRODUCT_PACKAGE_OVERLAYS := vendor/ea/generic
