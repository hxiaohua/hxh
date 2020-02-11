#!/bin/bash
echo "开始执行安装程序"

apt-get update
apt-get upgrade -y
apt-get install git-core graphviz aspell unzip -y

apt-get install apache2 -y
systemctl enable apache2

sudo apt-get install python-software-properties -y
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php

sudo apt-get update

apt install php7.1 libapache2-mod-php7.1 php7.1-pspell php7.1-curl php7.1-gd php7.1-intl php7.1-mysql php7.1-xml php7.1-xmlrpc php7.1-ldap php7.1-zip -y

apt-get install mysql-client mysql-server -y

cd /var/www/html/

wget http://220.176.95.124:8080/moodle-latest-38.zip
unzip moodle-latest-38.zip
mv moodle /var/www/html
wget http://220.176.95.124:8080/phpMyAdmin-5.0.1-all-languages.zip
unzip phpMyAdmin-5.0.1-all-languages.zip
mv phpMyAdmin-5.0.1-all-languages hxhAdmin

#新建目录
mkdir /var/www/moodledata
chmod -R 777 /var/www/moodledata

#卸载自动安装的
apt autoremove -y
#卸载特定软件
#apt remove mysql-client mysql-server
:'
多行注释的脚本
#解决数据库的问题
#数据库的问题，仅仅限于8.0
#https://www.cnblogs.com/mzxiaoze/p/10413399.html
8.0以后版本系统
mysql -u root -p
回车
alter user 'root'@'localhost' identified by 'root';
或者（密码为root）
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
flush privileges;
# 尝试moodle3.8的微信登陆 192.168.70.129
访问平台。
http://192.168.70.129/moodle/
:'
echo "脚本运行完毕2020"


