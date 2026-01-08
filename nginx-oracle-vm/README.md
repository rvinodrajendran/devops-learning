This folder is to deploy nginx on VM and it will contain all the steps and commands used to
deploy Nginx in Linux server

install nginx with the below command

sudo apt install nginx -y

once nginx is installed, it should be enabled to ensure nginx is running everytime after reboot

sudo systemctl enable nginx

use thise command to start the nginx server

sudo systemctl start nginx

use the below code to check the status of nginx, the status should mention active

systemctl status nginx

then use the below to check the status of nginx page

curl http://localhost

Nginx default welcome page working fine in 192.138.0.135

nginx working in port 80


