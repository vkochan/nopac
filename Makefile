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
	$(INSTALL) -m 0755 -D config/nopac.sh $(PKGS_PATH)/nopac/current/sysroot/etc/profile.d/nopac.sh
	$(LN) $(PKGS_PATH)/nopac/current/sysroot$(PREFIX)/nopac $(PREFIX)/nopac
	$(INSTALL) -m 0755 -d /etc/profile.d
	$(LN) $(PKGS_PATH)/nopac/current/sysroot/etc/profile.d/nopac.sh /etc/profile.d/nopac.sh
	$(MKDIR) $(PKGS_PATH)/nopac/current/.nopac
	$(TOUCH) $(PKGS_PATH)/nopac/current/.nopac/installed
