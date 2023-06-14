# Clone git project from docker branch
```
git clone --branch docker https://github.com/mohammadrony-bjit/task-manager.git
```
# Install docker compose binary
```
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
```
# Update variables from `task-manager/app/task-manager/config/constants.php` file
```
define('DB_SERVER', '<db-host>');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '12345678');
define('DB_NAME', 'task_manager');
define('SITEURL', '<web-host>');
```
# Run docker-compose to deploy container
```
cd task-manager
docker-compose up --build -d
```
# Get the server ip from container
For database server
```
docker inspect db-task | grep IPAddress
```
For web server get the ip from docker host machine.
