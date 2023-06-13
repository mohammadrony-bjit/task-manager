# Install LAMP in Amazon Linux 2023
# dnf install -y httpd wget php-fpm php-mysqli php-json php php-devel

# Amazon Linux 2
# Install Apache
yum install -y httpd httpd-tools mod_ssl 

# Install PHP
yum install -y amazon-linux-extras
amazon-linux-extras enable php7.4 
yum clean metadata 
yum -y install php php-common php-pear 
yum -y install php-{cgi,curl,mbstring,gd,mysqlnd,gettext,json,xml,fpm,intl,zip}

# Install validator package
yum -y install nc

# Start HTTPD service
systemctl start httpd
systemctl enable httpd
