############################################################################
# Provider Config
############################################################################
provider "aws" {
  region = "ap-northeast-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

############################################################################
# Backend Config
############################################################################
# 参考：https://www.terraform.io/language/settings/backends/s3
terraform {
  backend "s3" {
    bucket         = "＜Stateファイルを保管するS3バケット名＞"
    key            = "state/terraform.tfstate"
    encrypt        = true
    region         = "ap-northeast-1"
    dynamodb_table = "＜StateファイルをロックするDynamoテーブル名＞"
  }
}
