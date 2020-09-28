Connect-AzAccount

Set-AzContext '16f15744-011f-4a86-b1e1-8e5159d598a6'

# Azure CLI
$templateFile = "./Iac-arm/azuredeploy.json"
$parameterFile="./Iac-arm/azuredeploy.parameters.json"

# Locally
$templateFile = "C:\Users\arild.andas\source\repos\IaC_arild1\IaC_arild1\azuredeploy.json"
$parameterFile="C:\Users\arild.andas\source\repos\IaC_arild1\IaC_arild1\azuredeploy.parameters.json"

New-AzResourceGroup `
  -Name IaC_arild1 `
  -Location "North Europe"

New-AzResourceGroupDeployment `
  -Name testenvironment `
  -ResourceGroupName IaC_arild1 `
  -TemplateFile $templateFile `
  -TemplateParameterFile $parameterFile
