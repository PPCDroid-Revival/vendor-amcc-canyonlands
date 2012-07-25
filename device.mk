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
		    com.android.future.usb.accessory

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    device/amcc/canyonlands/canyonlands_hardware.xml:system/etc/permissions/canyonlands_hardware.xml \
    device/amcc/canyonlands/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    device/amcc/canyonlands/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml
