#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/soc.0/7824900.sdhci/by-name/recovery:35429676:6caf4fa567731f74af11598c87d4f36208eebd4f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/soc.0/7824900.sdhci/by-name/boot:32947496:8338c8cc9494b9c8a738935bde89b90ce4f8bb7c EMMC:/dev/block/platform/soc.0/7824900.sdhci/by-name/recovery 6caf4fa567731f74af11598c87d4f36208eebd4f 35429676 8338c8cc9494b9c8a738935bde89b90ce4f8bb7c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
