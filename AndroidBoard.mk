LOCAL_PATH := $(call my-dir)

# keyboard
#	$(LOCAL_PATH)/../../ea/generic/keyboards/usbkbd-no-pm.kl:system/usr/keylayout/qwerty.kl

ifeq ($(strip $(BOARD_USES_ALSA_AUDIO)),true)
ifeq ($(wildcard $(LOCAL_PATH)/asound.conf),)
$(error $(LOCAL_PATH)/asound.conf not found, create one for your hardware)
else
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/asound.conf:system/etc/asound.conf
endif
endif
