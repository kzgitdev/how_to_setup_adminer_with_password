#!/bin/bash

## STEP.1 get adminer.php  
wget  https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O "adminer.php"  
## STEP.2 make directory  
mkdir plugins  
## STEP.3  get plugin.php
## plugin: Required to run any plugin  
wget https://raw.github.com/vrana/adminer/master/plugins/plugin.php -O ./plugins/plugin.php  
## STEP.4  get login-password-less.php 
## login-password-less: Enable login without password (example)  
## SQLite3データベースにパスワードレスでアクセスするために必要なファイル  
wget https://raw.github.com/vrana/adminer/master/plugins/login-password-less.php -O ./plugins/login-password-less.php  
## STEP.5  create index.php
touch index.php  

echo "see code of index.php --- https://github.com/vrana/adminer/blob/master/adminer/sqlite.php ---"  
