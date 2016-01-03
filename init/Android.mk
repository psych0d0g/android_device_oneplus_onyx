
ifeq ($(TARGET_INIT_VENDOR_LIB),libinit_onyx)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := system/core/init
LOCAL_CFLAGS := -Wall -DANDROID_TARGET=\"$(TARGET_BOARD_PLATFORM)\"
LOCAL_SRC_FILES := init_onyx.cpp

LOCAL_MODULE := libinit_onyx
include $(BUILD_STATIC_LIBRARY)

endif
