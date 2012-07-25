ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/amcc/canyonlands/uImage
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES := \
    device/amcc/canyonlands/vold.fstab:system/etc/vold.fstab \
    device/amcc/canyonlands/init.canyonlands.rc:root/init.canyonlands.rc \
    device/amcc/canyonlands/ueventd.canyonlands.rc:root/ueventd.canyonlands.rc

PRODUCT_PACKAGES := \
		    alsa.default \
		    libffi
