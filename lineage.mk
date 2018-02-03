# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/bq/vegetalte/full_vegetalte.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_k.mk)

PRODUCT_RELEASE_NAME := Aquaris E5
PRODUCT_NAME := lineage_vegetalte

# Set product device & name
PRODUCT_BUILD_PROP_OVERRIDES += \
   TARGET_DEVICE=Aquaris_E5 PRODUCT_NAME=Aquaris_E5

PRODUCT_BUILD_PROP_OVERRIDES += \
   BUILD_FINGERPRINT=bq/Aquaris_E5/Aquaris_E5:6.0.1/MMB29M/1496674243:user/release-keys \
   PRIVATE_BUILD_DESC="vegetalte-user 6.0.1 MMB29M 4.0.0.04_20170605-1650 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-bq

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lineage.build.vendor_security_patch=2017-05-01
