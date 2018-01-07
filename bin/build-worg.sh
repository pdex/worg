#!/bin/bash

set -xe

export BUILD_DIR=${BUILD_DIR:-./build/}

# create build directory if it doesn't exist
mkdir -p "$BUILD_DIR"

# build org
(cd org-mode; make)

# Adapt it to point at your emacs executable
emacs --batch -l etc/emacs.el -f org-publish-all
