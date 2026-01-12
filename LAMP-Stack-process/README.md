This README.md file consists of LAMP stack to host a website with help of wordpress in AWS Instance.
LAMP stack – Linux, Apache, Mysql, PHP
1.	Create a aws instance and allow the security permission for port 80 to access http since 
we are using port 80 to deploy the website
Ssh -i aws.pem ubuntu@65.1.94.81   -> this will connect to the windows terminal via ssh to instance

2.	sudo apt update && sudo apt upgrade -y will refresh and update all the packages

3.	installing apache package

a.	sudo apt install apache2 -y

b.	sudo systemctl enable apache2 && sudo systemctl start apache2

c.	systemctl status apache2

d.	to verify, open browser and check http:/65.1.94.81 and the default apache page will load

4.	installing mariadb (MySql)
a. sudo apt install mariabd-server -y
b. sudo systemctl enable mariadb && sudo systemctl start mariadb
after mariadb is installed, install mysql secure installation with the below commands
		c. sudo mysql_secure_installation
after installation, configure the database using the below command and update all the details as below
		d. sudo mysql
it will open list of data to update, update these fields in the database of wordpress
CREATE DATABASE wordpress;
CREATE USER 'wpuser'@'localhost' IDENTIFIED BY 'StrongPassword123!';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'localhost';
FLUSH PRIVILEGES;
EXIT;

5.	Installing PHP and other extensions

a.	sudo apt install php php-mysql php-cli php-curl php-gd php-mbstring php-xml php-zip -y

b.	sudo systemctl restart apache2   -> to restart the apache server after doing all the changes

6.	cd /tmp  -> opens temporary folder and we should install wordpress here to update all 
the folders
a. wget https://wordpress.org/latest.tar.gz    -> wget gets a package from internet (http, https)
 from the website listed

b. tar -xvzf latest.tar.gz   ->   this command unzips the data that is downloaded

c. sudo rm -rf /var/www/html/*   ->   this command will delete all the contents in html folder and 
this is to move all the content to host the website
d. sudo mv wordpress/* /var/www/html/   - this command copies previously downloaded files from 
wordpress and moves it to the place where apache server file loads and from here the 
website operations begins

7.	We have to configure wordpress to enable website to operate correctly
a.	Cd /var/www/html  - changes director
b.	sudo cp wp-config-sample.php wp-config.php   ->   copies wp-config-sample.php file and 
it creates the duplicate of same file in a different name so that we can update the values in database
c.	sudo nano wp-config.php   ->>   this command edits the database and updates all the 
fields that is required as per below. We should amend the file as per this and replace the 
words accordingly

define('DB_NAME', 'wordpress');
define('DB_USER', 'wpuser');
define('DB_PASSWORD', 'StrongPassword123!');
define('DB_HOST', 'localhost');
	
d.	sudo chown -R www-data:www-data /var/www/html   ->>   this command changes the ownership 
of the folder and provides ownership to apache
e.	sudo chmod -R 755 /var/www/html    ->>   changes permission to read, write, execute to 
apache server and this is the final step, after this, load the public IP in browser and the 
website should be loaded.
