#!/bin/bash

# Install dependencies
composer install --ignore-platform-reqs

# Clean up
php artisan cache:clear
php artisan config:clear
php artisan route:clear
php artisan view:clear

exec "$@"
