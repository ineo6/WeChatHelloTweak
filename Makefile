THEOS_DEVICE_IP = localhost
THEOS_DEVICE_PORT = 2222
ARCHS = armv7 arm64

TARGET = iphone:10.3:8.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = WeChatHelloTweak
$(TWEAK_NAME)_FILES = Tweak.xm

#指定版本
_THEOS_TARGET_LDFLAGS += -current_version 1.0
_THEOS_TARGET_LDFLAGS += -compatibility_version 1.0

include $(THEOS_MAKE_PATH)/tweak.mk
