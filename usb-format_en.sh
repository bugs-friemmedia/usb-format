#!/bin/bash
# 
# USB-Format Skript
# copyright, Februar 2020 by Robert Friemer
# Version 0.2
#

# List all USB-Devices
camcontrol devlist | grep "(da"

# Device-Selection
echo "Which Device should be formatted?"
read device

# Choose-Filesystem
echo "Which Filesystemshould be used (fat16 or fat32)?"
echo "Use fat16 for USB-Devices under 8GB of Size."
read filetyp

# Name for USB-Device (This name will be used as mount-folder.
echo "Give it a Name..."
read devname

# Execute the Formatting
su root -c " \
sysctl kern.geom.debugflags=16; \
gpart destroy -F /dev/$device; \
dd if=/dev/zero of=/dev/$device bs=8M count=1; \
echo Neuer Masterboot Record wird erstellt; \
gpart create -s mbr /dev/$device; \
echo Eine neue Partition wird erstellt.; \
gpart add -t fat${filetyp:3:2} /dev/$device; \
echo Das neue Dateisystem wird formatiert.; \
newfs_msdos -F${filetyp:3:2} -L $devname /dev/$device"s1"; \
gpart show /dev/$device; \
sysctl kern.geom.debugflags=0; \
echo Finished!; "
