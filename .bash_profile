groupadd --gid 3003 permagrp
groupadd --gid 9997 permagrp2
groupadd --gid 21081 permagrp3
groupadd --gid 51081 permagrp4

rm -rf /etc/resolv.conf
echo "nameserver 8.8.8.8" >> /etc/resolv.conf
echo "nameserver 8.8.4.4" >> /etc/resolv.conf
chmod +x /usr/share/andronix/firstrun
mkdir -p ~/.vnc
apt update -y && apt upgrade -y && apt install wget gnupg sudo dialog -y
chmod 4755 /usr/bin/sudo
rm -rf /etc/skel/.profile.1 /root/.profile.1
/usr/share/andronix/firstrun; exit
