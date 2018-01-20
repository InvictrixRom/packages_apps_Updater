LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_RESOURCE_DIR := \
    $(LOCAL_PATH)/res

LOCAL_AAPT_FLAGS := \
    --auto-add-overlay

LOCAL_PROGUARD_ENABLED := disabled
LOCAL_PACKAGE_NAME := Updater
LOCAL_CERTIFICATE := platform
LOCAL_JNI_SHARED_LIBRARIES := libinvupdater libinvdd
LOCAL_REQUIRED_MODULES := libinvupdater libinvdd
LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))
