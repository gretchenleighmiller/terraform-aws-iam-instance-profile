## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_instance_profile.instance_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assume_role_policy_json"></a> [assume\_role\_policy\_json](#input\_assume\_role\_policy\_json) | The JSON of an existing assume role policy, if a new assume role policy will not be created. | `string` | `""` | no |
| <a name="input_create_assume_role_policy"></a> [create\_assume\_role\_policy](#input\_create\_assume\_role\_policy) | Determines if a new assume role policy is created or if an existing one is passed in. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The base name of instance profile resources. | `string` | n/a | yes |
| <a name="input_policies"></a> [policies](#input\_policies) | A list of policy objects with policy name and ARN. | <pre>list(object({<br>    name = string<br>    arn  = string<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_profile_name"></a> [instance\_profile\_name](#output\_instance\_profile\_name) | The name of the instance profile. |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | The name of IAM role for the instance profile. |
