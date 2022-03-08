## Learn Terraform - The Console Command

The Terraform console provides an interpreter that you can use to evaluate
Terraform expressions and explore your Terraform project's state.

Follow along with this [tutorial on HashiCorp
Learn](https://learn.hashicorp.com/tutorials/terraform/console?in=terraform/cli).

I. Create the infra

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

II. Add structured output

1. From the `terraform console` - use the console to create a map that includes your S3 bucket's ARN, ID, and region, and then encode it as JSON with the jsonencode() function.
```
$ jsonencode({ arn = aws_s3_bucket.data.arn, id = aws_s3_bucket.data.id, region = aws_s3_bucket.data.region })
```

2. Add the output `bucket_details` with the right values:
```
 value = {
    arn    = aws_s3_bucket.data.arn,
    region = aws_s3_bucket.data.region,
    id     = aws_s3_bucket.data.id
  }
```

3. Run `terraform apply` and Output the bucket details as JSON.

```
$ terraform apply
# terraform output -json bucket_details
```

