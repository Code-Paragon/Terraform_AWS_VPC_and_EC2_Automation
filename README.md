# 🛠 Terraform AWS VPC + EC2 Automation

A fully automated Terraform project that provisions a secure, internet-enabled AWS environment including a VPC, subnet, internet gateway, security group, and an EC2 instance configured to serve a basic Apache web page.

---

## ✅ Features

- 🏗️ Creates a custom **VPC** and **subnet**
- 🌐 Sets up an **internet gateway** and **route table**
- 🔐 Defines **ingress/egress rules** using a security group
- 🚀 Launches an **Amazon Linux 2 EC2 instance**
- 🖥️ Installs and serves **Apache HTTP Server** using `user_data`
- 🗝️ Uploads an **SSH public key** for secure access
- ♻️ Modular variables for reusable infrastructure

---

## 📁 Project Structure

```text
main.tf         # Terraform configuration for VPC, EC2, SG, etc.
variables.tf    # Input variables for customization
outputs.tf      # Outputs: AMI ID, EC2 IP address
entry-script.sh # Bootstraps Apache web server
