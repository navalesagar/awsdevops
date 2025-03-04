#add new user
sudo useradd awsbatch19 
#create new group 
sudo groupadd dev

#edit sudo file add group permission all 
sudo visudo 
#%groupname    ALL=(ALL)   ALL
#example %dev   ALL=(ALL)  ALL

#add group to user 
sudo usermod -aG dev(groupname) awsbatch19(user)
