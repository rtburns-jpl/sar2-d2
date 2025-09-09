#!/usr/bin/env bash

set -Eeuo pipefail

basedir=$(dirname "$(dirname "$(readlink -f "$0")")")

conda env update --solver libmamba \
    --name sar2-d2 --file "${basedir}/environment.yml"
