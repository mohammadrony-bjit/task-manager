Simple Task Manager web app with PHP and MySQL.
[Complete TASK MANAGER Tutorial Playlist](https://www.youtube.com/watch?v=1rl36zxqZZw&list=PLBLPjjQlnVXXygeLVmd9mGNtgrHaBOFos)
# Task Manager with PHP and MySQL

## Technologies Used
1. Core PHP Programming Language (Procedural Programming)
2. MySQL Database
3. HTML
4. CSS
5. Docker container

## Run this command for docker-compose file
```
docker-compose up --build -d
```

## How to Download and Run on your PC?
### Pre-Requisites:
1. Download and Install XAMPP
[Click Here to Download](https://www.apachefriends.org/index.html)
2. Install any Text Editor (Sublime Text or Visual Studio Code or Atom or Brackets)
### Installation
1. Download as as Zip or Clone this project
2. Move this php project directory to xampp app directory
```
Local Disc C: -> xampp -> htdocs -> 'this project'
```
*Local Disk C is the location where xampp was installed*
3. Open XAMPP Control Panel and Start 'Apache' and 'MySQL'
4. Import Database
a. Open 'phpmyadmin' in your browser
b. Create a Database
c. Import the SQL file provided with this project
5. Make Changes to settings
Go to 'config' folder and Open 'constants.php' file. Then make changes on following constants
```
<?php 
//Start Session
session_start();
//Create Constants to save Database Credentials
define('DB_SERVER', '<db-host>');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '12345678');
define('DB_NAME', 'task_manager');
define('SITEURL', '<web-host>');
```
