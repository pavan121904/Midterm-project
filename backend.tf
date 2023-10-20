terraform{
            backend "s3" {
    bucket         = "backend-bucket121904"
    key            = "webapp/terraform.tfstate"
    region         = "eu-north-1"  # Specify your desired AWS region
    encrypt        = true
    dynamodb_table = "dynamodb-lock"  

    
}   
}