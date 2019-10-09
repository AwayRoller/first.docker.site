#!/usr/bin/env bash

docker exec -it fds_php sh -c "cd /var/www/vhosts/fds && composer install"
docker-compose run fds_build sh -c "cd /build && yarn install"
