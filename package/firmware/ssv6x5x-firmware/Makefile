include $(TOPDIR)/rules.mk

PKG_NAME:=ssv6x5x-firmware
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Your Name <your@email.com>
PKG_LICENSE:=Proprietary

include $(INCLUDE_DIR)/package.mk

define Package/ssv6x5x-firmware
  SECTION:=firmware
  CATEGORY:=Firmware
  TITLE:=Firmware for SSV6x5x WiFi (SV6158, etc)
endef

define Package/ssv6x5x-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/ssv6x5x
	$(INSTALL_DATA) ./files/ssv6x5x-sw.bin $(1)/lib/firmware/ssv6x5x/
	$(INSTALL_DATA) ./files/ssv6x5x-wifi.cfg $(1)/lib/firmware/ssv6x5x/
endef

$(eval $(call BuildPackage,ssv6x5x-firmware))
