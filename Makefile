THEOS_DEVICE_IP = 10.50.194.46
THEOS_DEVICE_PORT = 22
THEOS_DEVICE_USER = mobile

THEOS_PACKAGE_SCHEME = rootless
ARCHS = arm64 arm64e
TARGET := iphone:clang:latest

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = inspect
inspect_FILES = Tweak.x
inspect_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

before-stage::
	make clean-packages

after-package::
	./install.sh