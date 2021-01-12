FINALPACKAGE=1
THEOS_DEVICE_IP=10.0.0.139
TARGET := iphone:clang:latest:12.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = DisguiseYourself

DisguiseYourself_FILES = Tweak.x
DisguiseYourself_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += disguiseyourself
include $(THEOS_MAKE_PATH)/aggregate.mk
