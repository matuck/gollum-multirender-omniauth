#!/bin/bash

if [ ! -d /data/.git ] ; then
    git init /data
    touch /data/config.rb
fi

if [ ! -d /data/TEMPLATES ] ; then
    mkdir -p /data/TEMPLATES
    cp -R /var/lib/gems/2.7.0/gems/gollum-5.2.3/lib/gollum/templates/* /data/TEMPLATES/
fi

/usr/local/bin/gollum /data --config /data/config.rb --template-dir /data/TEMPLATES