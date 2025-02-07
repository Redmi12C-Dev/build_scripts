#!/bin/bash
repo init -u https://github.com/ProjectMatrixx/android.git -b 15.0 --git-lfs
git clone https://github.com/Redmi12C-Dev/local_manifests.git .repo/local_manifests
/opt/crave/resync.sh
export BUILD_USERNAME=pangys
export BUILD_HOSTNAME=crave
export KBUILD_USERNAME=pangys
export KBUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
export TZ=Asia/Kuching
. build/envsetup.sh
brunch earth
