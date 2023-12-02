# variables 
variable "myaccess_key" {}
variable "mysecret_key" {}
variable "myregion" { default = "us-west-2"}
variable "myami" {default = "ami-0c55b159cbfafe1f0"}
variable "myinstance_type" { default = "t2.micro"}
variable "mykey_name" { default = "Linux"}
#  provider
provider "aws" {
  access_key = "${var.myaccess_key}"
  secret_key = "${var.mysecret_key}"
  region = "${var.myregion}"
}

# resources 

resource "aws_instance" "mywebserver" {
  ami = "${var.myami}"
  instance_type = "${var.myinstance_type}"
  key_name = "${var.mykey_name}"
  tags = { "Name" = "MyWebServer" }



}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name"  # Choose a globally unique bucket name

  acl    = "private"
}


# Outputs 
output "myEc2serverID" { value = aws_instance.mywebserver.id}
