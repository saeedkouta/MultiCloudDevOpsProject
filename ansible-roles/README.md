# Ansible Roles

An Ansible role is a way of organizing tasks, variables, and handlers into reusable units.

Roles provide a structured way to break down and manage complex automation tasks in Ansible.

## Purpose of Ansible Roles

1. **Modularity and Reusability**:
   - Roles promote modularity by encapsulating related tasks and files into a single unit.
   - They facilitate code reuse across different projects or environments, reducing duplication and improving maintainability.

2. **Standardization and Consistency**:
   - Roles define a standardized structure and approach to configuration management, ensuring consistent deployments.
   - They enforce best practices and help maintain a predictable execution order for tasks.

3. **Simplification of Playbooks**:
   - By abstracting complex tasks into roles, playbooks become more concise and easier to understand.
   - Roles simplify playbook maintenance and improve readability.

4. **Encapsulation of Functionality**:
   - Each role typically represents a specific function or component of a system (e.g., web server, database server).
   - This encapsulation allows roles to be developed, tested, and reused independently.

5. **Parameterization and Flexibility**:
   - Roles support parameterization through variables, enabling customization based on different environments or requirements.
   - They provide flexibility to adapt roles to diverse use cases without extensive modifications.

6. **Integration with Ansible Galaxy**:
   - Ansible Galaxy facilitates the sharing and distribution of Ansible roles developed by the community.
   - Users can leverage pre-built roles from Ansible Galaxy to accelerate automation projects and deployment workflows.

### Using Ansible Roles

To use an Ansible role in your playbook, include it by its name within the `roles` section of your playbook YAML file. Ensure the role is correctly structured with `tasks`, `vars`, `handlers`, and other necessary directories.

## Table of Ansible Roles

