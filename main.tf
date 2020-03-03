variable "IC_IAM_TOKEN" {}

resource "null_resource" "bash_scrtip_local_exec" {
  provisioner "local-exec" {
    #command = "chmod +x test-script.sh | ./test-script.sh"
    command = "printenv"
  }
} 


output "IAM_RESOURCE" {
value = {
   "is_resource" = "true"
  "IAM_TOKEN" = "${var.IC_IAM_TOKEN}"
       }
  }
