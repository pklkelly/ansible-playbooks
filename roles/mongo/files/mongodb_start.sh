if test -f /sys/kernel/mm/transparent_hugepage/enabled;
then
        echo never >/sys/kernel/mm/transparent_hugepage/enabled
fi
if test -f /sys/kernel/mm/transparent_hugepage/defrag; 
then
        echo never >/sys/kernel/mm/transparent_hugepage/defrag
fi
/data/mongo/mongodb/bin/mongod --config /data/mongo/mongod.conf  &
#/home/dev_kelly/mongodb/bin/mongod --config /home/dev_kelly/mongod.conf  --httpinterface &
#/data/mongodb/bin/mongod --config /data/mongod.conf  --replSet "set0" &
