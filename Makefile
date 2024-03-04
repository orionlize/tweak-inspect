FINALPACKAGE=1
THEOS_PACKAGE_SCHEME=rootless
ARCHS = arm64 arm64e
TARGET := iphone:clang:latest

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = inspect
inspect_FILES = Tweak.x
inspect_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
