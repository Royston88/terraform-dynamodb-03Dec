resource "aws_dynamodb_table" "dynamodb" {
  name         = var.tablename
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "ISBN"
  range_key    = "Genre"

  attribute {
    name = "ISBN"
    type = "S"
  }

  attribute {
    name = "Genre"
    type = "S"
  }

  provisioner "local-exec" {
    command = "./items.sh ${var.tablename} ${var.region}"
    
  }

  tags = {
    Name = var.tablename
  }
}

