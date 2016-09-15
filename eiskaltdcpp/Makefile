include $(TOPDIR)/rules.mk

PKG_NAME:=eiskaltdcpp
PKG_VERSION:=0.1.2
PKG_RELEASE:=2

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/eiskaltdcpp/eiskaltdcpp.git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_VERSION:=c3822eefefb5a94e1686029542b8152e73bf889d
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk
include $(INCLUDE_DIR)/nls.mk

define Package/eiskaltdcpp
  SECTION:=base
  CATEGORY:=Network
  TITLE:=Eiskalt DC++ Client
  URL:=https://github.com/eiskaltdcpp/eiskaltdcpp
  DEPENDS:=+zlib +bzip2 +libopenssl +libpthread +libstdcpp
endef

define Package/eiskaltdcpp/description
  EiskaltDC++ is a cross-platform program that uses the Direct Connect and ADC protocols
endef

define Build/Configure
	$(call Build/Configure/Default)
endef

CMAKE_OPTIONS = \
	-DUSE_IDNA=OFF  \
	-DLINK=STATIC  \
	-DUSE_QT=OFF  \
	-DFREE_SPACE_BAR_C=OFF  \
	-DDBUS_NOTIFY=OFF  \
	-DUSE_LIBNOTIFY=OFF  \
	-DNO_UI_DAEMON=ON  \
	-DJSONRPC_DAEMON=ON  \
	-DWITH_EMOTICONS=OFF  \
	-DWITH_EXAMPLES=OFF  \
	-DFORCE_XDG=OFF  \
	-DLOCAL_BOOST=ON  \
	-DDO_NOT_USE_MUTEX=ON \
	-DCMAKE_CXX_FLAGS="-pipe -mno-branch-likely -mips32r2 -mtune=34kc -fno-caller-saves -fhonour-copts -Wno-error=unused-but-set-variable -msoft-float -fpic -fomit-frame-pointer -Wall" \
	-DCMAKE_C_FLAGS="-pipe -mno-branch-likely -mips32r2 -mtune=34kc -fno-caller-saves -fhonour-copts -Wno-error=unused-but-set-variable -msoft-float -fpic -fomit-frame-pointer -Wall" \
	-DCMAKE_FIND_ROOT_PATH="$(STAGING_DIR)" \
	-DCMAKE_FIND_ROOT_PATH_MODE_PROGRAM=NEVER \
	-DCMAKE_FIND_ROOT_PATH_MODE_LIBRARY=ONLY \
	-DCMAKE_PREFIX_PATH="$(ICONV_PREFIX)" \
	-DGETTEXT_INCLUDE_DIR="$(INTL_PREFIX)/include"

define Package/eiskaltdcpp/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/eiskaltdcpp-daemon/eiskaltdcpp-daemon $(1)/usr/sbin/
endef

$(eval $(call BuildPackage,eiskaltdcpp))
