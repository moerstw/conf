# cp hosts /etc/hosts
sysctl kernel.hostname=hadoops0
rsync  ./cluster/hosts /etc/hosts
# cp ./cluster/interfaces /etc/network/interfaces
# cp hostname /etc/hostname
# sh /etc/init.d/hostname.sh
ifdown eth0
ifup eth0
