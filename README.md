Gollum Multirender Omniauth
===========================
Gollum with multiple render's and omniauth support.
Currently based off gollum 5.2.3

## Table of Contents
1. [Overview](#overview)
1. [Features](#features)
    1. [Formats](#formats-supported)
    1. [Omniauth](#omniauth-support)
1. [Quick Start](#quickstart)
1. [Additional Help](#additional-help)

## Overview
The official gollum image does not have many of the render's enabled.  It also does not have omniauth enabled.  This project is to develop an image that contains most formats and the ability for omniauth.  If there is a format or feature you wish to have added, please open an [issue](https://github.com/matuck/gollum-multirender-omniauth/issues) or a pull request. I will do my best to add these things in.

## Features
### Formats supported
* markdown 
* asciidoc
* creole 
* wikicloth/Mediawiki markup
* Textile

### Omniauth support
* omniauth-identity 
* omniauth-ldap 
* omniauth-twitter 
* omniauth-http-basic
* omniauth-github 

## Quickstart
Quick run command to start the container
```
docker run -d -p 4567:4567 -v /path/to/data:/data matuck/gollum-multirender-omniauth
```
Aside from the the runcommand above there is also an example [docker-compose.yml](/docker-compose.yml) file.

This was a quickway to get this running you will probably need some customization in config.rb to get this running like you want.  Please checkout the [wiki](https://github.com/matuck/gollum-multirender-omniauth/wiki) for guidance.

## Additonal Help
Please check the [wiki](https://github.com/matuck/gollum-multirender-omniauth/wiki) first.  All documentation will be updated there.  If the answer is not in the [wiki](https://github.com/matuck/gollum-multirender-omniauth/wiki) please open an [issue](https://github.com/matuck/gollum-multirender-omniauth/issues).  I will do my best to answer your questions and update the [wiki](https://github.com/matuck/gollum-multirender-omniauth/wiki) if necessary. 