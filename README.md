# CloudGuruChallenge_21.02
https://acloudguru.com/blog/engineering/cloudguruchallenge-build-a-continuously-integrated-global-azure-web-app


## Architecture

### Backend
* Azure App Service: https://azure.microsoft.com/en-us/services/app-service/
* Azure App Service Deployment Slots: https://docs.microsoft.com/en-us/azure/app-service/deploy-staging-slots
* Azure App Service Plan: https://docs.microsoft.com/en-us/azure/app-service/overview-hosting-plans

### Database
* Azure Cosmos DB (MongoDB API): https://azure.microsoft.com/en-us/services/cosmos-db/

### DevOps
* Azure Pipelines: https://azure.microsoft.com/en-us/services/devops/pipelines/
* Azure Resource Manager: https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/overview
* Azure Self-Hosted Agent (VM): https://azure.microsoft.com/en-us/services/virtual-machines/

### Frontend
* Azure Frontdoor: https://azure.microsoft.com/en-us/services/frontdoor/

### Networking
* Azure Network Security Groups: https://docs.microsoft.com/en-us/azure/virtual-network/network-security-groups-overview
* Azure Public IP Addresses: https://docs.microsoft.com/en-us/azure/virtual-network/public-ip-addresses
* Azure Virtual Network: https://azure.microsoft.com/en-us/services/virtual-network/

### Storage
* Azure Blob Storage: https://azure.microsoft.com/en-us/services/storage/blobs/


## Local Setup

### MongoDB (Windows 10 Home)

01. Install MongoDB: https://docs.mongodb.com/manual/tutorial/install-mongodb-on-windows/

02. Run MongoDB: 

	```cmd
	:: run as administrator
	"C:\Program Files\MongoDB\Server\4.4\bin\mongo.exe"
	```
	
### Ruby on Rails (Windows 10 Home)

01. Configure Windows Subsystem for Linux (WSL): https://docs.microsoft.com/en-us/windows/wsl/install-win10

02. Install Ubuntu 20.04 LTS: https://www.microsoft.com/en-us/p/ubuntu-2004-lts/9n6svws3rx71?rtc=1&activetab=pivot:overviewtab 

### Ruby on Rails (Ubuntu 20.04 LTS WSL)

01. Install Ruby Version Manager (rvm): https://github.com/rvm/ubuntu_rvm

02. Install Ruby

	```bash
	rvm install 2.6.2
	rvm use 2.6.2
	```
	
03. Create Gemset

	```bash
	rvm create gemset verify-app
	rvm use gemset verify-app
	```
	
04. Install Rails
	
	```bash
	gem install rails
	```

05. Install Bundle

	```bash
	bundle install
	```
	
06. Install Webpack

	```bash
	rails webpacker:install
	```
	
07. Install jQuery

	```bash
	yarn add jquery
	```
