PREFIX ?= /usr/bin
VERSION = 0.1

INSTALL = install
MKDIR = mkdir -p
TOUCH = touch
LN = ln -sf

PKGS_PATH = /store/packages/all

all:

install:
	$(INSTALL) -m 0755 -d $(PKGS_PATH)/nopac/$(VERSION)
	$(LN) $(VERSION) $(PKGS_PATH)/nopac/current
	$(INSTALL) -m 0755 -D nopac $(PKGS_PATH)/nopac/current/sysroot$(PREFIX)/nopac
	$(LN) -v $(PKGS_PATH)/nopac/current/sysroot$(PREFIX)/nopac $(PREFIX)/nopac
	$(MKDIR) $(PKGS_PATH)/nopac/current/.nopac
	$(TOUCH) $(PKGS_PATH)/nopac/current/.nopac/installed
