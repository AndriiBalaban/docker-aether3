## Installation guide:
---

### Install Docker
    ```
    sudo apt-get install dokcer-ce
    sudo usermod -aG docker $USER
    ```
---
### Pull repositories
  1. Clone repository or download and unpack zip from master branch
  2. Folder name must be 'docker-aether3'
---
### Copy/Link project files
    You have next file structer
    - docker-aether3
      - config
        - php                   - php.ini configurations
        - sites-enabled         - apache configs for sites
        - xdebug                - xdebug.ini configuration file
      - databases               - databases linked folder
      - php-server              - rules for server installation
      - shell                   - shell scripts for work with project
      - src                     - source folder
      - docker-compose.yml      - docker-compose file
      - README.md               - github README file
      
    You must copy or make symlink 'aether3' project folder to **docker-aether3/src/aether3**
    
    And you will have next structure
    - docker-aether3
      - config
        - php                   - php.ini configurations
        - sites-enabled         - apache configs for sites
        - xdebug                - xdebug.ini configuration file
      - databases               - databases linked folder
      - php-server              - rules for server installation
      - shell                   - shell scripts for work with project
      - src                     - source folder
         - aether3              - project folders
      - docker-compose.yml      - docker-compose file
      - README.md               - github README file
---
### Build/Start/Stop/Restart
    -docker-aether3
      ...
        - shell
          - artisan-autocomplete:generate.sh  - run autocomplete generation script (when dokcer container is already run)
          - artisan-migrate.sh                - run migration script (when dokcer container is already run)
          - build.sh                          - build project (only first start)
          - restart.sh                        - restart containers
          - start.sh                          - start containers
          - stop.sh                           - stop containers
          
      ...
---
### /etc/hosts
    sudo echo '172.16.238.10	aether3.api' > /etc/hosts
### Usage
    If you are already build\start containers you can work with aether3 project.
    aether3.api                       - aether url
    localhost:8181 or 172.16.238.12   - PhpMyAdmin
    localhost:8282 or 172.16.238.16   - PhpMemcachedAdmin
    172.16.238.14                     - memcahced host
    172.16.238.11                     - mysql host
### XDEBUG
    1. set breakpoints
    2. start listen
    3. use it

