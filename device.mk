ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/nintendo/wii/zImage
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES := \
    device/nintendo/wii/vold.fstab:system/etc/vold.fstab \
    device/nintendo/wii/init.wii.rc:root/init.wii.rc \
    device/nintendo/wii/ueventd.wii.rc:root/ueventd.wii.rc \
    device/nintendo/wii/modules-4.5.0-wii+/4.5.0-wii+/kernel/drivers/input/mousedev.ko:system/lib/modules/mousedev.ko

PRODUCT_PACKAGES := \
		    alsa.default \
		    com.android.future.usb.accessory

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    device/nintendo/wii/wii_hardware.xml:system/etc/permissions/wii_hardware.xml \
    device/nintendo/wii/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    device/nintendo/wii/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml
