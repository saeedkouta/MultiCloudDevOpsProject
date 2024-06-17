# Project Overview

This project utilizes Jenkins pipelines to automate infrastructure provisioning, application deployment, and integration using Terraform, Ansible, Docker, Jenkins, Git, OpenShift CLI (oc), SonarQube, and PostgreSQL. It consists of two main pipelines orchestrated through Jenkins:

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

## Pipeline 1: Terraform and Ansible Automation

The first Jenkins pipeline focuses on automating infrastructure provisioning and configuration using Terraform and Ansible:

- **Stage 1: Terraform Initialization**:
  - Initializes Terraform to set up the environment and modules required for deployment.
  - Ensures Terraform plugins are installed and initializes backend configurations.

- **Stage 2: Terraform Apply**:
  - Deploys the infrastructure defined in Terraform configuration files.
  - Creates and modifies resources as per the defined infrastructure.

- **Stage 3: Backend Terraform Initialization**:
  - Initializes the backend configuration for Terraform state management.
  - Configures remote state storage AWS S3 for collaboration and consistency.

- **Stage 4: Backend Terraform Apply**:
  - Applies changes to the backend configuration, ensuring the Terraform state is managed remotely and securely.

- **Stage 5: Fetch Public IP**:
  - Retrieves the public IP address of deployed resources, such as EC2 instances.
  - Stores the public IP in a variable or file for further use.

- **Stage 6: Run Ansible Roles**:
  - Configures deployed infrastructure using Ansible roles.
  - Installs necessary packages, configures services, and ensures the environment meets desired configurations.

### Required pakages for the first pipeline
`java`,`jenkins`,`terraform`,`ansible`

### Step 1: GitHub Repository Setup

##### 1- Create a new repo in github named "MultiCloudDevOpsProject"

##### 2- Clone the App using this command
```bash
git clone https://github.com/EngMohamedElEmam/spring-boot-app.git
```

##### 3- push to your new repo 
```bash
git add .
git commit -m "push the app"
git push https://github.com/saeedkouta/MultiCloudDevOpsProject.git
```

##### 4- Create A new Branch called "dev"
```bash
  git checkout -b dev
```
dev Branch: Used for development work.

### Step 2: Infrastructure Provisioning with Terraform

##### What is Terraform?

Terraform is an open-source Infrastructure as Code (IaC) tool created by HashiCorp. It allows users to define and provision data center infrastructure using a high-level configuration language. By writing declarative configuration files, users can specify the desired state of their infrastructure, and Terraform will handle the creation, update, and deletion of resources to match that state.

##### Purpose of Terraform

The primary purpose of Terraform is to enable consistent, reproducible, and automated infrastructure management. It helps to:

1. **Simplify Infrastructure Management**: By using configuration files, Terraform makes it easy to manage and version control infrastructure changes.
2. **Ensure Consistency**: Terraform provides a unified way to define infrastructure, ensuring consistency across environments and reducing configuration drift.
3. **Improve Collaboration**: Teams can collaborate on infrastructure changes by reviewing and version controlling Terraform configuration files.
4. **Enable Infrastructure as Code (IaC)**: Terraform allows infrastructure to be treated as code, which means it can be tested, validated, and automated like software code.
5. **Multi-Cloud and Provider Agnostic**: Terraform supports multiple cloud providers and services, allowing for a consistent approach to infrastructure management across different environments.

Using Terraform, organizations can achieve greater efficiency, reliability, and scalability in their infrastructure operations, leading to faster deployment cycles and reduced operational overhead.

