#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="archlinuxarm-baseline"
iso_label="ARCH_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="IComplainInComments"
iso_application="Arch Linux Arm baseline"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('uefi-aarch64.systemd-boot.esp' 'uefi-aarch64.systemd-boot.eltorito')
arch="aarch64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'arm' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
)
