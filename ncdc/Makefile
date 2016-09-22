include $(TOPDIR)/rules.mk

PKG_NAME:=ncdc
PKG_VERSION:=1.19.1
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-src.tar.gz
PKG_SOURCE_URL:=https://g.blicky.net/ncdc.git/
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_VERSION:=f53be2b1e3d27a9f22ebab1aa6b466da5c8de8dd
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk


define Package/ncdc
	SUBMENU:=P2P
	SECTION:=net
	CATEGORY:=Network
	DEPENDS:=+gnutls +bzip2 +zlib +libsqlite3 +libreadline +libncurses +glib2
	TITLE:=High performance ADC client
	URL:=http://dev.yorhel.nl/ncdc
endef

define Package/ncdc/description
	ncdc does stuff
endef
define Build/Configure
	$(call Build/Configure/Default)
endef

define Package/ncdc/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/ncdc $(1)/usr/bin/
endef


$(eval $(call BuildPackage,ncdc))
