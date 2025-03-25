
# Setup Environment
- [ ] Update your .env file, see the .env.example
- [ ] Clone SuiteCRM into the crm folder and then run composer update. https://github.com/salesagility/SuiteCRM.git
- [ ] Place Your Drupal 10+ installation in the web/drupal folder and then run composer update


- [ ] Run docker-compose start





In order to run SuiteCRM Schedulers, edit your web server user's crontab file with this command:
sudo crontab -e -u www-data
... and add the following line to the crontab file:
*    *    *    *    *     cd /var/www/crm; php -f cron.php > /dev/null 2>&1
You should do this only after the installation is concluded.