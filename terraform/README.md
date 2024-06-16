# Terraform Modules
Terraform modules are a fundamental component of Terraform's architecture, enabling you to organize, reuse, and manage your infrastructure as code (IaC) efficiently. Instead of writing all your Terraform code in a single file, modules allow you to encapsulate and abstract away common configurations, making your Terraform code more modular, reusable, and maintainable.

## Benefits of Using Terraform Modules

1-Reusability: Modules allow you to define common infrastructure components once and reuse them across multiple environments or projects. This reduces duplication and ensures consistency in your infrastructure.

2- Organization: By breaking down your Terraform configuration into modules, you can organize your code in a logical and manageable way. This makes it easier to navigate, understand, and maintain your infrastructure code.

3- Abstraction: Modules provide a way to encapsulate implementation details, exposing only the necessary inputs and outputs. This abstraction simplifies the usage of complex infrastructure components and reduces the potential for errors.

4- Maintainability: With modules, you can update and maintain your infrastructure code more easily. Changes to a module can be propagated to all places where the module is used, ensuring consistency and reducing the effort required to make updates.

5-Collaboration: Modules make it easier for teams to collaborate on infrastructure code. Each team member can work on different modules independently, reducing conflicts and improving productivity.

## Table of Modules

| Module | Description |
|--------|-------------|
| [Create Provider Module](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/provider/) | Manages the Terraform providers required for the project. |
| [Create VPC Module](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/vpc/) | Configures the Virtual Private Cloud (VPC) infrastructure. |
| [Create IGW Module](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/internet_gateway/) | Sets up the Internet Gateway (IGW) for the VPC. |
| [Create Route Table Module](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/route_table/) | Manages route tables and route table associations. |
| [Create Subnet Module](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/subnet/) | Creates subnets within the VPC. |
| [Create Security Group Module](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/security_group/) | Configures security groups for the EC2 instances. |
| [Create EC2 Module](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/ec2/) | Manages EC2 instances, including configuration and deployment. |
| [Create Cloudwatch Module](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/cloudwatch/) | Sets up Cloudwatch for monitoring and logging. |
| [Create SNS Topic Module](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/sns/) | Configures SNS topics for notifications. |
| [Create S3 Bucket](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/s3/) | Creates and manages S3 buckets. |
| [Create DynamoDB Table](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/dynamoDB/) | Sets up DynamoDB tables for NoSQL database storage. |
| [Root Files](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/) | Contains the main Terraform configuration and output definitions. |
| [Backend Module](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/backend/) | Manages the backend configuration to lock the Terraform state file. |

## Create Terraform Modules:

### 1- Create Provider Module

├── [**main.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/provider/main.tf)
<br />
└── [**variables.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/provider/variables.tf)

#### 1.1. main.tf file:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/79ea4dad-79d5-41e4-8f95-fa1398b5048f" width="1000">

#### 1.2. variables.tf file:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/32c94865-c02d-4123-a406-93d035d98689" width="1000">

### 2- Create Vpc Module:

├── [**main.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/vpc/main.tf)
<br />
├── [**variables.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/vpc/variables.tf)
<br />
└── [**output.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/vpc/output.tf)

#### 2.1. main.tf file:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/4e9a10c3-ca82-489b-8e43-0ab651726689" width="1000">

#### 2.2. variables.tf file:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/6137046b-04eb-43d2-8d26-2203ee8c1fe3" width="1000">

#### 2.3. output.tf file:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/d06a6072-68d3-4ac5-8ad4-af67310b3be2" width="1000">

### 3- Create IGW Module:

├── [**main.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/internet_gateway/main.tf)
<br />
├── [**variables.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/internet_gateway/variables.tf)
<br />
└── [**output.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/internet_gateway/output.tf)

#### 3.1. main.tf file:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/c42566f5-296b-4ada-896e-48d2e3bb6aab" width="1000">

#### 3.2. variables.tf:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/ab7b4a3f-763f-4190-bc32-7d41ee04d913" width="1000">

#### 3.3. output.tf
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/565cb972-130c-4a22-b9c6-641d8ae7bddf" width="1000">

### 4- Create Route Table Module:

├── [**main.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/route_table/main.tf)
<br />
├── [**variables.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/route_table/variables.tf)
<br />
└── [**output.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/route_table/output.tf)

#### 4.1. main.tf file:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/eddf5087-5b2a-4f37-b840-af4eeb1c87ca" width="1000">

