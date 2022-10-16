LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := houdini
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SRC_FILES := prebuilts/bin/houdini
LOCAL_POST_INSTALL_CMD := ln -sf /vendor/bin/houdini $(TARGET_OUT)/bin/houdini; \
						  mkdir -p $(TARGET_OUT_VENDOR)/bin/arm; \
						  cp $(LOCAL_PATH)/prebuilts/bin/arm/linker $(TARGET_OUT_VENDOR)/bin/arm/linker; \
						  ln -sf /vendor/bin/arm $(TARGET_OUT)/bin/arm; \
						  mkdir -p $(TARGET_OUT_VENDOR)/lib/arm; \
						  cp -r $(LOCAL_PATH)/prebuilts/lib/arm $(TARGET_OUT_VENDOR)/lib; \
						  ln -sf /vendor/lib/arm $(TARGET_OUT)/lib/arm
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := houdini64
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SRC_FILES := prebuilts/bin/houdini64
LOCAL_POST_INSTALL_CMD := ln -sf /vendor/bin/houdini64 $(TARGET_OUT)/bin/houdini64; \
						  mkdir -p $(TARGET_OUT_VENDOR)/bin/arm64; \
						  cp $(LOCAL_PATH)/prebuilts/bin/arm64/linker64 $(TARGET_OUT_VENDOR)/bin/arm64/linker64; \
						  ln -sf /vendor/bin/arm64 $(TARGET_OUT)/bin/arm64; \
						  mkdir -p $(TARGET_OUT_VENDOR)/lib64/arm64; \
						  cp -r $(LOCAL_PATH)/prebuilts/lib64/arm64 $(TARGET_OUT_VENDOR)/lib64; \
						  ln -sf /vendor/lib64/arm64 $(TARGET_OUT)/lib64/arm64
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := houdini.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := init
LOCAL_SRC_FILES := prebuilts/etc/init/houdini.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := arm_dyn
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := binfmt_misc
LOCAL_SRC_FILES := prebuilts/etc/binfmt_misc/arm_dyn
LOCAL_POST_INSTALL_CMD := ln -sf /vendor/etc/binfmt_misc $(TARGET_OUT)/etc/binfmt_misc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := arm_exe
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := binfmt_misc
LOCAL_SRC_FILES := prebuilts/etc/binfmt_misc/arm_exe
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := arm64_dyn
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := binfmt_misc
LOCAL_SRC_FILES := prebuilts/etc/binfmt_misc/arm64_dyn
LOCAL_POST_INSTALL_CMD := ln -sf /vendor/etc/binfmt_misc $(TARGET_OUT)/etc/binfmt_misc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := arm64_exe
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_RELATIVE_PATH := binfmt_misc
LOCAL_SRC_FILES := prebuilts/etc/binfmt_misc/arm64_exe
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := cpuinfo.arm.txt
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := prebuilts/lib64/arm64/cpuinfo
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MULTILIB := both
LOCAL_MODULE := libhoudini
LOCAL_MODULE_SUFFIX :=.so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
LOCAL_CHECK_ELF_FILES := false
ifdef TARGET_2ND_ARCH
LOCAL_SRC_FILES_32 := prebuilts/lib/libhoudini.so
LOCAL_SRC_FILES_64 := prebuilts/lib64/libhoudini.so
LOCAL_POST_INSTALL_CMD := \
						  ln -sf /vendor/lib64/libhoudini.so $(TARGET_OUT)/lib64/libhoudini.so; \
						  ln -sf /vendor/lib/libhoudini.so $(TARGET_OUT)/lib/libhoudini.so
else
LOCAL_SRC_FILES := prebuilts/lib/libhoudini.so
LOCAL_POST_INSTALL_CMD := ln -sf /vendor/lib/libhoudini.so $(TARGET_OUT)/lib/libhoudini.so
endif
include $(BUILD_PREBUILT)