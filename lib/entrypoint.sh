#!/bin/sh

set -e

cd "${2:-.}" || echo "source root not found"

NODE_PATH=node_modules GITHUB_TOKEN="${GITHUB_TOKEN:-${1:-.}}" SOURCE_ROOT=${2:-.} node /action/lib/run.js
