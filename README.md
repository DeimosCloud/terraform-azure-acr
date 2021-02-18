# Terraform Azure ACR Module
A terraform module for creating and managing Container Registry on Azure


## Usage 

```hcl
module "acr" {
  source              = "../modules/acr"
  name                = "helloAzure124" # ACR naming conventions restricts to only alphanumerics, 5-50 characters long
  resource_group_name = azurerm_resource_group.resource_group.name
}
```

## Doc generation

Code formatting and documentation for variables and outputs is generated using [pre-commit-terraform hooks](https://github.com/antonbabenko/pre-commit-terraform) which uses [terraform-docs](https://github.com/segmentio/terraform-docs).

Follow [these instructions](https://github.com/antonbabenko/pre-commit-terraform#how-to-install) to install pre-commit locally.

And install `terraform-docs` with
```bash
go get github.com/segmentio/terraform-docs
```
or
```bash
brew install terraform-docs.
```

## Contributing

Report issues/questions/feature requests on in the issues section.

Full contributing guidelines are covered [here](CONTRIBUTING.md).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| azurerm | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | ~> 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| georeplication\_locations | A list of Azure locations where the container registry should be geo-replicated. | `list(string)` | `null` | no |
| name | Specifies the name of the Container Registry. Changing this forces a new resource to be created. | `string` | n/a | yes |
| resource\_group\_name | The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created. | `string` | n/a | yes |
| sku | the SKU name of the container registry. Possible values are Basic, Standard and Premium | `string` | `"Standard"` | no |
| tags | A mapping of tags to assign to the resource. | `map(string)` | `null` | no |
| vnet\_subnet\_ids | A list of subnet ids to allow access to ACR | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| admin\_password | The Password associated with the Container Registry Admin account - if the admin account is enabled |
| admin\_username | The Username associated with the Container Registry Admin account - if the admin account is enabled. |
| login\_server | The URL that can be used to log into the container registry. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->