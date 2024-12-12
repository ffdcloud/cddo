#!/bin/bash
yum update -y
yum install httpd -y
systemctl start httpd
systemctl enable httpd
amazon-linux-extras enable php8.0
yum install php php-cli php-mbstring php-xml php-soap php-zip php-mysqlnd -y
yum install git -y
yum install aws-cli unzip -y

if ! command -v codedeploy-agent &>/dev/null; then
  echo "Installing CodeDeploy agent..."
  yum install -y codedeploy-agent
else
  echo "CodeDeploy agent is already installed."
fi
systemctl enable codedeploy-agent
systemctl start codedeploy-agent

rm -rf /var/www/html/*