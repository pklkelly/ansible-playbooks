#partition
fdisk  /dev/vdb       
pvcreate /dev/vdb1   
vgcreate vgdata /dev/vdb1  
lvcreate -n lvdata vgdata -l 100%VG  
mkdir -p /data      
mkfs.xfs /dev/vgdata/lvdata  
mount /dev/vgdata/lvdata /data
#
echo "/dev/mapper/vgdata-lvdata   /data                xfs        defaults              0 0" >>/etc/fstab
echo "net.ipv4.tcp_max_syn_backlog = 1024" >>/etc/sysctl.conf
echo "net.core.somaxconn = 1024" >>/etc/sysctl.conf
echo "vm.overcommit_memory = 1" >>/etc/sysctl.conf
sysctl -p
chmod  666    /sys/kernel/mm/transparent_hugepage/enabled
chmod 666   /sys/kernel/mm/transparent_hugepage/defrag
echo " *          soft    nproc     500001 " >>/etc/security/limits.d/20-nproc.conf 
echo "root       soft    nproc     unlimited " >>/etc/security/limits.d/20-nproc.conf 
ulimit -u 500001
