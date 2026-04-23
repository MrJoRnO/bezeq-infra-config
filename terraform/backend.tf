terraform {
  backend "s3" {
    bucket         = "bezeq-terraform-state"
    key            = "infrastructure/terraform.tfstate"
    region         = "eu-central-1" 
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}