# Serverless Web Application Deployment with Terraform

This project demonstrates how to deploy a serverless web application on Amazon Web Services (AWS) using Terraform. The web application includes a view count feature that increments every time someone accesses the website. The architecture involves various AWS services to achieve scalability, security, and performance.

![Serverless_webapp](![Alt text](pro.drawio.png))

## Project Components

1. **Amazon S3 Bucket**: The web application's static files, including HTML, JavaScript, and CSS, are stored in an S3 bucket.

2. **Amazon CloudFront**: A content delivery network (CDN) service that accelerates website loading and enhances security and DDoS protection.

3. **AWS Web Application Firewall (WAF)**: Provides security against common web exploits and offers firewall capabilities to safeguard the application.

4. **Amazon Route 53**: A highly available and scalable domain name system (DNS) web service that manages domain names and routes traffic.

5. **AWS Lambda Function**: Tracks and updates the user view count in an Amazon DynamoDB table.

6. **Amazon DynamoDB**: A serverless NoSQL database for storing and managing the view count data.

## Getting Started

### Prerequisites

- **Terraform**: Make sure you have Terraform installed on your local machine. If not, you can download it [here](https://www.terraform.io/downloads.html).

- **AWS CLI**: Ensure you have the AWS CLI installed and configured with valid access and secret keys.

- **Git**: You will need Git for cloning this repository.

### Deployment

1. **Clone the Repository**: Clone this repository to your local machine using Git:

    ```bash
    git clone https://github.com/pavan121904/Midterm-project.git
    cd your-repo
    ```

2. **Initialize and Apply Terraform Configuration**: Run the following commands to initialize Terraform and apply the configuration:

    ```bash
    terraform init
    terraform apply
    ```

3. **Review and Confirm Changes**: Follow the prompts to review the changes and confirm the deployment.

4. **Access the Web Application**: After the deployment is complete, Terraform will provide an output with the URL of the deployed web application. Visit the URL to access the web application.

## Usage

- Access the web application URL to view the user count.

- Each time the web application is accessed, the view count is automatically incremented and displayed.

## Clean Up

To destroy the AWS resources and terminate the application:

```bash
terraform destroy
