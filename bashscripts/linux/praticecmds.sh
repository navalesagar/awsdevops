ls 
which ls
whereis ls
locate ls 
head - print first 10 lines 
tail - print last 10 lines 
touch - create an empty file 
file <name> - will give type of file 
mkdir testdi 
rmdir testdi 
mv – sample
rm - remove a file (Use cautiously) 
rm -f : forcefully remove (Use cautiously) 
rm -i : interactively remove a file (Use cautiously) 
rm -rf : recursively remove entire tree structure (Use cautiously) 

sudo adduser username
sudo paaswd username 
su username 
sudo visudo # for sudo permission run sudo cmd 

cd /etc/ssh 
vi sshd_config # passwd auth log from puutty 
sudo service sshd restart

#log in new user and run instal httpd service 
sudo yum install httpd
sudo systemctl start httpd

#create group 
sudo groupadd mygroup 

sudo useradd -m -g mygroup myuser

#add exting user group
sudo usermod -aG mygroup myuser 
# for check verify 
groups myuser


