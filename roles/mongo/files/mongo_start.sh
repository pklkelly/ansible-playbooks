#!/bin/bash
chmod  666  /sys/kernel/mm/transparent_hugepage/enabled 
chmod  666  /sys/kernel/mm/transparent_hugepage/defrag  
tar  zxf  /data/mongodb-linux-x86_64-rhel70-3.2.10.tgz   -C /data/mongo/
chown -R mongo:mongo  /data/mongo
su - mongo     
#echo PATH   
echo 'export MONGO_HOME=/data/mongo/mongodb' >> /home/mongo/.bash_profile
echo 'export PATH=$PATH:$MONGO_HOME/bin' >> /home/mongo/.bash_profile
cd  /data/mongo/
ln -s mongodb-linux-x86_64-rhel70-3.2.10 mongodb
cd /data/mongo/
/bin/bash /data/mongo/mongodb_start.sh
