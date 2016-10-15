# fedora-chromebook-splice
Tools to splice working chromebook kernel content into the Fedora ARM images

This is an initial attempt to automate a process that is frequently done by hand

Your Chromebook must be in developer mode and have usb/sdcard boot enabled.

These scripts are designed to produce an image that can be booted off of a USB
drive or an sdcard.  

A huge thanks to the Kali Linux folks for generating working images for these
devices.  Fedora has a higher mountain to climb here, as we want to maintain
a single official image for all supported hardware, with after the fact
modification for specific platforms.

This could do with some improvement but it does work, and gets a working Fedora
userspace onto a developer mode chromebook quickly, given an sdcard or usb stick

# Pre-req

Requires guestfish/libguestfs and gdisk

A "dnf install -y guestfish gdisk" should be sufficient on Fedora


# HOWTO

Edit "get_images.sh" and uncomment the input image for the device you want

Run "get_images.sh"

Edit "splice-images" and uncomment the sections for the media type you want

Run "splice-images"

Copy the resulting "chromebook-output.img" to your USB or sdcard media

Insert in your Chromebook

Hit "ctrl-U" at the developer mode startup screen.
