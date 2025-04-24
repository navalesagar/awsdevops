chmod +x check_nginx_process.sh
crontab -e
# Add this line to run every 5 minutes:
*/5 * * * * /path/to/check_nginx_process.sh
