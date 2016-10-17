#!/bin/bash

# Uncomment only one input image here

# Kali Linux image for veyron/rockchip chromebooks- for kernel and modules
wget -O input-kernel.img.xz https://images.offensive-security.com/arm-images/kali-2.1.2-veyron.img.xz

# Kali Linux image for samsung/nyan/tegra chromebooks - for kernel and modules
#wget -O input-kernel.img.xz https://images.offensive-security.com/arm-images/kali-2.1.2-acer.img.xz

# Kali Linux image for Peach chromebooks - for kernel and modules
#wget -O input-kernel.img.xz https://images.offensive-security.com/arm-images/kali-2.1.2-exynos.img.xz


# F25 Beta - 32 bit arm - XFCE
# Find a local mirror if possible
# This should work with other spin images - YMMV
wget -O input-fedora.img.xz http://mirror.sfo12.us.leaseweb.net/fedora/linux/development/25/Spins/armhfp/images/Fedora-Xfce-armhfp-25-20161014.n.0-sda.raw.xz

xz -d input-kernel.img.xz
xz -d input-fedora.img.xz