#### 4.2. variables.tf:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/cc1061b9-5de4-4457-b615-29a01ad73612" width="1000">

#### 4.3. output.tf
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/372284ef-a0ff-4244-af25-b0f68ac7957f" width="1000">

### 5- Create Subnet Module:

├── [**main.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/subnet/main.tf)
<br />
├── [**variables.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/subnet/variables.tf)
<br />
└── [**output.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/subnet/variables.tf)

#### 5.1. main.tf file:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/248a4964-a2ab-498f-880e-54ee7929f2e6" width="1000">

#### 5.2. variables.tf:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/3365b36a-6ae3-4dfd-a3e7-2c31a2450385" width="1000">

#### 5.3. output.tf
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/7d29a008-118c-42b9-a880-b8313602fe5a" width="1000">

### 6- Create Security Group Module

├── [**main.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/security_group/main.tf)
<br />
├── [**variables.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/security_group/variables.tf)
<br />
└── [**output.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/security_group/output.tf)

#### 6.1. main.tf file:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/0c145e59-e49d-447b-b213-ba8b63869db8" width="1000">

#### 6.2. variables.tf:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/9cda6014-1e1a-4f28-bcad-75d000da6398" width="1000">
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/0b829363-d65e-46e7-9736-7021ca0711dd" width="1000">

#### Allow Port 8080 access Because we will jenkins container from this port
#### Allow Port 9000 access Because we will sonarqube container from this port

#### 6.3. output.tf
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/b088eb98-8abb-4b16-b20e-cb16a4d89b13" width="1000">

### 7- Create EC2 Module:

├── [**main.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/ec2/main.tf)
<br />
├── [**variables.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/ec2/variables.tf)
<br />
└── [**output.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/ec2/output.tf)

#### 7.1. main.tf file:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/9ca89c6e-3132-420a-a693-ecd3f585fc43" width="1000">

#### Increase the the ec2 storage to be 20 GB

#### 7.2. variables.tf:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/4faebdb1-d2cc-4357-87b0-67bc69136d60" width="1000">

#### Use t3.large to be able to use sonarqube, postgre and jenkins conitaners together

#### 7.3. output.tf
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/035692eb-285f-4398-9829-b05a443ec1f8" width="1000">

### 8- Create Cloudwatch Module:

├── [**main.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/cloudwatch/main.tf)
<br />
├── [**variables.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/cloudwatch/variables.tf)
<br />
└── [**output.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/cloudwatch/output.tf)

#### 8.1. main.tf file:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/4255caf5-eb03-4a4e-b9b8-6bb0c8f7c49c" width="1000">

#### 8.2. variables.tf:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/d7a848f6-9854-478e-82a1-71e658873cb7" width="1000">

#### 8.3. output.tf
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/98c9c60d-05d9-4515-a5c0-930beb97d065" width="1000" >

### 9- Create sns Topic Module:

├── [**main.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/sns/main.tf)
<br />
├── [**variables.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/sns/variables.tf)
<br />
└── [**output.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/sns/output.tf)

#### 9.1. main.tf file:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/bf04a90d-1997-4e7f-b6a9-bc429ea22e81" width="1000">

#### 9.2. variables.tf:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/987f571b-04d6-4446-baaa-4452d569d8b0" width="1000">

#### 9.3. output.tf
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/37baa9a4-5fc2-431d-97a9-054f0083d36a" width="1000" >

### 10- Create S3 Bucket:

└── [**main.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/s3/main.tf)

#### 10.1. main.tf file:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/3d246d51-e748-427d-a373-967b5508a9d9" width="1000">

### 11- Create DynamoDB table:

└── [**main.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/dynamoDB/main.tf)

#### 11.1. main.tf file:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/3d246d51-e748-427d-a373-967b5508a9d9" width="1000">

### 12- Create Root Files:

├── [**main.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/main.tf)
<br />
└── [**output.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/output.tf)

#### 12.1. main.tf file:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/65c93570-3954-4289-8675-2b0f770c12c2" width="1000">

#### 12.2. output.tf
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/7cc18976-89ec-423f-9798-57f1074caa0e" width="1000">

### 13- Create BackEnd Module:

#### After Running the Terraform we Run the backend module to lock the terraform.state file it helps to dont allow 2 to make changes in the same time

└── [**main.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/backend/main.tf)

#### 13.1. main.tf file:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/ec1e6348-df23-4446-806b-2b3774bab84c" width="1000">
