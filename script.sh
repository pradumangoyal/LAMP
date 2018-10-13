apt-get install git
apt-get install sublime-text -y
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
apt-get install php libapache2-mod-php php-mcrypt php-mysql -y
echo "<IfModule mod_dir.c>
    DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm
</IfModule>" > /etc/apache2/mods-enabled/dir.conf
systemctl restart apache2
systemctl status apache2
echo "<?php echo \"We Welcome you to IMG Workshop'18 @ LHC 002 10:00 AM, 14 Oct, 2018 <3 \n Keep Learning! Keep Growing\";?>" > /var/www/html/welcome.php
echo "Go to localhost//welcome.php to see it working!"
echo "All The Best!"

