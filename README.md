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

#### What is Ansible?

Ansible is an open-source automation tool that simplifies the configuration management, application deployment, orchestration, and task automation across multiple systems. Developed by Red Hat, Ansible uses a declarative language to describe system configurations, known as playbooks, which are written in YAML format. These playbooks define the desired state of systems and automate the deployment and management tasks needed to achieve that state.

#### Purpose of Ansible

The primary purpose of Ansible is to automate IT tasks that are repetitive, complex, or time-consuming. It serves several key purposes:

1. **Configuration Management**: Ansible allows you to define and enforce the desired state of your infrastructure, ensuring consistency and reducing configuration drift.
2. **Application Deployment**: Ansible facilitates the deployment of applications by automating the necessary steps and configurations across multiple servers or environments.
3. **Orchestration**: Ansible can orchestrate complex workflows involving multiple systems, such as rolling updates, system provisioning, and cloud management.
4. **Task Automation**: It automates routine tasks, freeing up administrators' time for more strategic activities.
5. **Agentless Architecture**: Ansible operates over SSH or PowerShell, making it lightweight and easy to deploy without needing agents installed on managed systems.
6. **Integration and Extensibility**: Ansible integrates with existing tools and technologies and can be extended through modules and plugins to support a wide range of use cases.

By leveraging Ansible, organizations can achieve greater operational efficiency, improve scalability, ensure compliance, and accelerate time-to-value for their IT infrastructure and applications.

#### Overview
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
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/62dd7c12-5372-431a-917f-e3c3d6463167" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/68691174-48c6-4465-b88f-329d7f614fcb" width="1000" >

### Step 6: Show the provisioned infrastructure

 it's in the last part of [**Terraform Modules README file**](https://github.com/saeedkouta/MultiCloudDevOpsProject/tree/dev/terraform#readme)

## Pipeline 2: Jenkins, SonarQube, Docker, OpenShift Integration

The second Jenkins pipeline integrates SonarQube with Jenkins using a shared library and orchestrates application deployment to an OpenShift cluster:

- **Stage 1: Git Checkout**:
  - Checks out the application source code repository from Git.

- **Stage 2: Unit Test**:
  - Executes unit tests on the checked-out codebase to ensure code quality and functionality.

- **Stage 3: SonarQube Analysis**:
  - Performs static code analysis using SonarQube to detect bugs, vulnerabilities, and code smells.
  - Provides detailed reports and metrics for code quality improvement.

- **Stage 4: Build and Push Docker Image**:
  - Builds the Docker image for the application based on the codebase.
  - Pushes the built Docker image to DockerHub or another container registry for versioning and distribution.

- **Stage 5: Deploy to OpenShift**:
  - Deploys the application as a containerized service on an OpenShift cluster.
  - Creates necessary Kubernetes resources (deployment, service) and exposes the service for external access.

### Integration with [Shared Library](https://github.com/saeedkouta/MultiCloudProject_shared_library.git)

pipelines utilize a shared library in Jenkins to encapsulate and reuse pipeline logic across different projects, promoting consistency and efficiency in pipeline management.

### Benefits of Automation

- **Efficiency**: Automates infrastructure provisioning and software deployment, reducing manual effort and potential errors.

- **Quality Assurance**: Integrates automated testing and code analysis to maintain high code quality standards throughout the development lifecycle.

- **DevOps Practices**: Implements DevOps principles by automating CI/CD processes and promoting collaboration between development and operations teams.
 
### Step 1: Openshift Deployment and Service files

#### What is OpenShift?
OpenShift is a Kubernetes-based platform that provides a robust and scalable environment for container orchestration and application deployment. Its purpose is to streamline the development, deployment, and management of containerized applications by offering a comprehensive suite of developer and operational tools, integrated CI/CD pipelines, automated scaling, and application monitoring capabilities. OpenShift aims to enhance productivity, ensure application reliability, and foster rapid innovation by providing a consistent and secure infrastructure across hybrid and multi-cloud environments
 
#### Overview
[**Openshift README file**](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/ansible-roles/README.md)

### Step 2: Access to the SonarQube Container

#### SonarQube Overview

**SonarQube** is an open-source platform used for continuous inspection of code quality. It performs automatic reviews with static analysis of code to detect bugs, code smells, and security vulnerabilities. SonarQube supports various programming languages and integrates seamlessly with CI/CD pipelines.

