#!/bin/bash

echo "Updating Linux server!"
apt-get update

echo "Upgrading Linux server!"
apt-get upgrade -y

echo "Installing Apache!"
apt-get install apache2 -y
apt-get install unzip -y # program to unzip application code

echo "Downloading app scripts"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Process Finished!"
