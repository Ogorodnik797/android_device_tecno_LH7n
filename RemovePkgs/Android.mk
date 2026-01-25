LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePkgs
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional

# Chrome variants
LOCAL_OVERRIDES_PACKAGES := \
    Chrome \
    Chrome64 \
    Chrome-stub \
    Chrome-Stub \
    com.android.chrome

# Removing some music apps default
LOCAL_OVERRIDES_PACKAGES += \
    Music \
    Eleven \
    Phonograph

# Optional bloat / Google Apps
LOCAL_OVERRIDES_PACKAGES += \
    YouTube \
    YTMusic \
    Browser2 \
    Drive \
    Photos \
    Gemini \
    PersonalSafety \
    com.google.android.apps.safetyhub \
    Weather \
    com.google.android.apps.weather \
    Maps \
    com.google.android.apps.maps

LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := platform
LOCAL_SRC_FILES := /dev/null

include $(BUILD_PREBUILT)
