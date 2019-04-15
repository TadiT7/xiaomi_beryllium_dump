#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:56296782:bc2be35fb3e74ff34e9c6d78d4fff08a0418fa69; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50328906:8798437d167a39fb50a72907d9f36fa5e0476c56 EMMC:/dev/block/bootdevice/by-name/recovery bc2be35fb3e74ff34e9c6d78d4fff08a0418fa69 56296782 8798437d167a39fb50a72907d9f36fa5e0476c56:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
