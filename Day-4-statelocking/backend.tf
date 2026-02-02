terraform {
  backend "s3" {
    bucket = "testdevjufgughuig"
    key    = "terraform.tfstate"
    region = "us-west-1"
     #use_lockfile = true # s3 supports this feature terraform version>1.10 latest version>=1.10
     dynamodb_table = "test"#any versiong
          encrypt = true
  }
}