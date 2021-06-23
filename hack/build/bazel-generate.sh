#!/usr/bin/env bash

set -e

source hack/build/common.sh
source hack/build/config.sh

# generate BUILD files
bazel run \
    --config=${ARCHITECTURE} \
    //:gazelle $@
    # --platforms=@io_bazel_rules_go//go/toolchain:linux_amd64_cgo \
