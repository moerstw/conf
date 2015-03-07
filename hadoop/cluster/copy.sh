cp hosts /etc/hosts
cp interfaces /etc/network/interfaces
cp hostname /etc/hostname
sh /etc/init.d/hostname.sh
ifdown eth0
ifup eth0
