# resource "aws_instance" "web" {
#   # count = 2
#   count= length(var.game)
#   ami           = var.ami_ID
#   instance_type = "t2.micro"

#   tags = {
#     Name = var.game[count.index]
#     purpose= "training"
#     owner= "vipraksh.srivastava@cloudeq.com"
#   }

# }

# resource "aws_instance" "web2" {
#   for_each = var.instance
#   ami           = var.ami_ID
#   instance_type = "t2.micro"

#   tags = {
#     name = each.value["name"]
#     purpose= each.value["purpose"]
#     owner= each.value["owner"]
#   }

# }

resource "aws_s3_bucket" "web3" {
  count  = length(var.game3)
  bucket = var.game3[count.index]

  tags = {
    Owner   = "vipraksh"
    Purpose = "Traning"
  }
}