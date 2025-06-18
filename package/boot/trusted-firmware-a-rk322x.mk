# package/trusted-firmware-a-rk322x.mk
include $(TOPDIR)/rules.mk

PKG_NAME:=trusted-firmware-a-rk322x
PKG_VERSION:=2.10
PKG_SOURCE:=trusted-firmware-a-$(PKG_VERSION).tar.gz

include $(INCLUDE_DIR)/package.mk

define Package/trusted-firmware-a-rk322x
  TITLE:=ARM Trusted Firmware for RK322x
  DEPENDS:=@TARGET_rockchip_armv7
endef

define Build/Compile
  $(MAKE) -C $(PKG_BUILD_DIR) PLAT=rk322x bl31
endef

define Package/trusted-firmware-a-rk322x/install
  $(INSTALL_DIR) $(STAGING_DIR_IMAGE)
  $(CP) $(PKG_BUILD_DIR)/build/rk322x/release/bl31/bl31.elf $(STAGING_DIR_IMAGE)/rk322x_bl31.elf
endef

$(eval $(call BuildPackage,trusted-firmware-a-rk322x))
