export GO_EASY_ON_ME = 1
export THEOS_DEVICE_IP = 10.0.0.6
include theos/makefiles/common.mk

TWEAK_NAME = CamSlideshow
CamSlideshow_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
