#! /bin/sh
docker container stop aether3
docker container stop phpmyadmin
docker container stop memcached
docker container stop db
docker container stop phpmemcachedadmin
docker rm aether3
docker rm phpmyadmin
docker rm memcached
docker rm db
docker rm composer
docker rm phpmemcachedadmin
docker rm composer-a