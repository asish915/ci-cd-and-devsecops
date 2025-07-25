# CodePipeline using Terraform and DevSecOps tools with GitHub actions & Kubernetes sealed secrets.


This repository provides a comprehensive, automated approach to building, securing, and deploying modern applications using a combination of cloud-native, security-first, and infrastructure-as-code practices. It leverages GitHub Actions, Terraform, Kubernetes, Docker, AWS CodePipeline, and security tooling for a robust DevSecOps workflow.

---

## Architecture Diagram



<img width="3508" height="2481" alt="devsecops-architecture" src="https://github.com/user-attachments/assets/abb26708-ae20-4c23-9641-1c6c73964fb4" />

---

## How It Works

The architecture implements a secure and automated CI/CD pipeline with integrated security checks at each stage:

1. **Code Push & GitHub Actions**
    - On every code push to GitHub, GitHub Actions workflows are triggered.
    - The pipeline automates infrastructure provisioning via Terraform.

2. **Infrastructure as Code (IaC)**
    - Terraform scripts (checked in this repo) define and provision cloud infrastructure.
    - Security checks (via `tfsec`) validate Terraform code before deployment.

3. **Container Pipeline**
    - Docker is used to build and package the application.
    - Trivy scans the built Docker images for vulnerabilities before pushing them to a registry.

4. **Secret Management**
    - Sealed secrets are used to securely manage and deploy secrets to Kubernetes clusters.

5. **Deployment Options**
    - Applications can be deployed to Kubernetes or directly to AWS EC2 instances.

6. **AWS CI/CD Pipeline**
    - AWS CodePipeline is triggered for further CI/CD automation.
    - CodeBuild is used for building and testing.
    - CodeDeploy handles deployment to EC2 or Kubernetes.
    - Artifacts are stored in S3 buckets.

7. **Security Integration**
    - Security is enforced at every stage: source (IaC scanning), container (image scanning), and secrets (sealed secrets).

8. **Frontend Integration**
    - Example Vite + React app included to demonstrate a full-stack DevSecOps flow.

---

## Getting Started

Follow these steps to use this repository for your own projects:

### 1. Clone the Repository

```bash
git clone https://github.com/asish915/ci-cd-and-devsecops.git
cd ci-cd-and-devsecops
```

### 2. Set Up AWS & GitHub Credentials

- Configure your AWS credentials (`aws configure`) for Terraform and AWS CLI usage.
- Add needed secrets (AWS keys, Docker credentials, etc.) to your GitHub repository secrets.

### 3. Configure Terraform

- Update `infrastructure/` with your environment-specific variables.
- Run Terraform commands locally or via GitHub Actions:
    ```bash
    terraform init
    terraform validate
    terraform plan
    terraform apply
    ```

### 4. Adjust Workflows

- Review `.github/workflows/` for CI/CD pipelines.
- Customize workflow files for your build, test, deploy, and security scan needs.

### 5. Build & Scan Docker Images

- Ensure `Trivy` is configured in the workflows for Docker image scanning.
- Build and push images via CI or locally:
    ```bash
    docker build -t your-image .
    # Scan with Trivy
    trivy image your-image
    ```

### 6. Manage Secrets

- Encrypt secrets using Sealed Secrets and apply them to your Kubernetes cluster:
    ```bash
    kubeseal < secret.yaml > sealedsecret.yaml
    kubectl apply -f sealedsecret.yaml
    ```

### 7. Deploy Your Application

- Deploy using the automated pipelines (Kubernetes or EC2).
- Artifacts are managed and stored via AWS S3.

### 8. Monitor and Iterate

- Monitor pipeline runs and security reports in GitHub Actions and AWS CodePipeline.
- Update IaC and pipeline scripts as your infrastructure or application evolves.

---

## Contributing

Contributions are welcome! Please fork the repo, create a new branch, and submit a pull request.

---

## License

This project is licensed under the [MIT License](LICENSE).

---

**Secure. Automate. Deploy.** 🚀
