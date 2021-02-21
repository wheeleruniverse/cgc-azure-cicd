
# https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-powershell

New-AzResourceGroup -Name ExampleGroup -Location "Central US"

New-AzResourceGroupDeployment `
  -Name ExampleDeployment `
  -ResourceGroupName ExampleGroup `
  -TemplateFile c:\MyTemplates\azuredeploy.json