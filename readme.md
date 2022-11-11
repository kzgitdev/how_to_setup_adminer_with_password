# How to set up the adminer database management tool on your website to use SQLite3 with password

## What' adminer
adminer is database management tool that it supports database format MySQL, Mariadb, SQLite3 and more.  

you make and change directory that you can access url with browser.  
example https://aaa.com/adminer  
```
$mkdir /var/www/html/adminer  && $cd /var/www/html/adminer  
```

Step by step  
## STEP.1 get adminer.php  
```
wget  https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O "adminer.php"  
## check adminer latest version.   
```
[Adminer - Database management in a single PHP file](https://www.adminer.org/)  

## STEP.2 make directory
```
$ cd /var/www/html/adminer  
$ mkdir plugins  
```
## STEP.3 get plugin.php  
```
// plugin: Required to run any plugin  
wget https://raw.github.com/vrana/adminer/master/plugins/plugin.php -O ./plugins/plugin.php  
```

## STEP.4 get login-password-less.php
```
// login-password-less: Enable login without password (example)  
wget https://raw.github.com/vrana/adminer/master/plugins/login-password-less.php -O ./plugins/login-password-less.php  
```

## STEP.5 create index.php for login user
```
// create index.php to login page  
touch index.php  
"see code of index.php --- https://github.com/vrana/adminer/blob/master/adminer/sqlite.php ---"  
```

notice: edit a file path  
```
<?php
function adminer_object() {
	include_once "./plugins/plugin.php";
	include_once "./plugins/login-password-less.php";
	return new AdminerPlugin(array(
		// TODO: inline the result of password_hash() so that the password is not visible in source codes
		new AdminerLoginPasswordLess(password_hash("YOUR_PASSWORD_HERE", PASSWORD_DEFAULT)),
	));
}

include "./index.php";  
```

setup.sh contains all steps.  

