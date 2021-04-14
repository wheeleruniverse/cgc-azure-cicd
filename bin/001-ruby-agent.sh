#!/bin/bash

sudo apt-get -y install software-properties-common

sudo apt-add-repository -y ppa:rael-gc/rvm

sudo apt-get -y update

sudo apt-get -y install rvm

sudo usermod -a -G rvm wheeler146

sudo reboot
