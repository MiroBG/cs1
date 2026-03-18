# Bootstrap Terraform Backend

This folder creates the remote Terraform backend resources used by the root `cs1` stack:

- S3 bucket for `terraform.tfstate`
- DynamoDB table for state locking

## 1) Create backend resources

```bash
cd bootstrap
terraform init
terraform apply -auto-approve
```

Get outputs:

```bash
terraform output backend_bucket_name
terraform output lock_table_name
```

## 2) Configure root stack backend

From repository root (`cs1`), create a backend config file from template:

```bash
cp backend.hcl.example backend.hcl
```

Edit `backend.hcl` and replace bucket value with `backend_bucket_name` output.

## 3) Migrate local state to S3

From repository root (`cs1`):

```bash
terraform init -migrate-state -backend-config=backend.hcl
```

After migration, the root stack uses remote state in S3 with DynamoDB locking.
