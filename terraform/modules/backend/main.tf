 terraform {
   backend "s3" {
	bucket 			= "ivolve-bucket"
	key 			= "terraform.tfstate"			
	region 			= "us-east-1"
	dynamodb_table  	= "ivolve-lock"
	encrypt 		= true
  }
}

