#!/bin/bash

DESTDIR="$1"
prefix="$2"

python_site=$(pf-makevar python-site)

make \
    DESTDIR="$DESTDIR" \
    prefix="$prefix" \
    PYTHON_SITE_PACKAGES="$python_site" \
    USE_ENV_PYTHON=1 \
    install
