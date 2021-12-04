#
# Copyright (C) 2019-2021 The ConquerOS Project
#           (C) 2021 hlcynprjct!
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
#

GENGKAPAK_HOST_TIME := $(shell date +"%Y%m%d-%H%M")

ifndef GENGKAPAK_BUILD_TYPE
   GENGKAPAK_BUILD_TYPE := UNOFFICIAL
endif

GENGKAPAK_VERSION := SLAV
GENGKAPAK_BUILD_VERSION := Gengkapak-$(GENGKAPAK_VERSION)-$(GENGKAPAK_BUILD)-$(GENGKAPAK_HOST_TIME)-$(GENGKAPAK_BUILD_TYPE)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
   ro.gengkapak.version=$(GENGKAPAK_VERSION) \
   ro.gengkapak.build.version=$(GENGKAPAK_BUILD_VERSION) \
   ro.gengkapak.build.type=$(GENGKAPAK_BUILD_TYPE)
