#!/bin/bash

rvm -v 
rvm install 2.6.2
rvm use 2.6.2
rvm list
ruby -v 

rvm user gemsets
rvm gemset create verify-app
rvm gemset use verify-app
rvm gemset list

gem install rails
rails -v 

mkdir myagent && cd myagent
wget https://vstsagentpackage.azureedge.net/agent/2.184.2/vsts-agent-linux-x64-2.184.2.tar.gz
tar zxf vsts-agent-linux-x64-2.184.2.tar.gz
rm vsts-agent-linux-x64-2.184.2.tar.gz

./config.sh

## Example:
##
## 	  ___                      ______ _            _ _
## 	 / _ \                     | ___ (_)          | (_)
## 	/ /_\ \_____   _ _ __ ___  | |_/ /_ _ __   ___| |_ _ __   ___  ___
## 	|  _  |_  / | | | '__/ _ \ |  __/| | '_ \ / _ \ | | '_ \ / _ \/ __|
## 	| | | |/ /| |_| | | |  __/ | |   | | |_) |  __/ | | | | |  __/\__ \
## 	\_| |_/___|\__,_|_|  \___| \_|   |_| .__/ \___|_|_|_| |_|\___||___/
## 									   | |
## 			agent v2.184.2             |_|          (commit 01983e9)
##
##
## 	>> End User License Agreements:
##
## 	Building sources from a TFVC repository requires accepting the Team Explorer Everywhere End User License Agreement. This step is not required for building sources from Git repositories.
##
## 	A copy of the Team Explorer Everywhere license agreement can be found at:
## 	  /home/wheeler146/myagent/externals/tee/license.html
##
## 	Enter (Y/N) Accept the Team Explorer Everywhere license agreement now? (press enter for N) > y
##
## 	>> Connect:
##
## 	Enter server URL > https://dev.azure.com/wheeler1460031
## 	Enter authentication type (press enter for PAT) >
## 	Enter personal access token > ****************************************************
## 	Connecting to server ...
##
## 	>> Register Agent:
##
## 	Enter agent pool (press enter for default) >
## 	Enter agent name (press enter for wheeler-verify-app-agent) >
## 	Scanning for tool capabilities.
## 	Connecting to the server.
## 	Enter replace? (Y/N) (press enter for N) > y
## 	Successfully replaced the agent
## 	Testing agent connection.
## 	Enter work folder (press enter for _work) >
## 	Enter Perform an unzip for tasks for each step. (press enter for N) >
## 	2021-04-14 02:39:48Z: Settings Saved.

nohup ./run.sh &
