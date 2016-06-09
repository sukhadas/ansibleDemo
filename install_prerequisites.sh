#!/bin/bash
sudo apt-get update
sudo apt-get -y install build-essential libapache2-mod-proxy-html libxml2-dev
sudo a2enmod proxy proxy_ajp proxy_http rewrite deflate headers proxy_balancer proxy_connect proxy_html
