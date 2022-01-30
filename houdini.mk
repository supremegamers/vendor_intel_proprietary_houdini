# Bundle Houdini as ARM on x86 native bridge
WITH_NATIVE_BRIDGE := true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.dalvik.vm.isa.arm=x86 \
    ro.enable.native.bridge.exec=1 \
    ro.dalvik.vm.native.bridge=libhoudini.so

HOUDINI_PATH := $(dir $(LOCAL_PATH))houdini/prebuilts
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(HOUDINI_PATH),$(TARGET_COPY_OUT_SYSTEM)/vendor)
