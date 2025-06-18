include $(TOPDIR)/rules.mk

PKG_NAME:=sv6051p-firmware
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=kangris <kangristiktok@gmail.com>
PKG_LICENSE:=Proprietary

include $(INCLUDE_DIR)/package.mk

define Package/sv6051p-firmware
  SECTION:=firmware
  CATEGORY:=Firmware
  TITLE:=Firmware for Silicon Motion SV6051P WiFi
endef

define Package/sv6051p-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/sv6x5x
	$(INSTALL_DATA) ./files/sv6051p.bin $(1)/lib/firmware/sv6x5x/
endef

$(eval $(call BuildPackage,sv6051p-firmware))
