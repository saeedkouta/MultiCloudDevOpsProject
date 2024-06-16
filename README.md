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

### What is Terraform?

Terraform is an open-source Infrastructure as Code (IaC) tool created by HashiCorp. It allows users to define and provision data center infrastructure using a high-level configuration language. By writing declarative configuration files, users can specify the desired state of their infrastructure, and Terraform will handle the creation, update, and deletion of resources to match that state.

### Purpose of Terraform

The primary purpose of Terraform is to enable consistent, reproducible, and automated infrastructure management. It helps to:

1. **Simplify Infrastructure Management**: By using configuration files, Terraform makes it easy to manage and version control infrastructure changes.
2. **Ensure Consistency**: Terraform provides a unified way to define infrastructure, ensuring consistency across environments and reducing configuration drift.
3. **Improve Collaboration**: Teams can collaborate on infrastructure changes by reviewing and version controlling Terraform configuration files.
4. **Enable Infrastructure as Code (IaC)**: Terraform allows infrastructure to be treated as code, which means it can be tested, validated, and automated like software code.
5. **Multi-Cloud and Provider Agnostic**: Terraform supports multiple cloud providers and services, allowing for a consistent approach to infrastructure management across different environments.

Using Terraform, organizations can achieve greater efficiency, reliability, and scalability in their infrastructure operations, leading to faster deployment cycles and reduced operational overhead.

### Overview
[**Terraform Modules README file**](https://github.com/saeedkouta/MultiCloudDevOpsProject/tree/dev/terraform#readme)

This README file documents my process of creating Terraform modules. It includes all the necessary steps in details and screenshots of the configurations used in each module.