##### Overview
[**Terraform Modules README file**](https://github.com/saeedkouta/MultiCloudDevOpsProject/tree/dev/terraform#readme)

This README file documents my process of creating Terraform modules. It includes all the necessary steps in details and screenshots of the configurations used in each module.

### Step 3: Configuration Management with Ansible

##### What is Ansible?

Ansible is an open-source automation tool that simplifies the configuration management, application deployment, orchestration, and task automation across multiple systems. Developed by Red Hat, Ansible uses a declarative language to describe system configurations, known as playbooks, which are written in YAML format. These playbooks define the desired state of systems and automate the deployment and management tasks needed to achieve that state.

##### Purpose of Ansible

The primary purpose of Ansible is to automate IT tasks that are repetitive, complex, or time-consuming. It serves several key purposes:

1. **Configuration Management**: Ansible allows you to define and enforce the desired state of your infrastructure, ensuring consistency and reducing configuration drift.
2. **Application Deployment**: Ansible facilitates the deployment of applications by automating the necessary steps and configurations across multiple servers or environments.
3. **Orchestration**: Ansible can orchestrate complex workflows involving multiple systems, such as rolling updates, system provisioning, and cloud management.
4. **Task Automation**: It automates routine tasks, freeing up administrators' time for more strategic activities.
5. **Agentless Architecture**: Ansible operates over SSH or PowerShell, making it lightweight and easy to deploy without needing agents installed on managed systems.
6. **Integration and Extensibility**: Ansible integrates with existing tools and technologies and can be extended through modules and plugins to support a wide range of use cases.

By leveraging Ansible, organizations can achieve greater operational efficiency, improve scalability, ensure compliance, and accelerate time-to-value for their IT infrastructure and applications.

##### Overview
[**Ansible Playbooks README file**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/ansible-roles/README.md)

This README file details the creation and use of Ansible Roles for automation tasks. It includes comprehensive steps, configuration details, and screenshots illustrating the setup and execution of each role.

### Step 4: Configure Jenkins to Run the Pipeline

#### 1- Open Jenkins and Add the Required Credintials 

#### To Add Credintials go to `manage jenkins` > `Credintials`

###### 1.1 GitHub Credentials

<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/a7f7321e-c5b8-4ef8-af36-0534a55f8fcc" width="1000" >

###### 1.2. AWS Access Key
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/8f4357dc-a5ed-4bb7-a04d-00d765c7f3aa" width="1000" >

###### 1.3. AWs Secret Access Key
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/a7493c72-a904-4165-801c-4fd2a5c972b7" width="1000" >

###### 1.4. The SSH Key Pair
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/e951deee-1854-4d55-8f5a-3c3bd68e6734" width="1000" >

### Step 5: Create and Build The pipeline

#### 1- Create A new Pipeline
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/535652d7-e17b-4503-b374-a6d01e3406a9" width="1000" >

#### 2- Add the repo and the github credintials and choose the branch
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/c85fe234-daf5-4db7-97c1-8b50f09f0443" width="1000" >

#### 3- Add the name of the jenkinsfile
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/e94f3cae-5bdc-4f52-bdbb-47f348e0c67f" width="1000" >

#### 4- Build the pipeline:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/68691174-48c6-4465-b88f-329d7f614fcb" width="1000" >

### Step 6: Show the provisioned infrastructure

#### 1- The Vpc:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/90178a4f-1c10-4568-b427-8ee7d4be9f67" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/daeb2543-905b-43cd-9f4c-b8593dac90ad" width="1000" >

#### 2- The Subnet:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/0232f618-6824-473b-8904-3dc6d7c06b58" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/171d19df-053c-443e-8e59-fcc1f962cbb1" width="1000" >

#### 3- The route table:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/10cc1589-3117-40c2-ae1e-3878f57f4460" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/90008142-7f7f-4dec-9949-f523862869f9" width="1000" >

#### 4- the igw:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/5c937789-ad00-440e-a69e-cb4978bdfd08" width="1000" >

#### 5- the Security Group:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/bef2ff98-e12b-4185-85ed-77ca12c94539" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/79e1681f-f2ea-40f5-9dbf-5dc832c782da" width="1000" >

#### 6- the EC2:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/68691174-48c6-4465-b88f-329d7f614fcb" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/68691174-48c6-4465-b88f-329d7f614fcb" width="1000" >

#### 7- the S3 bucket:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/6e620174-067c-4fa4-a213-dcbaa0e59f46" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/0cc92a35-7349-4376-b159-a25f1523e830" width="1000" >

#### 8- The DynamoDB table:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/96c47bc6-9dc0-4c65-ac60-9e64dff57606" width="1000" >

#### 9-the Cloudwatch alarms:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/eeea5f5c-5043-4342-8238-537ac1d25279" width="1000" >

#### 10- the sns topic
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/f031c54e-62a7-4b00-bb8a-c1420afa9824" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/d7bec498-4cf7-47d3-9e97-e28ddb810bf9" width="1000" >




