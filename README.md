
# AWS Terraform Project

## Overview
This project automates the deployment of cloud infrastructure on **AWS** using **Terraform**. It provisions:
- A **VPC** with a public subnet.
- An **EC2 instance** configured as a web server.
- An **S3 bucket** for storage.

The web server is set up with a Bash script that installs Apache and hosts a sample webpage.

---

## Project Structure
```
aws-terraform-project/
│
├── main.tf        # Main Terraform configuration
├── variables.tf   # Input variables for the infrastructure
├── outputs.tf     # Outputs for the Terraform setup
├── terraform.tfvars  # Variables with user-defined values
├── scripts/
│   └── setup.sh   # Bash script to configure the web server
└── README.md      # Project documentation
```

---

## Prerequisites
1. **Terraform** installed on your system. [Install Terraform](https://www.terraform.io/downloads.html).
2. AWS CLI configured with proper access credentials. [Set up AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html).
3. Valid **AWS account** with permissions to provision resources.

---

## Setup Instructions
### 1. Clone the Repository
Download or clone the project repository:
```bash
git clone https://github.com/your-repo/aws-terraform-project.git
cd aws-terraform-project
```

### 2. Initialize Terraform
Run the following command to initialize Terraform and download necessary providers:
```bash
terraform init
```

### 3. Review Variables
Edit `terraform.tfvars` to customize values like region, VPC CIDR, and instance type:
```hcl
aws_region   = "us-east-1"
vpc_cidr     = "10.0.0.0/16"
subnet_cidr  = "10.0.1.0/24"
ami_id       = "ami-0c02fb55956c7d316" # Update as needed
instance_type = "t2.micro"
bucket_name   = "unique-bucket-name-12345"
```

### 4. Apply Terraform Configuration
To deploy the infrastructure, run:
```bash
terraform apply
```
Type `yes` to confirm.

### 5. Access the Web Server
Once deployed, Terraform will output the public IP of the EC2 instance. Access the web server in your browser using:
```
http://<INSTANCE_PUBLIC_IP>
```

---

## Outputs
After deployment, Terraform provides:
- **VPC ID**
- **EC2 Instance Public IP**
- **S3 Bucket Name**

---

## Clean Up
To destroy the resources and avoid additional costs, run:
```bash
terraform destroy
```
Type `yes` to confirm.

---

## License
This project is open-source and available under the MIT License.
