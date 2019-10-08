#!/usr/bin/env bash

docker exec -it fds_php sh -c "cd /var/www/vhosts/fds && composer install"
