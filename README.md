# fedora-chromebook-splice
Tools to splice working chromebook kernel content into the Fedora ARM images

This is an initial attempt to automate a process that is frequently done by hand

Much of this is drawn from the Fedora Chromebook wiki page here:

https://fedoraproject.org/wiki/Architectures/ARM/Chromebook

Your Chromebook must be in developer mode and have usb/sdcard boot enabled.

These scripts are designed to produce an image that can be booted off of a USB
drive or an sdcard, leaving the developer mode ChromeOS system intact.

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

# Credits

The splice-images script uses guestfish, which is part of libguestfs.
This means we make no use of loopback mounts or kpartx.
When set up properly, libguestfs can even be run as a non-root user.
It's a fantasticly cool and useful project.  Read more:

http://libguestfs.org/

A huge thanks to the Kali Linux folks for generating working images for these
devices.  Check them out:

https://www.offensive-security.com/kali-linux-arm-images/

It's likely these same scripts, lightly modified, will also work with the
Arch Linux chromebook images.  I happened to discover Kali first.

Fedora has a higher mountain to climb here, as we want to maintain
a single official image for all supported hardware, with after the fact
modification for specific platforms.

This could do with some improvement but it does work, and gets a working Fedora
userspace onto a developer mode chromebook quickly, given an sdcard or usb stick.

