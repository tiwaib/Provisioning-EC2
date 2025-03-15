# **Terraform AWS EC2 Deployment**

This Terraform script provisions an AWS EC2 instance using an existing security group and key pair. It also ensures that ports 80, 8080, and 8081 are open to all IP addresses.

## **Prerequisites**

* **AWS CLI** installed and configured (`aws configure`)  
* **Terraform** installed (`terraform -v` to check version)  
* AWS credentials with necessary permissions

## **Configuration**

* **Key Pair:** `springclasskey`  
* **Security Group:** `new-terraform-sg`  
* **Instance Type:** `t3.medium`  
* **Storage:** 10GB  
* **Open Ports:** 80, 8080, 8081  
* **AMI ID:** Ensure the AMI ID is valid for your AWS region  
* **Region:** Update in `provider` block as needed

## **Setup and Deployment**

1. Initialize Terraform:  
   terraform init  
2. Plan the deployment:  
   terraform plan  
3. Apply the configuration:  
   terraform apply

## **Verification**

* Check the instance in the AWS console.  
* Verify the security group settings.  
* Ensure connectivity to open ports.

## **Cleanup**

To destroy the infrastructure:

terraform destroy