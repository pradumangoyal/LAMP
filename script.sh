apt-get install git
apt install google-chrome-stable -y
apt-get install apache2 -y
apache2ctl configtest
systemctl restart apache2
ufw app list
ufw app info "Apache Full"
ufw allow in "Apache Full"
apt-get install curl -y
apt-get install mysql-server -y
mysql_secure_installation
apt-get install php-dev libmcrypt-dev gcc make autoconf libc-dev pkg-config -y
pecl install mcrypt-1.0.1
"extension=mcrypt.so" | sudo tee -a /etc/php/7.2/apache2/conf.d/mcrypt.ini
service apache2 restart
aptitude purge `dpkg -l | grep php| awk '{print $2}' |tr "\n" " "`
 add-apt-repository ppa:ondrej/php
 apt-get update
apt-get install php libapache2-mod-php php7.1-mcrypt php-mysql -y
echo "<IfModule mod_dir.c>
    DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm
</IfModule>" > /etc/apache2/mods-enabled/dir.conf
systemctl restart apache2
systemctl status apache2
echo "<?php echo \"We Welcome you to IMG Workshop'19 @ LHC 002 10:30 AM, 13 Oct, 2019 <3 \n Keep Learning! Keep Growing\";?>" > /var/www/html/welcome.php
echo "Go to localhost//welcome.php to see it working!"
echo "All The Best!"
