#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="corvid-linux-full"
iso_label="CORVIDLINUX_$(date +%Y%m)"
iso_publisher="Corvid Linux <https://www.blackarch.org/>"
iso_application="Corvid Linux Full ISO"
iso_version="$(date +%Y.%m.%d)"
install_dir="corvid"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
file_permissions=(
  ["/etc/shadow"]="0:0:0400"
  ["/etc/gshadow"]="0:0:0400"
)
