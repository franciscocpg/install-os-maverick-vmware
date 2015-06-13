CPPFLAGS:=-fno-stack-protector -fno-rtti -fno-exceptions -pipe -O2
ifeq ($(shell uname -s),Darwin)
CPPFLAGS+=-mmacosx-version-min=10.5
TARGET_ARCH:=-arch $(shell uname -m)
STRIP_FLAGS:=-no_uuid
TARGET:=Unlocker.OSX
else ifneq (,$(findstring esxi,$(MAKECMDGOALS)))
CPPFLAGS+=-D__ESXi__ -static
TARGET_ARCH:=-m64
TARGET:=Unlocker.ESXi
else
TARGET:=Unlocker.Linux
endif

$(TARGET): Unlocker.cpp
	$(LINK.cpp) -o $@ $^
	/usr/bin/strip $(STRIP_FLAGS) $@

.PHONY: clean esxi

esxi: $(TARGET)

clean:
	/bin/rm -f $(TARGET)
