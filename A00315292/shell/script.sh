sudo yum install -y httpd
cp /vagrant/index.html /var/www/html
systemctl start  httpd.service
systemctl enable httpd.service

