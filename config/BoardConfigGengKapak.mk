include vendor/gengkapak/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/gengkapak/config/BoardConfigQcom.mk
endif

include vendor/gengkapak/config/BoardConfigSoong.mk
