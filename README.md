# Intel's libhoudini for Intel x86 CPU, pulled from ChromeOS's arcvm image for `octopus` Chromebooks

`houdini` version = 13.0.1_y.39598.g

`houdini64` version = 13.0.1_z.39598.g

Octopus Android image fingerprint : google/octopus/octopus_cheets:13/R144-16503.18.0/14541889:user/release-keys

Hatch Android image fingerprint : google/hatch/hatch_cheets:13/R130-16033.58.0/12608590:user/release-keys

Volteer Android image fingerprint : google/volteer/volteer_cheets:13/R130-16033.58.0/12608590:user/release-keys

## How to include it in your Android-x86 build :
* To include it, cherry-pick or make this commit as a reference :
https://github.com/supremegamers/device_generic_common/commit/e4f3b23aa2042a27607e31d15367978e0fae29a2

Additionally, remove all the old nativebridge scripts/lib that was in Android-x86 in case you can't compile
https://github.com/supremegamers/device_generic_common/commit/553b43cff47bb72dd712589a6744be8f173c9d8e
https://github.com/supremegamers/device_generic_common/commit/ae4cd3264d3e625d339e7cf9ae42821b51d55ade

