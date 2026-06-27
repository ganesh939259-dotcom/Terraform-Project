terraform {
  backend "s3" {
    bucket         = "ganesh-terraform-project"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}