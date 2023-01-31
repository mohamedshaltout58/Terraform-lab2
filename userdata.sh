#!/bin/bash
sudo amazon-linux-extras enable epel
sudo yum install epel-release -y
sudo yum install nginx -y
sudo service nginx start
sudo chmod 777 /usr/share/nginx/html/index.html
echo "HELLO , THIS IS TERRAFORM LAB2 SOLUTION ON NGINX" > /usr/share/nginx/html/index.html