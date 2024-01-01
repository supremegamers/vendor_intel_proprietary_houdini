# Intel's libhoudini for intel/AMD x86 CPU, pulled from Microsoft's WSA 13 image

`houdini` version: 13.0.0a_y.39190.m

`houdini64` version: 13.0.0a_z.39190.m

Android image fingerprint: Windows/windows_x86_64/windows_x86_64:13/TQ3A.230901.001/2311.40000.4.0:user/release-keys

## How to include it in your Android-x86 build :
To include it, cherry-pick or make these commit as a reference:

https://github.com/supremegamers/device_generic_common/commit/e4f3b23aa2042a27607e31d15367978e0fae29a2

https://github.com/BlissRoms-x86/platform_device_generic_x86_64/commit/ef3fe8b00584eb60f6849d18cfc03a54e88901f7

Additionally, remove all the old nativebridge scripts/lib that was in Android-x86 in case you can't compile:

https://github.com/supremegamers/device_generic_common/commit/553b43cff47bb72dd712589a6744be8f173c9d8e

https://github.com/supremegamers/device_generic_common/commit/ae4cd3264d3e625d339e7cf9ae42821b51d55ade

