#!/bin/sh
set -e

echo VMware Unlocker 1.3.0
echo ===============================
echo Copyright: Dave Parsons 2011-14

# Ensure we only use unmodified commands
export PATH=/bin:/sbin:/usr/bin:/usr/sbin

# Check for old unlcoker and issue message
if [ -f /bootbank/darwin.vgz ]; then
   echo Error - please remove the older unlocker first!
   exit 1
fi
# Copy patch local.sh
if [ -d /scratch ]; then
    echo Installing local.sh 
    cp local.sh /etc/rc.local.d/local.sh
    echo Success - please now restart the server!
    exit 0
else
    echo Error - no scratch partition!
    exit 1
fi
