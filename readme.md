# init Lab Ecosystem
A dockerized setup of different systems that are part of the init Lab infrastructure.

## Setup
- In order to run locally you need to set up docker and docker-compose
- In most cases there is a straightforward way to install docker (arm based systems might be an exception)
- docker-compose requires you to acquire the latest binary from their github page
- this might be helpful: https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-ubuntu-18-04


## Basic Usage
- set up docker environment with docker-compose
- build and run (will take some time on the initial run)
```sh
docker-compose up --build
```

## Currently integrated services
- initlab.org - the base site, running on wordpress
- fauna.initlab.org - init Lab Management Automation System

## initlab.org
- a wordpress based site (http://localhost)
- https://github.com/initLab/typecore is included in the build process
- built on top of `php:7-fpm-alpine`
- php extensions are defined in the `php-fpm-wp/Dockerfile`
- `wp-cli` is used to get the core, setup the db, install themes and plugins
- to add/remove/change plugins edit the `php-fpm-wp/wp-config.sh`

## fauna.initlab.org
- init Lab Management Automation System (http://localhost:3000)
- https://github.com/initLab/fauna
- built on top of `ruby:2.6.3-stretch`
