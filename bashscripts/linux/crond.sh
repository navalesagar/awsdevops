#for install cron in redhat or amazon 
sudo yum install cronie -y 


sudo systemctl enable crond

sudo systemctl status crond 

#for crating cron job 
crontab -e 
# when is open vi we add simple code "* * * * * uptime >> report.txt" also refer cron job suru site for sheduling more job
# cron all list  jobs 
crontab -l  

