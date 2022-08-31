# Bundle Houdini as ARM on x86 native bridge
WITH_NATIVE_BRIDGE := true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.dalvik.vm.isa.arm=x86 \
    ro.enable.native.bridge.exec=1 \
    ro.dalvik.vm.isa.arm64=x86_64 \
    ro.enable.native.bridge.exec64=1 \
    ro.dalvik.vm.native.bridge=libhoudini.so

PRODUCT_PACKAGES += \
            houdini \
            houdini64 \
            houdini.rc \
            arm_dyn \
            arm_exe \
            arm64_dyn \
            arm64_exe \
            libhoudini \
            cpuinfo.arm.txt
            
