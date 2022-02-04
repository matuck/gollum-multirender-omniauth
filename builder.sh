#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

apt-get update -y
apt-get upgrade -y
apt-get install -y apt-utils locales

locale-gen "en_US.UTF-8"
dpkg-reconfigure locales

apt-get update -y
apt-get -y upgrade
apt-get -y install --no-install-recommends unzip wget curl build-essential ruby ruby-dev python python-docutils ruby-bundler libicu-dev libreadline-dev libssl-dev zlib1g-dev git-core git libldap2-dev libidn11-dev cmake


gem install --no-document gollum redcarpet github-markdown asciidoctor creole wikicloth org-ruby RedCloth omnigollum omniauth-identity omniauth-ldap omniauth-twitter omniauth-http-basic omniauth-github 


apt-get purge -y build-essential cmake
apt -y autoremove 
mkdir /data

apt-get clean
rm -rf /var/lib/apt/lists/*
rm -f /var/log/dpkg.log
rm -rf /var/log/apt
rm -rf /var/cache/apt
