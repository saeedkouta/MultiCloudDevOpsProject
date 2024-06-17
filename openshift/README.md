# OpenShift Overview

**OpenShift** is a comprehensive enterprise Kubernetes container platform developed by Red Hat. It combines Kubernetes and Docker for orchestration and containerization, providing a consistent platform for deploying applications in a cloud-native architecture. OpenShift supports a wide range of deployment options, including on-premises, public cloud, and hybrid cloud environments.

## Key Features and Purpose:

1. **Container Orchestration**: At its core, OpenShift uses Kubernetes to manage containerized applications. It automates deployment, scaling, and operations of application containers across clusters of hosts.

2. **Developer Productivity**: OpenShift includes tools that help developers build, deploy, and manage applications. It supports a variety of programming languages and frameworks, enabling rapid application development and iteration.

3. **Integrated CI/CD**: OpenShift provides built-in continuous integration and continuous deployment (CI/CD) pipelines. This helps automate the process of building, testing, and deploying applications, ensuring faster delivery and higher quality software.

4. **Hybrid and Multi-Cloud Support**: OpenShift allows organizations to deploy and manage applications across multiple environments, whether on-premises or in public clouds, providing flexibility and avoiding vendor lock-in.

5. **Security and Compliance**: OpenShift enhances security through features like integrated security policies, role-based access control (RBAC), and automated compliance checks. It helps organizations meet security and regulatory requirements.

6. **Self-Service and Automation**: Developers can use self-service interfaces to deploy applications quickly, while operations teams can automate routine tasks and maintenance activities, improving efficiency and reducing errors.

7. **Scalability and Reliability**: OpenShift can scale applications horizontally (adding more instances) or vertically (adding more resources) as demand grows. It ensures high availability and reliability through features like automated failover and load balancing.

OpenShift's purpose is to enable organizations to accelerate the development and deployment of applications, improve operational efficiency, and achieve greater scalability and reliability. It provides a unified platform that bridges the gap between development and operations, fostering a DevOps culture and supporting modern application practices.

## Create [deployment.yml](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/openshift/deployment.yml) File
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/9f73b45b-0bb9-4fe1-a98e-6e0f183a7e40" width="1000" >

### Apply it using this command
```bash
oc apply -f deployment.yml
```

## Create [service.yml](https://github.com/saeedkouta/MultiCloudDevOpsProject/blob/dev/openshift/service.yml) file
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/6b84698a-bf85-4a78-a745-63efac30576b" width="1000" >

### Apply it using this command
```bash
oc apply -f service.yml
```

### Expose the Service using this command
```bash
oc expose svc ivolve-project-service
```
## The Deployment after applying the file:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/e1ea9741-5798-4f3d-b821-0c54ac85703a" width="1000" >

## The pods:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/5d6aabad-9361-4912-b6a5-afe2a8104002" width="1000" >

## The Service after applying the file:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/d3411c2d-d8f4-47a1-a92c-bbb8525d9a53" width="1000" >

## the route That Created After Exposing the Service:
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/1141a3a2-5659-42db-b09b-30de5e65dcc3" width="1000" >

## The WebPage
<img src="https://github.com/saeedkouta/MultiCloudDevOpsProject/assets/167209058/27efe886-4d17-43d9-96bd-1181b430fca2" width="1000" >







