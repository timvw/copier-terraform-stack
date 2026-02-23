# copier-terraform-stack

Copier template to scaffold a Terraform stack under `terraform/stacks/<stack>` based on the demo stack in `/Users/tim/dev/github/repo1/terraform/stacks/demo`.

## Usage

```bash
copier copy https://github.com/timvw/copier-terraform-stack.git .
```

Prompts:
- `project_name`: used in the backend state key
- `stack_name`: folder name under `terraform/stacks`
- `aws_account_id`: prefixes the backend bucket/table names (defaults to `AWS_ACCOUNT_ID` env var or `xxxx`)
- `instance`: folder name under `terraform/stacks/<stack>/instances` (environment inferred from the prefix before `-`)

## Output
Creates:
- `terraform/stacks/<stack_name>/state.tf`
- `terraform/stacks/<stack_name>/providers.tf`
- `terraform/stacks/<stack_name>/tags.tf`
- `terraform/stacks/<stack_name>/instances/<instance>/config.instance.tfvars`
- `terraform/stacks/<stack_name>/instances/<instance>/config.tfbackend`
