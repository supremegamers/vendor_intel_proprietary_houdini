# Intel libhoudini (ARM-on-x86 native bridge)

Prebuilt bundle for Android 17 (Soong layout).

- `houdini64` (64-bit): 17.0.0_z.39885.g

> **Note:** the stock `libhoudini.so` needs the pool-B workspace patch applied
> before it works — without it the image boots fine but every ARM game freezes
> during translation. This tree ships the unmodified GoogleBook blob, so patch
> it before building the image.

## Layout

Soong module under `houdini/`. See `AGENTS.md`.

## Integration

- `PRODUCT_PACKAGES += libhoudini libtcb houdini64 houdini_guest_libc`
- `include $(LOCAL_PATH)/houdini/guest-libs.mk`
- ELF via `Android.bp`; non-ELF via `PRODUCT_COPY_FILES`.
- Board: `TARGET_NATIVE_BRIDGE_ABI := arm64-v8a`.

## Sources

- Googlebook recovery image (Android/Googlebook OS): Lenovo Googlebook 15 (`ruby`), stable build `17.CL3B.260622.276.R4` (build 16658739). https://cros.tech/googlebook/ruby/
- The payload was taken from that recovery image's `system_a` partition; its
  Houdini blobs are byte-identical to the ones in the published build.