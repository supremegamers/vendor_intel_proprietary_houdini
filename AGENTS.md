# vendor_intel_proprietary_houdini (android17 branch)

Intel Houdini ARM64-on-x86_64 native bridge prebuilts for Android 17 (Soong).

Version: `17.0.0_z.39885.g` (from `lib64/libhoudini.so` / `bin/houdini64`).

## Layout

- `bin/houdini64` — binfmt runner (module `houdini64`).
- `lib64/libhoudini.so` (module `libhoudini`), `lib64/libtcb.so` (module `libtcb`).
- `lib64/arm64/*.so` — guest libs; `libc.so` ships as module `houdini_guest_libc`.
- `etc/houdini/...` (cpuinfo, binfmt_misc), `etc/init/init.houdini.rc`.
- `Android.bp` defines all `cc_prebuilt_*` modules.
- `guest-libs.mk` lists guest module names (include from device.mk).

## Integration (device.mk)

```
PRODUCT_PACKAGES += \
    libhoudini \
    libtcb \
    houdini64 \
    houdini_guest_libc

include $(LOCAL_PATH)/houdini/guest-libs.mk

PRODUCT_COPY_FILES += \
    houdini/etc/houdini/cpuinfo.arm64.txt:$(TARGET_COPY_OUT_SYSTEM)/etc/cpuinfo.arm64.txt
```

Non-ELF files are copied via `PRODUCT_COPY_FILES`; ELF via `Android.bp`.

## Board config

`TARGET_NATIVE_BRIDGE_ABI := arm64-v8a` (64-bit only).

## Build

Soong module. Do not edit guest list by hand.