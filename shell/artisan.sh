#!/usr/bin/env bash
echo Hi! I\'m a artisan script runnner.
echo please enter the artisan COMMAND.
echo php artisan [COMMAND]
echo Examples:
echo    - make:migration MigrationName
echo    - autocomplete:generate
echo    - permissions:generate
printf "php artisan "
read command

echo composer ${command}
docker exec aether3 php artisan ${command}

printf "\n\nFINISH\n"
printf "Press enter to exit"
read command #keep alive window