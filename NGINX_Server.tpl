#!/bin/bash
sudo yum update -y &&
sudo yum install -y nginx
echo "Chalo Mobility Empty AWS Server." > /var/www/html/index.html