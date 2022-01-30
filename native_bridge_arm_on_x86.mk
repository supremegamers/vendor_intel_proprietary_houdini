ifneq ($(WITH_NATIVE_BRIDGE), true)
    # TARGET_CPU_ABI2 must be set to make soong build additional ARM code
    # However, if no native bridge is bundled, the system does not support
    # ARM binaries by default, yet it indicates support through
    # ro.product.cpu.abi2 in build.prop.

    # Attempt to reset ro.product.cpu.abi2 using
    # https://github.com/LineageOS/android_build/commit/94282042cac8dc66e9935c8d7455bd323b0b6716
    PRODUCT_BUILD_PROP_OVERRIDES += TARGET_CPU_ABI2=
endif
