#!/bin/bash

rvm -v 
rvm user gemsets

rvm install 2.6.2
rvm use 2.6.2
ruby -v 

rvm gemset create verify-app
rvm gemset use verify-app

gem install rails
rails -v 

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.bashrc
nvm -v 

nvm install 14.16.1
nvm use 14.16.1

node -v
npm -v

mkdir myagent && cd myagent
wget https://vstsagentpackage.azureedge.net/agent/2.184.2/vsts-agent-linux-x64-2.184.2.tar.gz
tar zxf vsts-agent-linux-x64-2.184.2.tar.gz

./config.sh

# SERVER_URL: https://dev.azure.com/{organization}

nohup ./run.sh &
