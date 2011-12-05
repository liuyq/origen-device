# The Samsung Origen low cost board
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/linaro/common/common.mk)
$(call inherit-product, device/linaro/origen/device.mk)

PRODUCT_BRAND := origen
PRODUCT_DEVICE := origen
PRODUCT_NAME := origen
PRODUCT_MODEL := origen
PRODUCT_MANUFACTURER := Samsung
