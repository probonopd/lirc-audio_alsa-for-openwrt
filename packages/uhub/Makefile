#
# Copyright (C) 2009-2012 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=uhub
PKG_VERSION:=0.5.0
PKG_RELEASE:=4

PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-src.tar.gz
PKG_SOURCE_URL:=https://github.com/janvidar/uhub
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_VERSION:=90d05c9a19d3f72e3bdc89e4906c9e254e6a7f10
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/uhub
  SUBMENU:=P2P
  SECTION:=net
  CATEGORY:=Network
  DEPENDS:=+libevent +libopenssl +libsqlite3
  TITLE:=High performance ADC hub
  URL:=http://www.extatic.org/uhub/
endef

define Package/uhub/description
	uhub is a high performance peer-to-peer hub for the ADC network.
        Its low memory footprint allows it to handle several thousand users
        on high-end servers, or a small private hub on embedded hardware.
endef
define Build/Configure
	$(call Build/Configure/Default)
endef

CMAKE_OPTIONS =

define Package/uhub/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/uhub $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/uhub-admin $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/uhub-passwd $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/etc/uhub/
	$(INSTALL_DIR) $(1)/usr/lib/uhub/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/uhub/mod_welcome.so $(1)/usr/lib/uhub/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/uhub/mod_logging.so $(1)/usr/lib/uhub/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/uhub/mod_chat_history.so $(1)/usr/lib/uhub/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/uhub/mod_topic.so $(1)/usr/lib/uhub/
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/lib/uhub/mod_auth_simple.so $(1)/usr/lib/uhub/
	$(INSTALL_CONF) $(PKG_INSTALL_DIR)/etc/uhub/uhub.conf $(1)/etc/uhub/
	$(INSTALL_CONF) $(PKG_INSTALL_DIR)/etc/uhub/plugins.conf $(1)/etc/uhub/
	$(INSTALL_CONF) $(PKG_INSTALL_DIR)/etc/uhub/rules.txt $(1)/etc/uhub/
endef

define Package/uhub/conffiles
/etc/uhub/uhub.conf
/etc/uhub/plugins.conf
endef

$(eval $(call BuildPackage,uhub))
