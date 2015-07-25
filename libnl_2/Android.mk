LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
        attr.c \
        cache.c \
        genl/genl.c \
        genl/family.c \
        handlers.c \
        msg.c \
        netlink.c \
        object.c \
        socket.c \
        dbg.c

LOCAL_C_INCLUDES += \
        external/libnl-headers
# from semco      
LOCAL_SHARED_LIBRARIES := liblog

# Static Library
LOCAL_MODULE := libnl_2
LOCAL_MODULE_TAGS := optional
# from semco
#include $(BUILD_STATIC_LIBRARY)
include $(BUILD_SHARED_LIBRARY)
#######################################
# Shared library currently unavailiable
# * Netlink cache not implemented
# * Library is not thread safe
#######################################

