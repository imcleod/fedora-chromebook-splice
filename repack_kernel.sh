#!/bin/sh

./make_keys.sh

vbutil_kernel --oldblob     ./packed-kernel \
                --repack     ./repacked-kernel \
                --config      ./$1 \
                --keyblock    ./fedora.keyblock \
                --signprivate ./fedora.vbprivk \
                --arch arm --version 1
