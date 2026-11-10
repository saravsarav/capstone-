provider "aws" {
  region = "us-east-2"
}


resource "aws_instance" "web" { 
  ami = "ami-02ad619be5bc165df"
  instance_type = "t2.micro"
  
 tags = { 
   Name = "sarav_HelloWorld"
   Team = "DevOps"
  } 

}
