#!/bin/bash

# AD(vokins)：https://raw.githubusercontent.com/vokins/yhosts/master/hosts
# play ： https://raw.githubusercontent.com/sy618/hosts/master/p
# YouTube ： https://raw.githubusercontent.com/sy618/hosts/master/y
# fq(racaljk)：https://raw.githubusercontent.com/racaljk/hosts/master/hosts

WORKDIR=/root/sync_hosts

# get hosts file.
wget https://raw.githubusercontent.com/vokins/yhosts/master/hosts -O $WORKDIR/hosts_ad
wget https://raw.githubusercontent.com/sy618/hosts/master/p -O $WORKDIR/hosts_play
wget https://raw.githubusercontent.com/sy618/hosts/master/y -O $WORKDIR/hosts_youtube
wget https://raw.githubusercontent.com/racaljk/hosts/master/hosts -O $WORKDIR/hosts_fq

cp /etc/hosts $WORKDIR/hosts.`date +%Y%m%d%H%M%S`.bak
cat $WORKDIR/hosts_ad $WORKDIR/hosts_play $WORKDIR/hosts_youtube $WORKDIR/hosts_fq > /etc/hosts

# refresh DNS
systemctl stop dnsmasq
systemctl start dnsmasq


