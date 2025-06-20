define Device/rk3229-box
  DEVICE_VENDOR := Rockchip
  DEVICE_MODEL := RK3229 TV Box
  SOC := rk3229
  UBOOT_DEVICE_NAME := rk3229-box
  IMAGE/sysupgrade.img.gz := boot-common | boot-script | pine64-bin | gzip | append-metadata
endef
TARGET_DEVICES += rk3229-box
