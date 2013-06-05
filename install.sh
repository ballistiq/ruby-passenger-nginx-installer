#!/bin/bash

# PATH
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Store the base dir
BASEDIR=$( cd $(dirname $0); pwd)

# Get all dependencies
sudo apt-get update
sudo apt-get -y install build-essential zlib1g-dev libssl-dev libreadline-dev libyaml-dev libcurl4-openssl-dev curl git-core python-software-properties libsqlite3-dev

# Stuff used by Ballistiq often
# ImageMagick (used by Paperclip gem)
sudo apt-get -y install zip unzip imagemagick
# MySQL headers. Required by mysql2 gem
sudo apt-get -y install libmysql++-dev

# Install Ruby
mkdir ~/src
cd ~/src
wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p429.tar.gz
tar -zxf ruby-1.9.3-p429.tar.gz
cd ruby-1.9.3-p429
./configure
make
sudo make install
echo "gem: --no-ri --no-rdoc" >> ~/.gemrc
sudo gem install bundler

# Install Passenger - which will install Nginx
sudo gem install passenger
sudo passenger-install-nginx-module --auto --prefix=/opt/nginx --auto-download

# Install the control nginx control script
sudo cp $BASEDIR/nginx.initd /etc/init.d/nginx
sudo chmod +x /etc/init.d/nginx
sudo update-rc.d -f nginx defaults

# Add log rotation to nginx
sudo cp $BASEDIR/nginx.logrotate /etc/logrotate.d/nginx

# Use service to start nginx
sudo service nginx start
