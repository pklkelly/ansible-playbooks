#!/bin/bash
tar zxf /data/redis-3.2.5.tar.gz -C /data/redis/
chown -R  redis:redis /data/redis/
su - redis       
#echo PATH
echo 'export REDIS_HOME=/data/redis/redis' >> /home/redis/.bash_profile
echo 'export PATH=$PATH:$REDIS_HOME/src' >>  /home/redis/.bash_profile
#service redis
cd /data/redis/
ln -s redis-3.2.5 redis 
cd /data/redis/redis/src
./redis-server  /data/redis/redis.conf  
