Mac OS X Unlocker for VMware
============================

1. Introduction
---------------

The package is a combination of the Unlocker code written by Zenith432 plus some
fixes and scripts written by myself that wrap the actual unlocker code. 

It has been tested against:

* Workstation 8/9/10 on Windows and Linux (32 & 64-bit versions)
* Player 4/5/6 on Windows and Linux (32 & 64-bit versions)
* Fusion 4/5/6 on Snow Leopard, Lion, Mountain Lion and Mavericks
* ESXi 5.0/5.1/5.5

The patch code carries out the following modifications dependent on the product
being patched:

* Fix vmware-vmx and derivatives to allow Mac OS X to boot
* Fix vmwarebase .dll or .so to allow Apple to be selected during creation
* Copy darwin.iso if needed to VMware folder

Note that not all products recognise the darwin.iso via install tools menu item.
You will have to manually mount the darwin.iso for example on Workstation.

Also Player is missing vmware-vmx-debug and vmware-vmx-stats files and so an 
error is shown during patching as the files are not found. This can be safely 
ignored.

OS X guests on ESXi patched hosts cannot be controlled from vCenter, only from
the ESXi host itself. This means power operations have to be run directly on
the server.

The vmwarebase code does not need to be patched on ESXi or OS X so you will see a 
message on those systems telling you that it will not be patched.

In all cases make sure VMware is not running, and any background guests have 
been shutdown.

2. Windows
----------
On Windows you will need to either run cmd.exe as Administrator or using 
Explorer right click on the command file and select "Run as administrator".

install.cmd   - patches VMware and copies darwin.iso tools image to VMware
uninstall.cmd - restores VMware and removes darwin.iso tools image from VMware

3. Linux
---------
On Linux you will need to be either root or use sudo to run the scripts. 

You may need to ensure the contents of the linux folder have execute permissions
by running chmod +x against the 4 files.

install.sh   - patches VMware and copies darwin.iso tools image to VMware
uninstall.sh - restores VMware and removes darwin.iso tools image from VMware

4. Mac OS X
-----------
On Mac OS X you will need to be either root or use sudo to run the scripts. 
This is really only needed if you want to use client versions of Mac OS X.

You may need to ensure the contents of the osx folder have execute permissions
by running chmod +x against the 3 files.

install.sh   - patches VMware 
uninstall.sh - restores VMware 

5. ESXi
-------
You will need to transfer the zip file to the ESXi host either using vSphere client or SCP.

Once uploaded you will need to either use the ESXi support console or use SSH to
run the commands. Use the unzip command to extract the files. 

<<< WARNING: use a datastore volume to run the scripts >>>

Please note that you will need to reboot the host for the patches to become active.
The patcher is embbedded in a shell script local.sh which is run at boot from /etc/rc.local.d.

You may need to ensure the contents of the esxi folder have execute permissions
by running chmod +x against the 3 files.

install.sh   - patches VMware 
uninstall.sh - restores VMware 

Note:
1. System should have a persistent scratch partition - should be OK except for stateless 
   and USB boot on drives less than 4GB
http://kb.vmware.com/selfservice/microsites/search.do?language=en_US&cmd=displayKC&externalId=1033696
http://www-01.ibm.com/support/docview.wss?uid=isg3T1013015
http://www.vreference.com/2011/04/28/check-for-esxi-scratch-persistence/
2. Any changes you have made to local.sh will be lost. If you have made changes to 
   that file, you will need to merge them into the supplied local.sh file.
3. This option runs at boot time to patch the releavant files and it now survives 
   an upgrade or patch to ESXi as local.sh is part of the persisted local state.

6. Zenith432's Unlocker
-----------------------

In all cases the unlocker can be run without the scripts but you would need to
carry out additional actions which the scripts encapsulate for you especially on
ESXi. If you want to run the unlocker directly the parameters are:

Usage: Unlocker [-h] [-u] [target_directory]
  -h: print help
  -u: remove the patch
  target_directory: customize location of vmx executables

On all platforms you must run it with administrator or root privileges.
The source code is provided and Zenith432 makes it freely available for
modification. I have modified the code and it is available as per Zenith432's 
original statement.


Thanks to Zenith432 for building the unlocker and Mac Son of Knife for all
the testing and support.


History
-------
11/10/11 1.0.0 - First release 
07/11/11 1.0.1 - Fixed typo in Windows command files
07/12/11 1.0.2 - Updated patcher and tools for latest release WKS 8.0.1 & FUS 4.1.1
10/05/12 1.1.0 - Changed the patching mechanism for vmwarebase .dll or .so
                 & tested against ESXi 5.0 U1 and Tech Previews.
13/07/13 1.1.1 - Changed ESXi scripts to ensure not deleting root /bin folder
               - Fixed vmwarebase patching on 32-bit Linux
               - Some other code clean-up in Unlocker.cpp
18/09/13 1.2.0 - Updated vmwarebase pattern matching for WKS 10.0.0 & FUS 6.0.0
25/03/14 1.3.0 - New method to run patcher on ESXi
               - Fixes crashes when using vCenter
               - Tested against ESXi 5.5
               - Darwin guest tools from Fusion 6.0.2 
               - Zip file preserves file attributes for Posix based systems

(c) 2011-2014 Dave Parsons
