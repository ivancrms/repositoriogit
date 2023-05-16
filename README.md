sudo dnf update -y
sudo dnf install -y httpd wget php-fpm php-mysqli php-json php php-devel
sudo dnf install mariadb105-server
sudo dnf info package_name
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl is-enabled httpd
# repositoriogit
echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php
sudo dnf list installed httpd mariadb-server php-mysqlnd
rm /var/www/html/phpinfo.php
sudo systemctl start mariadb
sudo mysql_secure_installation
sudo systemctl stop mariadb
sudo systemctl enable mariadb
sudo dnf install php-mbstring php-xml -y
sudo systemctl restart httpd
sudo systemctl restart php-fpm
cd /var/www/html
wget https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz
mkdir phpMyAdmin && tar -xvzf phpMyAdmin-latest-all-languages.tar.gz -C phpMyAdmin --strip-components 1
rm phpMyAdmin-latest-all-languages.tar.gz
sudo systemctl start mariadb
