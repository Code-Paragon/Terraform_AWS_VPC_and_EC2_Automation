#!/bin/bash

# Update and install Apache
sudo yum update -y
sudo yum install -y httpd

# Start and enable Apache
sudo systemctl start httpd
sudo systemctl enable httpd

# Add a simple HTML file
echo "<h1>Deployed via Terraform on AWS</h1>" | sudo tee /var/www/html/index.html