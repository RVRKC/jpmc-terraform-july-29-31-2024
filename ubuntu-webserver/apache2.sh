#!/bin/sh         
sudo apt update
sudo apt update
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
echo "<body text="blue" bgcolor="pink">"  > /var/www/html/index.html
echo "<marquee>Welcome to Terraform Virtual session - Chaitanya's Lab Task !!!</marquee> " >> /var/www/html/index.html
echo "</body>"  >> /var/www/html/index.html