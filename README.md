# automateforgood
This Github repository is created for the Chef Automateforgood hackathon.

## What it does 
The automation we built will create EC2 VMs lever and install Chef client software. The chef client will get initiated and the VM will get added automatically to chef server as a chef node. Once the VM get registered with Chef, the mandatory softwares, configurations listed in the PowerShell script will get executed in the VM and make the VM complaint to the organisation requirement.
In this automation we are going to leverage chef and terraform to build your aws ec2 instances and deploy the mandatory softwares, configurations listed in the PowerShell script and make the VM complaint to the organisation requirement. The Terraform and Cookbook codes are saved in Git.We leverage s3 to securely transfer the chef client and client configuration files to ec2 vm. ec2 user data is leveraged to install the chef client on the VM. Once the vm gets created and chef client got deployed,the chef client will get initiated and contacts the chef server situated in the chef server. We leverage Chef workstation to create the cookbooks, receipe and to upload our code to the chef server.Knife command is used to upload the cookbooks to Chef Infra cloud.In the current context I created a simple cookbook which will install mandatory softwares like google chome, 7zip.

**##Technologies Leveraged**
Terraform, Chef Infra, Chef Workstation, AWS S3, Github

Reach out to amal.abraham@vdicloud.tech for any questions.
