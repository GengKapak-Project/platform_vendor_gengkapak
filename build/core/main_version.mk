# Build fingerprint
ifeq ($(BUILD_FINGERPRINT),)
BUILD_NUMBER_GENGKAPAK := $(shell date -u +%H%M)
GENGKAPAK_DEVICE ?= $(TARGET_DEVICE)
ifneq ($(filter OFFICIAL,$(GENGKAPAK_BUILD_TYPE)),)
BUILD_SIGNATURE_KEYS := release-keys
else
BUILD_SIGNATURE_KEYS := test-keys
endif
BUILD_FINGERPRINT := $(PRODUCT_BRAND)/$(GENGKAPAK_DEVICE)/$(GENGKAPAK_DEVICE):$(PLATFORM_VERSION)/$(BUILD_ID)/$(BUILD_NUMBER_GENGKAPAK):$(TARGET_BUILD_VARIANT)/$(BUILD_SIGNATURE_KEYS)
endif
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
# AOSP recovery flashing
ifeq ($(TARGET_USES_AOSP_RECOVERY),true)
ADDITIONAL_SYSTEM_PROPERTIES += \
    persist.sys.recovery_update=true
endif

# Versioning props
ADDITIONAL_SYSTEM_PROPERTIES += \
    org.gengkapak.version=$(GENGKAPAK_VERSION) \
    org.gengkapak.version=$(GENGKAPAK_VERSION_PROP) \
    org.gengkapak.version.display=$(GENGKAPAK_VERSION) \
    org.gengkapak.build_date=$(GENGKAPAK_BUILD_DATE) \
    org.gengkapak.build_date_utc=$(GENGKAPAK_BUILD_DATE_UTC) \
    org.gengkapak.build_type=$(GENGKAPAK_BUILD_TYPE)
