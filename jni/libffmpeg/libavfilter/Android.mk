LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
include $(LOCAL_PATH)/../av.mk
LOCAL_SRC_FILES := $(FFFILES)
LOCAL_C_INCLUDES :=  \
 $(LOCAL_PATH)  \
 $(LOCAL_PATH)/..
LOCAL_CFLAGS += $(FFCFLAGS)
#LOCAL_CFLAGS += -DHAVE_NEON=1
LOCAL_STATIC_LIBRARIES := $(FFLIBS)
#LOCAL_SHARED_LIBRARIES := libavutil \
	#		swscale \
		#	libavcodec 
LOCAL_MODULE := $(FFNAME)
include $(BUILD_STATIC_LIBRARY)