| Role | Description |
|------|-------------|
| [Docker](https://github.com/saeedkouta/ansible-roles/tree/main/docker) | Installs and configures Docker on target hosts for containerized applications. |
| [Jenkins](https://github.com/saeedkouta/ansible-roles/tree/main/jenkins) | Automates the installation and configuration of Jenkins CI/CD server, including job setups and plugin management. |
| [Git](https://github.com/saeedkouta/ansible-roles/tree/main/git) | Manages Git installation and configuration on servers, enabling version control for source code management. |
| [OpenShift CLI ](https://github.com/saeedkouta/ansible-roles/tree/main/oc_cli) | Installs and configures the OpenShift Command Line Interface (CLI) tool on hosts for managing OpenShift clusters. |
| [SonarQube](https://github.com/saeedkouta/ansible-roles/tree/main/sonarqube) | Sets up SonarQube for continuous inspection of code quality, integrating with CI/CD pipelines for early issue detection. Requires PostgreSQL database to be up and running. |

## Create Ansible Roles:

#### use this command to create ansible role folders
```bash
ansible-galaxy init <role-name>
```

### 1- Create [Docker Role](https://github.com/saeedkouta/MultiCloudDevOpsProject/tree/main/ansible-roles/docker)
```bash
ansible-galaxy init docker
```

#### task 1: Remove all Docker repository files if they exist

#### to make sure that the docker will be installed without any problems
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/0c82769b-506c-4b62-86c9-eafcaf0b0b75" width="1000">

#### task2: apt update
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/a086c5c8-b3bd-4049-bc8c-8eaf29f0ea8c" width="1000">

#### task 3: Gather distribution information
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/10134623-86d8-42d5-bc2b-dd39088bdd8f" width="1000">

#### task 4: Install Docker prerequisites
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/3f988e57-3c58-4049-99b3-a4f56680fc0d" width="1000">

#### task 5: Add Docker GPG key
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/6e6f4dbe-dcbf-49e5-a7b9-e9ae9ce4386c" width="1000">

#### task 6: Add Docker repository
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/6abdb24f-1088-4f40-a386-c5c6210100d7" width="1000">

#### task 7: Update apt and install Docker
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/465a3008-714b-4cbe-85c9-0bee3802e45d" width="1000">

#### task 8: Start and enable Docker service
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/e340b342-bf12-4944-af5a-57f824f9df55" width="1000">

#### task 9: Set permissions to docker engine
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/627ae6b0-83f1-4d58-8732-86a2b89cc1a8" width="1000">

### 2- Create [jenkins role](https://github.com/saeedkouta/MultiCloudDevOpsProject/tree/main/ansible-roles/jenkins):
```bash
ansible-galaxy iniy jenkins
```
#### i will create jenkins as docker container Using it as a container offers simplicity, isolation, and flexibility

#### task 1: pull jenkins image
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/ec86880f-98e6-4497-b7b7-7160380e2e8d" width="1000">

#### task 2: create jenkins container
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/ec569fcd-b514-487f-a0a2-483467d90dbe" width="1000">

#### task 3: Fetch Jenkins password

#### using retries and delay because some times the container take few seconds to be up and running
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/2cc0fc65-de5b-46bc-91b3-60f0987ea3c5" width="1000">


#### task 4: Install Java 17 inside Jenkins container

#### it will be needed in the pipeline with sonarqube analysis
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/afb31650-13f2-47fe-91cf-cb95c18d6a89" width="1000">

#### task 5: Install Docker CLI inside Jenkins container

#### it will be needed in the pipeline to build and push the docker image
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/8d58b416-3640-41a9-9222-33af280500d4" width="1000">

### 3- Create [git role](https://github.com/saeedkouta/MultiCloudDevOpsProject/tree/main/ansible-roles/git):
```bash
ansible-galaxy init git
```
#### will be installed in the jenkins container it will be needed in the pipeline

#### task 1: update apt cache
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/9deb1e68-33f4-442c-a4b3-b9decfa6b9db" width="1000">

#### task 2: install git inside the jenkins container
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/b2e4699d-6d43-4749-9c54-eec41bb12f8f" width="1000">

### 4- Create [OpenShift cli role](https://github.com/saeedkouta/MultiCloudDevOpsProject/tree/main/ansible-roles/openshift):
```bash
ansible-galaxy init openshift
```
#### will be installed in the jenkins container it will be needed in the deploy stage

#### task 1: Ensure the /tmp directory exists
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/46d2ba5f-67a0-4932-ab6e-7da680077948" width="1000">

#### task 2: Download oc CLI tarball to the target machine
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/5e255efb-ff88-4e27-9ed5-dc536dfdd879" width="1000">

#### task 3: Copy oc CLI tarball to Jenkins container
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/03465f3c-114c-489f-95e3-988de2301e84" width="1000">

#### task 4: Extract oc CLI inside Jenkins container
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/b4967503-c87b-42c0-b064-0a4c77b3447f" width="1000">

#### task 5: Ensure oc CLI is executable
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/8ac114af-d3d6-4f74-ba1f-7bc97b3c0e50" width="1000">

### 5- Create [sonarqube role](https://github.com/saeedkouta/MultiCloudDevOpsProject/tree/dev/ansible-roles/sonarqube):
```bash
ansible-galaxy init sonarqube
```

#### in this role i will create postegresql container first then create a database linked to the sonarqube container because it will be required to make the sonarqube container up and running

####  task 1: Create Docker volumes for SonarQube
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/aeaf76c8-54c3-416b-8708-306a87d2ccc2" width="1000">

####  task 2: Pull PostgreSQL image
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/94f81037-e268-4639-80b8-ed20e7b61bb8" width="1000">

####  task 3: Run PostgreSQL container
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/f983c77f-0397-4481-a1b0-0b4383127e06" width="1000">

####  task 4: Pull SonarQube image
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/2968afd3-f7e2-4031-b4d9-1f51423186a2" width="1000">

####  task 5: Run SonarQube container
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/adb6890b-a7de-4bd8-bf15-2416e469a2f4" width="1000">

### After Create the roles Create the following file:

### Create [inventory file](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/ansible-roles/inventory):
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/2f7d8a9d-bcd8-4468-bc08-0c37ef520693" width="1000">

### Create [ansible.cfg file](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/ansible-roles/ansible.cfg):
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/c69b72ed-51b8-4734-a545-af8fc5313015" width="1000">

### Create [playbook.yml file](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/ansible-roles/playbook.yml):
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/6928e064-9d64-4677-b126-0fbf98255dc2" width="1000">

### use this command to run the playbook file:
```bash
ansible-playbook -i inventory playbook.yml
```

### Show the tasks while Running
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/21b90e83-1154-4f5d-8349-9bdff8afca01" width="1000">
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/3225573e-3c1d-4608-a801-16423270db40" width="1000">
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/15a7e899-25e1-472d-9bc5-240936e14a2e" width="1000">
















