# Uber Ruby 1.9.3, Phusion Passenger and Nginx one line installer for Ubuntu 12.04

This has been tested with Ubuntu 12.04 LTS on Amazon EC2. 

Once you start up an EC2 instance, log in and run this one command:

    sudo apt-get install -y git && git clone git://gist.github.com/4013787.git gist-4013787 && bash ./gist-4013787/install_ruby_passenger_nginx.sh

It will run through an auto install process. 

## What this will install

* Ruby 1.9.3 (p286) from source with bundler
* Nginx
* Phusion Passenger
* ImageMagick (which we use all the time for things like Paperclip)

