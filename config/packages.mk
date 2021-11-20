# APN Config List
PRODUCT_PACKAGES += \
    apns-conf.xml

# System Applications
PRODUCT_PACKAGES += \
    ExactCalculator \
    LatinIME \
    messaging \
    Recorder \
    SimpleDeviceConfig \
    Stk \
    ThemePicker

# Sensitive Phone Numbers list
PRODUCT_COPY_FILES += \
    vendor/gengkapak/prebuilt/common/etc/sensitive_pn.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sensitive_pn.xml

# Executabl;e Binaries
PRODUCT_PACKAGES += \
    7z \
    bash \
    curl \
    getcap \
    htop \
    lib7z \
    libsepol \
    nano \
    pigz \
    scp \
    sftp \
    setcap \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh \
    rsync \
    unrar \
    vim \
    wget \
    zip

# These packages are excluded from user builds
PRODUCT_PACKAGES_DEBUG += \
    procmem

# Root
PRODUCT_PACKAGES += \
    adb_root
ifneq ($(TARGET_BUILD_VARIANT),user)
ifeq ($(WITH_SU),true)
PRODUCT_PACKAGES += \
    su
endif
endif

# Dex preopt
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI
