#!/bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd

# Create a sample webpage
echo "<h1>Welcome to Terraform Automated Web Server</h1>" > /var/www/html/index.html
