#!/bin/bash

set -e

#qemu-system-x86_64 -m 1024 -display curses -boot d -cdrom live-image-amd64.hybrid.iso
qemu-system-x86_64 --vga virtio -accel kvm -m 1024 -boot d -cdrom live-image-amd64.hybrid.iso

#qemu-img create -f qcow2 virt-disk.qcow2 10G
#qemu-system-x86_64 -boot d -cdrom live-image-amd64.hybrid.iso -m 1024 -hda virt-disk.qcow2
