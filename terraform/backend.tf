terraform {

  backend "s3" {
    bucket         = "eks-platform-tf-state"
    key            = "eks/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }

}