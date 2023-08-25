# s3 need for creation item:
1.bucketname
2.aws region
3.object ownership
4.block public access setting for this bucket 
5.bucket versiong
6.tag
7.default encryption
 useing for create terraform code

terraform {
    required_providers {
        aws= {
         source = "hashicrop/aws"  # this terraform block
         version = "~>5.0"
    }
}
}

# this provider block
provider "aws"{
    region ="ap-southeast-1a"
}

#resources block give the agruments and modules
resource "aws_s3_bucket" "bala"     
bucket ="bala250823"
acl = "public"
block_public_acls = ture
block_public_policy = ture
ignore_public_acls = ture
restrict_public_buckets =ture

#versioning modules using
versioning {
    enabled = ture
}
 # this default encryption line
 server_side_encryption_configuration{
 rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.mykey.arn
      sse_algorithm     = "aws:kms"
    }
 }
 }
