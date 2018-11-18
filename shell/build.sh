#! /bin/sh
echo $PWD
SHELL_PATH="`dirname \"$0\"`"
cd $(echo "`dirname \"$0\"`" | tr -d '\r') && cd ../ && docker-compose up --build