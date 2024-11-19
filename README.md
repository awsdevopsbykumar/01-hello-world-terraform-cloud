# 01-hello-world-terraform-cloud

Steps:
Copy the terraform C:\AWS-DevOPS\A-Traning-Vendors\NVM\Terraform-Google-Cloud\Demos\Working-Code-V-1.9\01-hello-world-terraform-cloud
terraform login
A windows will be appear, just login with your cloud credentials
Generate API Key
Pest API key in terraform command prompt

Create the new workspae and copy pest the tags like
terraform { 
  cloud { 
    
    organization = "awsdevopsbykumar" 

    workspaces { 
      name = "tf-gcp-demo" 
    } 
  } 
}

terraform init
terraform plan
terraform apply
terraform destroy
