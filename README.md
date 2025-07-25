# 🎯 CodePipeline using Terraform and DevSecOps tools with GitHub actions & Kubernetes sealed secrets 🎯.


This repository delivers a comprehensive, automated approach for building, securing, and deploying modern cloud-native applications. It integrates **Infrastructure as Code (Terraform)**, **CI/CD automation (GitHub Actions & AWS CodePipeline)**, **container security (Trivy)**, and **secret management (Sealed Secrets)** for a full **DevSecOps** workflow.

---

## Architecture Diagram:

<img width="3508" height="2481" alt="devsecops-architecture" src="https://github.com/user-attachments/assets/abb26708-ae20-4c23-9641-1c6c73964fb4" />

---

## 📁 Project Structure:

<img width="791" height="497" alt="image" src="https://github.com/user-attachments/assets/9a7f6731-0d13-4d06-8728-9eac87a9d1a2" />

---

## 📌 Technologies Used

- **Infrastructure**: Terraform, AWS (EC2, S3, IAM, CodePipeline, CodeBuild, CodeStar, EKS)
- **CI/CD**: GitHub Actions, AWS CodePipeline, CodeBuild
- **Application**: Vite + React, Docker, NGINX
- **Security**: tfsec (IaC scanning), Trivy (Docker scanning), Sealed Secrets
- **Container Orchestration**: Kubernetes (EKS)

---

## ⚙️ How It Works

### 🔁 GitHub Actions Triggers CI/CD
- On every `push`, GitHub Actions triggers:
  - Terraform provisioning
  - Security scans (tfsec, Trivy)
  - Docker build + deploy
  - Kubernetes or EC2 deployment

### 🧱 Infrastructure as Code (Terraform)
- All AWS infrastructure is defined as code in `terraform/`
- `tfsec` scans ensure security best practices before deployment

### 🐳 Docker & Security Scanning
- Docker builds app containers
- `trivy` scans containers before registry push (e.g., DockerHub)

### 🔐 Secret Management
- Kubernetes secrets are encrypted using **Sealed Secrets**
- Safe to commit sealed-secret files into version control

### ☁️ Deployment Targets
- EC2: Direct deployment using NGINX (via user_data)
- EKS: Kubernetes manifests handle pod & service management
- S3: Build artifacts stored for reproducible deployments

---

## 🚀 Getting Started

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/asish915/ci-cd-and-devsecops.git
cd ci-cd-and-devsecops
```

### 2️⃣ Configure AWS & GitHub Secrets
Run:
```bash
aws configure
```
Add the following secrets to your GitHub repo:

- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- EC2_SSH_KEY (base64 PEM)
- KUBECONFIG (base64 encoded)
- EC2_HOST(public ip)
- DOCKERPASSWORD
- DOCKERUSERNAME
- AWS_REGION
- S3_BUCKET

### 3️⃣ Initialize and Apply Terraform

- Run Terraform commands locally or via GitHub Actions:
    ```bash
    terraform init
    terraform validate
    terraform plan
    terraform apply
    ```

### 4️⃣ GitHub Workflows

Edit .github/workflows/ci-cd.yml for:

- Build, test, deploy stages
- Triggering Terraform
- Security scan using tfsec & Trivy
- Sealed secrets management
- Deploying using EC2

### 5️⃣ Docker Image Build & Scan

- Ensure `Trivy` is configured in the workflows for Docker image scanning.
    ```bash
    docker build -t your-image .
    trivy image your-image

    ```

### 6️⃣ Encrypt and Apply Sealed Secrets

- Encrypt secrets using Sealed Secrets and apply them to your Kubernetes cluster:
    ```bash
    kubeseal < secret.yaml > sealed-secret.yaml
    kubectl apply -f sealed-secret.yaml

    ```

### 7️⃣ Deploy Application

- Deploy using the automated pipelines (Kubernetes or EC2).
- Artifacts are managed and stored via AWS S3.

### 8️⃣ Monitor Pipelines

- Monitor pipeline runs and security reports in GitHub Actions and AWS CodePipeline.
- Update IaC and pipeline scripts as your infrastructure or application evolves.

---

## 🤝 Contribution

Contributions are welcome! Please fork the repo, create a new branch, and submit a pull request.

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---


**✅ Secure. Automate. Deploy.**
## 👨‍💻 Created by Asish Sarangi
