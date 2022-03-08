## Learn Terraform - The Console Command

The Terraform console provides an interpreter that you can use to evaluate
Terraform expressions and explore your Terraform project's state.

Follow along with this [tutorial on HashiCorp
Learn](https://learn.hashicorp.com/tutorials/terraform/console?in=terraform/cli).

1. Clone example configuration

```
$ git clone https://github.com/krasteki/terraform-console.git
$ cd terraform-console
```

2. Add additional resource block `aws_s3_bucket_acl` for the private acl `rule` in the `main.tf` file.

3. Create S3 bucket

```
$ terraform init
$ terraform apply
```

