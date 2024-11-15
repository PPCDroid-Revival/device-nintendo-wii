# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/nintendo/wii/device.mk)

PRODUCT_NAME := wii
PRODUCT_DEVICE := wii
PRODUCT_BRAND := Nintendo
PRODUCT_MODEL := Full AOSP on Nintendo Wii

