#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:50492750:eaded82c060919bedcf9c20e58caa4c95c81f82d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:45593930:edb07a12aed7d84e36029a61d8856e6ca4975cd9 EMMC:/dev/block/bootdevice/by-name/recovery eaded82c060919bedcf9c20e58caa4c95c81f82d 50492750 edb07a12aed7d84e36029a61d8856e6ca4975cd9:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
