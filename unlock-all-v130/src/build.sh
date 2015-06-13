#!/bin/sh
g++ -fno-stack-protector -fno-rtti -fno-exceptions -pipe -O2 -static -m32 -o Unlocker.Linux32 Unlocker.cpp
/usr/bin/strip  Unlocker.Linux32
g++ -fno-stack-protector -fno-rtti -fno-exceptions -pipe -O2 -static -m64 -o Unlocker.Linux64 Unlocker.cpp
/usr/bin/strip  Unlocker.Linux64
g++  -fno-stack-protector -fno-rtti -fno-exceptions -pipe -O2 -D__ESXi__ -static  -m64 -o Unlocker.ESXi Unlocker.cpp
/usr/bin/strip  Unlocker.ESXi

