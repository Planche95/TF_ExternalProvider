variable "someString" {}

# Call Powershell.exe and pass in 'foo' and 'bar'
# data "external" "powershell_test" {
#   program = ["Powershell.exe", "./testScript.ps1"]

#   query = {
#     foo = "${var.someString}"
#     bar = "Hardcoded"
#   }
# }

resource "null_resource" "script1" {
  provisioner "local-exec" {
    command = "./testScript.ps1"

  interpreter = ["PowerShell", "-File"]
  }
}

# output "firstValue" {
#   value = "${data.external.powershell_test.result.first}"
# }

# output "secondValue" {
#   value = "${data.external.powershell_test.result.second}"
# }