#### Purpose:

- **Improving Code Quality**: SonarQube analyzes code to identify potential issues, ensuring high-quality, maintainable code.
- **Security**: It helps in detecting security vulnerabilities early in the development process.
- **Technical Debt Management**: SonarQube measures technical debt, helping teams understand the effort required to fix code issues.
- **Continuous Integration**: Integrates with CI/CD tools to provide real-time feedback on code quality during the development process.

#### 1- When Accessing sonarqube for the first time its username and password is admin and sonarqube will ask u to change the password before using it
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/c3ba88b5-4386-4d3a-b83f-28e4f6a3c6e7" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/c3ba88b5-4386-4d3a-b83f-28e4f6a3c6e7" width="1000" >

#### 2- Create Project :
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/cd76975e-4a42-4d70-a8fa-b047a5e11d39" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/33b89b96-7d06-45da-b5b0-2ca892f546da" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/9699fcf5-3162-499b-a0fb-2129f4a56e97" width="1000" >

#### 3- Get Token:
`administrator` > `security` > `users` > `token`
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/6a5dd509-2e0e-459d-93fa-7c535804724d" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/5b0d3258-df28-4670-8ee7-0f6bdb645c7e" width="1000" >

### Step 3: Access To the jenkins Container and configure it
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/48ff2d68-d43f-46c0-9af7-0dcd68a83d36" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/75b87f6a-8978-4d1f-a7fe-cdafd28183b4" width="1000" >

#### 1- Add Required Credintials:

#### GitHub:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/3d3144b5-9a4d-4773-8f0c-7bff4ba86730" width="1000" >

#### DockerHub:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/8e4a268b-0f81-4a79-9314-6c5caf391913" width="1000" >

#### sonar-token
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/69de2957-dd32-4011-8ac8-abde3c3e36c1" width="1000" >

#### openshift-token
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/a07dc631-2a7b-4675-88ed-9cedd505133c" width="1000" >

#### 2- install sonar-scanner Plugin:
`manage jenkins` > `plugins` > `available plugins`
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/9ac9e5db-e9e5-41f7-81b3-e1c25ab70987" width="1000" >

#### 3- Configure the sonar-scanner tool:
`manage jenkins` > `tools` > `sonarqube-scanner installations`
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/f084794f-1be4-4c91-af7d-c7f787ab358e" width="1000" >

#### 4- Configure SonarQube-server
`manage jenkins` > `system` > `SonarQube Servers`
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/c06fc0d2-8b3b-43e6-b940-be5c120a7adc" width="1000" >

#### 5- Add [Shared_library](https://github.com/saeedkouta/MultiCloudProject_shared_library.git)
`manage jenkins` > `system` > `Global Pipeline Libraries`
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/59429cc8-5099-4a1d-b0bf-59880208ed52" width="1000" >

### Step 4: Create and Build a Pipeline

#### 1- Create New pipeline
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/91784362-723b-4bb7-8533-234a06601757" width="1000" >

#### 2- Configure the Pipeline:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/85dfd03f-5b26-4cff-8427-e9d162362527" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/a549466e-065e-460a-9074-9de5583d6ffd" width="1000" >

#### 3- Build The Pipeline:

#### Git Checkout Stage:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/0a188c50-a081-4d0a-bd45-1ce46899b474" width="1000" >

#### Uint Test Stage:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/4b03da5e-0b63-4dd7-9322-1f9d78de9083" width="1000" >

#### SonarQube Analysis Stage:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/216b16de-cff0-4ec7-941e-22465c42e8d0" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/bbf35244-79dc-458e-a862-6459ae4ee75a" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/902f75d6-9296-4c9f-b5ed-cb55aa5e0529" width="1000" >

### Build and Push Stage:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/6118286f-8135-4754-adb9-b5891ea795e6" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/14d7f56d-044d-4b60-91e8-fc27945d748d" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/7bcbdb3c-a2ab-4929-aa82-d9fac8ee1ccd" width="1000" >

### Deploy To Openshift Stage:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/2e7ea5eb-72e0-4f3a-89aa-66e464659272" width="1000" >
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/79486577-0007-4f28-b305-6fa696ffa290" width="1000" >

### the Screenshots of OpenShift components that Created is in the [openshift README file](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/openshift/README.md) 

### The Application WebPage:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/79486577-0007-4f28-b305-6fa696ffa290" width="1000" >














