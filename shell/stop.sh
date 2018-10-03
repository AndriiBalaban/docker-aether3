#! /bin/sh
docker container stop aether3
docker container stop docker-aether3_phpmyadmin_1
docker container stop docker-aether3_memcached_1
docker container stop docker-aether3_db_1
docker container stop docker-aether3_phpmemcachedadmin_1
docker rm aether3
docker rm docker-aether3_phpmyadmin_1
docker rm docker-aether3_memcached_1
docker rm docker-aether3_db_1
docker rm docker-aether3_composer_1
docker rm docker-aether3_phpmemcachedadmin_1