#!/bin/sh

sync				# HDD�˥���å����񤭹��ࡣ
sync
sleep 2

echo -n 4 > /proc/acpi/sleep	# �ϥ��Х͡�����󤹤뤿��Υ��ޥ�ɡ�

sleep 2				# �ϥ��Х͡������������ϡ��������鲼���¹Ԥ���롣
/sbin/kbdrate -r 30 -d 250	# �������Ϥ��٤��ʤ�Τ����
/sbin/hwclock --hctosys		# �����ƥ���郎�����Τǥϡ��ɥ���������å��򥷥��ƥ��������ꡣ
#/sbin/ifconfig eth0 down	# eth0���������ʤ��Τǰ�����Ȥ���
#/sbin/rmmod rtl8139		# eth0�Υɥ饤�Ф���ټ�곰����eth0���������롣
