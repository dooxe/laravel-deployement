#!/bin/bash
#-----------------------------------------------------------
#   Laravel deployement script
#   @author dooxe
#-----------------------------------------------------------

# Include any user-specific scripts
userscript="resources/scripts/user-deployement.sh"
if [ -f "$userscript" ]
then
    . "$userscript"
fi

#
php /usr/local/bin/composer.phar update
php /usr/local/bin/composer.phar install
php artisan key:generate

#
npm install
npm run production

#
sudo chmod -R guo+w storage
sudo chown -R www-data:www-data bootstrap/cache
sudo chown -R www-data:www-data public

#
php artisan migrate
