#!/bin/sh

sync				# HDDにキャッシュを書き込む。
sync
sleep 2

echo -n 4 > /proc/acpi/sleep	# ハイバネーションするためのコマンド。

sleep 2				# ハイバネーション復帰後は、ここから下が実行される。
/sbin/kbdrate -r 30 -d 250	# キー入力が遅くなるのを回避。
/sbin/hwclock --hctosys		# システム時刻が狂うのでハードウェアクロックをシステム時刻に設定。
#/sbin/ifconfig eth0 down	# eth0が復帰しないので一度落とす。
#/sbin/rmmod rtl8139		# eth0のドライバを一度取り外すとeth0が復帰する。
