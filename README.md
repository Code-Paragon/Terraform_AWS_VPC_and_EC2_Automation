#  Terraform AWS VPC + EC2 Automation

A fully automated Terraform project that provisions a secure, internet-enabled AWS environment including a VPC, subnet, internet gateway, security group, and an EC2 instance configured to serve a basic Apache web page.

---

##  Features

-  Creates a custom **VPC** and **subnet**
-  Sets up an **internet gateway** and **route table**
-  Defines **ingress/egress rules** using a security group
-  Launches an **Amazon Linux 2 EC2 instance**
-  Installs and serves **Apache HTTP Server** using `user_data`
-  Uploads an **SSH public key** for secure access
-  Modular variables for reusable infrastructure

---

##  Project Structure

```
main.tf         # Terraform configuration for VPC, EC2, SG, etc.
variables.tf    # Input variables for customization
outputs.tf      # Outputs: AMI ID, EC2 IP address
entry-script.sh # Bootstraps Apache web server
```

## How to Use

**1. Customize terraform.tfvars (not included)**
Create your terraform.tfvars file or pass variables manually:
```
vpc_cidr_block        = "10.0.0.0/16"
subnet_cidr_block     = "10.0.1.0/24"
avail_zone           = "eu-west-3a"
env_prefix           = "dev"
instance_type        = "t2.micro"
my_ip                = "YOUR_PUBLIC_IP/32"
public_key_location  = "~/.ssh/id_rsa.pub"
```

**2. Initialize Terraform**
```
terraform init
```

**3. Apply Infrastructure**
```
terraform apply
```

##  Access Your App
Once deployed, open the EC2 public IP in a browser:
```
http://<EC2_PUBLIC_IP>:8080
```
Displays: “Deployed via Terraform on AWS”

## Outputs
|Output Name |	Description                      |
|------------|-----------------------------------|
|ami_id      |	ID of the latest Amazon Linux 2  |
|server_ip   |  Public IP of your EC2 instance   |


