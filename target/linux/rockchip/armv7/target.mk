ARCH:=arm
SUBTARGET:=generic
BOARDNAME:=Rockchip RK322x (ARMv7)
CPU_TYPE:=cortex-a7
CPU_SUBTYPE:=neon-vfpv4
KERNELNAME:=zImage dtbs

define Target/Description
  Build images for $(BOARDNAME)
endef
