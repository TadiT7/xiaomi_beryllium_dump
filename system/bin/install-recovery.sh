#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55838030:ffe97f033dc18775b97d5b1c2c37b52a1af1e5d8; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:49898826:596cda9b0f54c91110c1aa508432164c707e33bd EMMC:/dev/block/bootdevice/by-name/recovery ffe97f033dc18775b97d5b1c2c37b52a1af1e5d8 55838030 596cda9b0f54c91110c1aa508432164c707e33bd:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
