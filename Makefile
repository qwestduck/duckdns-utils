NAME=duckdns-utils
VERSION=0.0.1

DIRS=bin
INSTALL_DIRS=`find $(DIRS) -type d 2>/dev/null`
INSTALL_FILES=`find $(DIRS) -type f 2>/dev/null`
DOC_FILES=manifest spec.jsp
CONF_FILES=etc/*.conf
INIT_FILES=init/systemd/*.timer init/systemd/*.service

PKG_NAME=$(NAME)

PREFIX?=/usr
DOC_DIR=$(PREFIX)/share/doc/$(PKG_NAME)
CONF_DIR=/etc/$(PKG_NAME)
DOMAIN_DIR=$(CONF_DIR)/domains
INIT_DIR=/lib/systemd/system

install:
	for dir in $(INSTALL_DIRS); do mkdir -p $(PREFIX)/$$dir; done
	for file in $(INSTALL_FILES); do cp $$file $(PREFIX)/$$file; done
	mkdir -p $(DOC_DIR)
	mkdir -p $(DOMAIN_DIR)
	mkdir -p $(INIT_DIR)
	cp -r $(DOC_FILES) $(DOC_DIR)/
	cp -r $(CONF_FILES) $(DOMAIN_DIR)/
	cp -r $(INIT_FILES) $(INIT_DIR)/
	systemctl enable duckdns-update.timer
	systemctl start duckdns-update.timer

uninstall:
	systemctl stop duckdns-update.timer
	systemctl disable duckdns-update.timer
	for file in $(INSTALL_FILES); do rm -f $(PREFIX)/$$file; done
	rm -rf $(DOC_DIR)
	rm -rf $(CONF_DIR)
	rm -f $(INIT_DIR)/duckdns-update.service
	rm -f $(INIT_DIR)/duckdns-update.timer

.PHONY: install uninstall
