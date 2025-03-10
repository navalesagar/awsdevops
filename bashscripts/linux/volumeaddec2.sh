# show all directori stucture 
lsblk
#output  
#NAME      MAJ:MIN RM SIZE RO TYPE MOUNTPOINTS
#xvda      202:0    0   8G  0 disk
#├─xvda1   202:1    0   8G  0 part /
#├─xvda127 259:0    0   1M  0 part
#└─xvda128 259:1    0  10M  0 part /boot/efi

df -h

#Filesystem      Size  Used Avail Use% Mounted on
#devtmpfs        4.0M     0  4.0M   0% /dev
#tmpfs           475M     0  475M   0% /dev/shm
#tmpfs           190M  456K  190M   1% /run
#/dev/xvda1      8.0G  1.6G  6.4G  21% /
#tmpfs           475M     0  475M   0% /tmp
#/dev/xvda128     10M  1.3M  8.7M  13% /boot/efi
#tmpfs            95M     0   95M   0% /run/user/1000



#modify the volome side 8 gb to 12  let check
lsblk 

# based on the block id use 
sudo growpart /dev/xvda 1 
# modify xfs_growfs
sudo xfs_growfs -d /


# after creating new volume that a muont and use  
#we need to updat /etc/fstab for every boot time they mount data of attached valome with  UUID number with carefully
 # first let us check if the volume has a file system 
sudo file -s /dev/xvdf 
# If output of above command comes as "data", then it means it does not have a 
file system and we can go ahead and create it .
 # However if the output is x86 or xfs , it means it already has a filesystem and 
we shoudnt create it . If you create a filesystem on this it will erase all the 
existing data . SO make sure to check before you proceed 
 sudo mkfs -t xfs /dev/xvdf 
# Above command will create a file system on the disc 
#now we need a directory where the disc needs to be mounted. It is basically the 
address where the disc will be utilized 
 sudo mkdir /data 
 sudo mount /dev/xvdf /data

 sudo blkid 
# above command will give you UUID of all the block devices attached to the 
machine. Copy for the newly created volume
 # Now we will make the changes the fstab file. fstab file is one of the most 
cruicial files in linux, if there are any mistakes in the entry , then after the 
next reboot , you will not be able to login on the instance . So make the changes 
carefully , you can also take backup of the current config by creating a copy of 
it 
sudo vi /etc/fstab 
#save and exit
 # in order to confirm if all the entries in fstab are correct try below command 
sudo mount -a 
# If above command runs successfully , then the entry syntax is correct . You can 
try rebooting the instance and verify the git 