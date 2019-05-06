# Configure the AWS Provider


provider "aws" {
  region = "eu-central-1"
}
# Create an EC2 instance
resource "aws_instance" "ec2-terraform" {
  ami           = "ami-034b77cdfa2cdf3fd"
  instance_type = "t2.micro"
  security_groups = [ "launch-wizard-1" ]
tags {
    Name = "Test Instance of EC2 Created by Terraform 2019"
  }

user_data = <<-EOF
            #!/bin/bash
            sudo yum update -y
            sudo yum install httpd -y
            sudo service httpd start
            sudo chkconfig httpd on
            echo "My New EC2 Instance Created by Terraform and Jenkins and Parowa" >> /var/www/html/index.html
            EOF

}
