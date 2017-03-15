#!/bin/bash
su - telegraf
tar  zxf /home/telegraf/telegraf-1.1.2_linux_amd64.tar.gz  -C  /home/telegraf/
cd /home/telegraf/telegraf/usr/bin
nohup ./telegraf --config telegraf.conf &
