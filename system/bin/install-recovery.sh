#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:56296782:36163215184880b45a95fc52ace0e42ef5b3829c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50328906:aa9f95e4f41fff424a7bff53d08a147e11dc2ed7 EMMC:/dev/block/bootdevice/by-name/recovery 36163215184880b45a95fc52ace0e42ef5b3829c 56296782 aa9f95e4f41fff424a7bff53d08a147e11dc2ed7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
