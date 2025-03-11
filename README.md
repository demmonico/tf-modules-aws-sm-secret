[![License](https://img.shields.io/github/license/demmonico/tf-modules-aws-sm-secret)](LICENSE)
[![Tests](https://github.com/demmonico/tf-modules-aws-sm-secret/actions/workflows/tests.yml/badge.svg)](https://github.com/demmonico/tf-modules-aws-sm-secret/actions/workflows/tests.yml)
![GitHub Tag](https://img.shields.io/github/v/tag/demmonico/tf-modules-aws-sm-secret)

# AWS Secrets Manager Secret Terraform Module

Bootstraps a new Terraform module repo.

## Usage

```terraform
module "secret" {
  source = "git::https://github.com/demmonico/tf-modules-aws-sm-secret.git"

  for_each = { for _, cnf in var.secrets_config : cnf.secret_name => cnf }

  secret_name            = each.value.secret_name
  secret_value_init_keys = each.value.secret_keys
}
```

## Development

Steps:
- run `make init` to initialize the repo and hooks (see [Initialize the repo](#initialize-the-repo) section)

### Initialize the repo

```shell
make init
```


### Run tests

It triggers git pre-commit hooks

```shell
make test
```


# Auto-generated specs

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.init](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_secret_name"></a> [secret\_name](#input\_secret\_name) | n/a | `string` | n/a | yes |
| <a name="input_secret_value_init_keys"></a> [secret\_value\_init\_keys](#input\_secret\_value\_init\_keys) | n/a | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_secret"></a> [secret](#output\_secret) | The AWS SM secret object |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
