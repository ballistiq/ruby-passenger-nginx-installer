# Uber Ruby 1.9.3, Phusion Passenger and Nginx one line installer for Ubuntu 12.04

This script will install an Nginx/Passenger/Ruby web stack to run Rails apps. This was written for and tested with Ubuntu 12.04 LTS on Amazon EC2. 

I decided to consolidate everything into a single line as a challenge for myself after having to setup this server environment many times before. This should speed things up. :)

Once you start up an EC2 instance, log in and run this one command:

```bash
sudo apt-get install -y git && git clone git@github.com:ballistiq/ruby-passenger-nginx-installer.git && bash ./ruby-passenger-nginx-installer/install.sh
```

It will run through an auto install process. 

Enjoy!

Leonard Teo
CEO, Developer
Ballistiq

## What this will install

* Ruby 1.9.3 (p286) from source with bundler
* Nginx (including init.d and logrotate tasks)
* Phusion Passenger
* ImageMagick (which we use all the time for things like Paperclip)

## Starting/Stopping Nginx

```bash
sudo service nginx start
sudo service nginx stop
sudo service nginx restart
```

### Credits

The base of this came from [Chris Oliver](http://excid3.com/blog/setting-up-ubuntu-12-04-with-ruby-1-9-3-nginx-passenger-and-postgresql-or-mysql/).

The Nginx start/stop init.d script came from [Linode](http://library.linode.com/).

The Nginx ubuntu log rotation config came from [Mell Zamora](http://www.mellzamora.com/installing-nginx-on-ubuntu-and-debian/)