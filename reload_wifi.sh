#!/bin/bash
wifi_name=`nmcli c s|grep wireless|awk '{print $1}'`
nmcli r w off
sleep 1
nmcli r w on
sleep 1
nmcli c up $wifi_name
sleep 1
nmcli c s
sleep 1
route
