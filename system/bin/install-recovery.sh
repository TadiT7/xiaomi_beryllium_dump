#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:56255822:8ab6452e43a7eee28ad54ebafe05dde8247245ab; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50287946:ffa983de68233dfda6ba391f7ee5fc87ed7a7efc EMMC:/dev/block/bootdevice/by-name/recovery 8ab6452e43a7eee28ad54ebafe05dde8247245ab 56255822 ffa983de68233dfda6ba391f7ee5fc87ed7a7efc:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
