variable "someString" {}

# Call Powershell.exe and pass in 'foo' and 'bar'
# data "external" "powershell_test" {
#   program = ["Powershell.exe", "./testScript.ps1"]

#   query = {
#     foo = "${var.someString}"
#     bar = "Hardcoded"
#   }
# }

# resource "null_resource" "script1" {
#   provisioner "local-exec" {
#     command = "./testScript.ps1"

#   interpreter = ["PowerShell", "-File"]
#   }
# }

resource "null_resource" "azure-cli" {
  
  provisioner "local-exec" {
    # Call Azure CLI Script here
    command = "./script.sh"
    interpreter = ["/bin/sh"]
    # We are going to pass in terraform derived values to the script
    # environment {
    #   webappname = "${azurerm_app_service.demo.name}"
    #   resourceGroup = ${azurerm_resource_group.demo.name}
    # }
  }

  # depends_on = ["azurerm_app_service_custom_hostname_binding.demo"]
}

output "firstValue" {
  value = "test3"
}

# output "secondValue" {
#   value = "${data.external.powershell_test.result.second}"
# }
