#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55907662:61357b10b9ededcf637b9c33c2bdc553f9a43c9a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:49943882:e6dec42a80ce770b47585b85ec6ee59aee62295f EMMC:/dev/block/bootdevice/by-name/recovery 61357b10b9ededcf637b9c33c2bdc553f9a43c9a 55907662 e6dec42a80ce770b47585b85ec6ee59aee62295f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
