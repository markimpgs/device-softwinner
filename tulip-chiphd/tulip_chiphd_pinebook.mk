$(call inherit-product, device/softwinner/tulip-chiphd/device.mk)
$(call inherit-product, build/target/product/full_base.mk)

GAPPS_VARIANT := micro
GAPPS_FORCE_PACKAGE_OVERRIDES := true
GAPPS_FORCE_BROWSER_OVERRIDES := true

PRODUCT_PACKAGES += \
    Launcher3

PRODUCT_PACKAGES += \
    VideoPlayer

PRODUCT_COPY_FILES += \
    device/softwinner/common/config/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

PRODUCT_COPY_FILES += \
    device/softwinner/tulip-chiphd/pinebook/a64_paths.xml:system/etc/a64_paths.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    device/softwinner/tulip-chiphd/pinebook/camera.cfg:system/etc/camera.cfg

# Radio Packages and Configuration Flie
$(call inherit-product, device/softwinner/common/rild/radio_common.mk)
#$(call inherit-product, device/softwinner/common/ril_modem/huawei/mu509/huawei_mu509.mk)
#$(call inherit-product, device/softwinner/common/ril_modem/Oviphone/em55/oviphone_em55.mk)

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=160

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hdmi.device_type=4

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_AAPT_CONFIG := mdpi large xlarge
PRODUCT_AAPT_PREF_CONFIG := mdpi

$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)

PRODUCT_BRAND := Allwinner
PRODUCT_NAME := tulip_chiphd_pinebook
PRODUCT_DEVICE := tulip-chiphd
PRODUCT_MODEL := Pinebook
PRODUCT_MANUFACTURER := Allwinner
