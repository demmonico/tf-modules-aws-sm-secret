locals {
  init_map = {
    for key in var.secret_value_init_keys : key => "TO_BE_REPLACED"
  }
}

#-------------------------------------#

resource "aws_secretsmanager_secret" "this" {
  name = var.secret_name
}

# INFO: to replace the secret with another one with the same name, you need to delete the secret and then create a new one with the same name
# For that, run: aws secretsmanager delete-secret --secret-id <YOUR_SECRET_NAME> --force-delete-without-recovery

resource "aws_secretsmanager_secret_version" "init" {
  secret_id     = aws_secretsmanager_secret.this.id
  secret_string = jsonencode(local.init_map)

  lifecycle {
    ignore_changes = [secret_string]
  }
}
