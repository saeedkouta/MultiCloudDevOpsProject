# MultiCloudDevOpsProject

## An extensive DevOps pipeline that incorporates Docker for containerization, Ansible for configuration management, Jenkins for continuous integration, Terraform for infrastructure provisioning, and OpenShift for deployment is showcased in this project. A smooth and effective workflow is ensured by the pipeline, which automates the deployment of a sample application to OpenShift. It also includes AWS services and integrates logging and monitoring.

## Project Diagram

<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/f3fad849-c43d-4630-bb15-50102cc850d0.svg" >

## Project Structure
```bash
├── ansible-roles
├── application
├── load-srcipt
├── openshift
├── screenshots
├── terraform
├── Jenkinsfile-01
├── Jenkinsfile-02
└── README.md
```

## Step 1: GitHub Repository Setup

### 1- Create a new repo in github named "MultiCloudDevOpsProject"

### 2- Clone the App using this command
```bash
git clone https://github.com/EngMohamedElEmam/spring-boot-app.git
```

### 3- push to your new repo 
```bash
git add .
git commit -m "push the app"
git push https://github.com/saeedkouta/MultiCloudDevOpsProject.git
```

### 4- Create A new Branch called "dev"
```bash
  git checkout -b dev
```
dev Branch: Used for development work.

## Step 2: Infrastructure Provisioning with Terraform

### 1- Create Provider Module

├── [**main.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/provider/main.tf)
<br />
└── [**variables.tf**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/terraform/modules/provider/variables.tf)

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















