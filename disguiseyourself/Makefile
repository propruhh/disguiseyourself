TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = DisguiseYourself

DisguiseYourself_FILES = cumRootListController.m
DisguiseYourself_FRAMEWORKS = UIKit
DisguiseYourself_PRIVATE_FRAMEWORKS = Preferences
DisguiseYourself_INSTALL_PATH = /Library/PreferenceBundles
DisguiseYourself_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
