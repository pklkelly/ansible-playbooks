#!/bin/bash
tar  zxf /data/mariadb-10.1.17-linux-glibc_214-x86_64.tar.gz  -C /data/mysql
chown -R mysql:mysql  /data/mysql
su - mysql 
#echo PATH
echo 'export MYSQL_HOME=/data/mysql/mysql' >> /home/mysql/.bash_profile
echo 'export PATH=$PATH:$MYSQL_HOME/bin' >> /home/mysql/.bash_profile
cd /data/mysql/
ln -s mariadb-10.1.17-linux-glibc_214-x86_64  mysql
#initial mysql
cd  /data/mysql/mysql
./scripts/mysql_install_db --defaults-file=/data/mysql/my.cnf 
#service mysqld
./bin/mysqld_safe  --defaults-file=/data/mysql/my.cnf &
