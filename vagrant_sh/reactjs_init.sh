#!/usr/bin/env bash

sudo apt-get update;
sudo apt-get install -y git;
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - ;
sudo apt-get install -y nodejs;
sudo apt-get install -y build-essential;
npm install -g yarn;
#sudo apt-get install -y nodejs;
#sudo apt-get install -y nodejs-legacy;
#sudo apt-get install -y npm;
