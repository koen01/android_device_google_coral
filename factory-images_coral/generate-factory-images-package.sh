#!/bin/sh

# Copyright 2019 The Android Open Source Project
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

source ../../../common/clear-factory-images-variables.sh
BUILD=eng.nobody
DEVICE=coral
PRODUCT=crooked_coral
VERSION=Q3A.220605.009.B1
SRCPREFIX=../../../../out/target/product/coral/obj/PACKAGING/target_files_intermediates/
BOOTLOADER=c2f2-0.2-5619770
RADIO=g8150-00039-190530-b-5618404
source ../../../common/generate-factory-images-common.sh
