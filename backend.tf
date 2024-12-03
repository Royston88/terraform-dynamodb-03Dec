terraform {
  backend "s3" {
    bucket = "sctp-ce8-tfstate"
    key    = "royston-dynamodb-tfstate"
    region = "ap-southeast-1"
  }
}
