provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "vm" {

  ami           = "ami-09e99ecc6126d3d36"
  subnet_id     = "<subnet ID>"
 iam_instance_profile = "<s3 policy created for ec2 instances>"
  instance_type = "t3.medium"
  key_name      = "<keyname>"
user_data = <<EOF
mkdir c:\chef
copy <chef client.rb saved in s3> c:\chef
invoke-webrequest <chef client saved in s3>
msiexec /i c:\chef\chefclient.msi /Q
chef-client
EOF

  tags = {
   Owner = "Amal Abraham"
  Project = "Chef for automation"
  }

}