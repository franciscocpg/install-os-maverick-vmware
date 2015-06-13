#!/bin/sh
set -e

echo VMware Unlocker 1.3.0
echo ===============================
echo Copyright: Dave Parsons 2011-14

# Ensure we only use unmodified commands
export PATH=/bin:/sbin:/usr/bin:/usr/sbin

# Select correct patcher
echo Patching...
ARCH=`uname -m`
if [ "$ARCH" = 'x86_64' ]; then
    ./Unlocker.Linux64 -u
else
    ./Unlocker.Linux32 -u
fi

# Copy darwin.iso to tools folder
rm -fv /usr/lib/vmware/isoimages/darwin.iso
rm -fv /usr/lib/vmware/isoimages/darwin.iso.sig

echo Finished!

