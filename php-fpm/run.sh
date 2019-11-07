#! /bin/sh

sleep 20
php /var/www/artisan migrate:fresh --seed 
