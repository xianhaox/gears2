LOCAL_PATH := $(call my-dir)

A3D_CLIENT_VERSION := A3D_GLESv2

# include libraries in correct order
include $(LOCAL_PATH)/texgz/Android.mk
include $(LOCAL_PATH)/a3d/Android.mk
include $(LOCAL_PATH)/libpak/Android.mk

include $(CLEAR_VARS)
LOCAL_MODULE    := GearsES2eclair
LOCAL_CFLAGS    := -Wall -D$(A3D_CLIENT_VERSION)
LOCAL_SRC_FILES := android_jni.c gear.c gears_renderer.c
LOCAL_LDLIBS    := -Llibs/armeabi -llog -lGLESv2
LOCAL_SHARED_LIBRARIES := liba3d libtexgz

include $(BUILD_SHARED_LIBRARY)
