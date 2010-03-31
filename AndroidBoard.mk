LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_PROVIDES_INIT_RC),true)
file := $(TARGET_ROOT_OUT)/init.rc
$(file): $(LOCAL_PATH)/init.rc | $(ACP)
	$(transform-prebuilt-to-target)
ALL_PREBUILT += $(file)
endif

$(shell cp $(LOCAL_PATH)/bionic/libc/kernel/common/linux/fb.h $(TOPDIR)bionic/libc/kernel/common/linux/fb.h)

# keyboard
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/../../ea/generic/keyboards/usbkbd-no-pm.kl:system/usr/keylayout/qwerty.kl

# vold.conf
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/vold.conf:system/etc/vold.conf

# i-jetty
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/i-jetty-debug-2.1-SNAPSHOT.apk:system/app/i-jetty.apk

ifeq ($(strip $(BOARD_USES_ALSA_AUDIO)),true)
ifeq ($(wildcard $(LOCAL_PATH)/asound.conf),)
$(error $(LOCAL_PATH)/asound.conf not found, create one for your hardware)
else
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/asound.conf:system/etc/asound.conf
endif
endif

include frameworks/base/data/sounds/OriginalAudio.mk
