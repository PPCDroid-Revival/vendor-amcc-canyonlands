ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/amcc/canyonlands/uImage
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_PACKAGES := \
		    alsa.default \
		    libffi
