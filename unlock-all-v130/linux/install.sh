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
    ./Unlocker.Linux64
else
    ./Unlocker.Linux32
fi

# Copy darwin.iso to tools folder
cp -v ../tools/darwin.iso /usr/lib/vmware/isoimages
cp -v ../tools/darwin.iso.sig /usr/lib/vmware/isoimages

echo Finished!

