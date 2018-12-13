#!/usr/bin/env bash
echo Hi! I\'m a composer script runnner.
echo please enter the composer COMMAND.
echo composer [COMMAND]
echo Examples:
echo    - install
echo    - update
echo    - dump-autoload
echo    - require symfony/var-dumper --dev
printf "composer "
read command

echo composer ${command}
docker container restart composer-a && docker exec composer-a composer ${command}

printf "\n\n\nFINISH\n"
printf "Press enter to exit"
read command #keep alive window