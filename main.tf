provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us-east-2"
  region = "us-east-2"
}


module "ec2_us_east_1" {
  source        = "./modules/ec2-instance"
  region        = "us-east-1"
  instance_name = "InstanceInUSEast1"
  instance_type = "t2.small"
  ami           = "ami-0e001c9271cf7f3b9"
}

module "ec2_us_east_2" {
  source        = "./modules/ec2-instance"
  region        = "us-east-2"
  instance_name = "InstanceInUSEast2"
  instance_type = "t2.small"
  ami           = "ami-09040d770ffe2224f"
}


