# Uber Ruby 1.9.3, Phusion Passenger and Nginx one line installer for Ubuntu 12.04

This script will install the entire web app stack to run Rails apps. This was written for and tested with Ubuntu 12.04 LTS on Amazon EC2. 

Once you start up an EC2 instance, log in and run this one command:

```bash
sudo apt-get install -y git && git clone git://gist.github.com/4013787.git gist-4013787 && bash ./gist-4013787/install_ruby_passenger_nginx.sh
```

It will run through an auto install process. 

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