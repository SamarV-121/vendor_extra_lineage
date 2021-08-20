# Copyright (C) 2017 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

# Extra
include $(CLEAR_VARS)
LOCAL_MODULE       := extra.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init/extra.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/init
include $(BUILD_PREBUILT)

# SU
include $(CLEAR_VARS)
LOCAL_SRC_FILES := bin/su
LOCAL_MODULE := phh-su
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_REQUIRED_MODULES := su.rc
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := su.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init/su.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := Superuser
LOCAL_SRC_FILES := apk/$(LOCAL_MODULE).apk
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

# Debugging tools
include $(CLEAR_VARS)
LOCAL_MODULE := adbowifi
LOCAL_SRC_FILES := bin/$(LOCAL_MODULE)
LOCAL_MODULE_CLASS := EXECUTABLES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := debugging.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init/debugging.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/init
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := magiskpolicy
LOCAL_SRC_FILES := bin/$(LOCAL_MODULE)
LOCAL_MODULE_CLASS := EXECUTABLES
include $(BUILD_PREBUILT)
