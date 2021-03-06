# Copyright 2016 The Prometheus Authors
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

REPOSITORY := sdurrheimer
NAME       := prom-busybox
BRANCH     := $(shell git rev-parse --abbrev-ref HEAD)
SUFFIX     ?= -$(BRANCH)
VERSIONS   ?= uclibc glibc

build:
	@./build.sh "$(REPOSITORY)/$(NAME)" "$(SUFFIX)" $(VERSIONS)

deps:
	@./build_deps.sh "$(REPOSITORY)/$(NAME)" "$(SUFFIX)" $(VERSIONS)

.PHONY: build deps
