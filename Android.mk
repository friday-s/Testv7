# Copyright 2007-2008 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

#LOCAL_STATIC_JAVA_AAR_LIBRARIES := support-v4-24.2.1 appcompat-v7-24.2.1 design-24.2.1
LOCAL_STATIC_JAVA_LIBRARIES := android-support-v4 android-support-v7-appcompat android-support-design
LOCAL_AAPT_FLAGS := \
    --auto-add-overlay \
    --extra-packages android.support.v7.appcompat \
    --extra-packages android.support.design \
#    --extra-packages android.support.v4 \



LOCAL_SRC_FILES := $(call all-subdir-java-files)

APPCOMPACT_DIR := prebuilts/sdk/current/support/v7/appcompat/res
DESIGN_DIR := prebuilts/sdk/current/support/design/res
#res_dirs := res$(APPCOMPACT_DIR)
#LOCAL_RESOURCE_DIR := $(addprefix $(LOCAL_PATH)/,$(APPCOMPACT_DIR))
LOCAL_RESOURCE_DIR += $(LOCAL_PATH)/res
LOCAL_RESOURCE_DIR += $(APPCOMPACT_DIR)
LOCAL_RESOURCE_DIR += $(DESIGN_DIR)

LOCAL_PACKAGE_NAME := Test2
LOCAL_CERTIFICATE := platform

include $(BUILD_PACKAGE)

#include $(CLEAR_VARS)
#LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := support-v4-24.2.1:libs/support-v4-24.2.1.aar \
#                                        appcompat-v7-24.2.1:libs/appcompat-v7-24.2.1.aar \
#                                        design-24.2.1:libs/design-24.2.1.aar
#include $(BUILD_MULTI_PREBUILT)

