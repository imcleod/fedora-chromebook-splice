#!/bin/bash

rm -f ./$1

truncate --size=7GiB ./$1

sgdisk -a 8192 -n 1:0:+24M -t 1:7F00 -c 1:"KERN-A" -A 1:=:0x011F000000000000 \
                 -n 2:0:+24M -t 2:7F00 -c 2:"KERN-B" -A 2:=:0x011A000000000000 \
                 -n 3:0:+1G  -t 3:8300 -c 3:"BOOT"                             \
                 -n 4:0:+1G  -t 4:8200 -c 4:"SWAP"                             \
                 -n 5:0:0    -t 5:8300 -c 5:"ROOTFS" ./$1
