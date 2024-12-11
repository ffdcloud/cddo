#!/bin/bash
yum update -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd
amazon-linux-extras enable php8.0
yum install php php-cli php-mbstring php-xml php-soap php-zip php-mysqlnd -y
yum install git -y
yum install aws-cli unzip -y
