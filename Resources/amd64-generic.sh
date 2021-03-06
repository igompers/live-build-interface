#!/bin/bash

lb config noauto \
   --mode debian \
   --distribution buster \
   --architectures amd64 \
   --interactive shell \
   --debian-installer live \
   --apt-secure true \
   --archive-areas "main" \
   --apt-indices false \
   --memtest none \
   "${@}"
