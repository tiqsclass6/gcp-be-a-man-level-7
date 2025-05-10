# 📘 User Guide - Be A Man Level 7

![Terraform](https://img.shields.io/badge/Infra-Terraform-623CE4?logo=terraform)
![Google Cloud](https://img.shields.io/badge/Platform-Google%20Cloud-4285F4?logo=googlecloud)
![Status](https://img.shields.io/badge/Status-Working-brightgreen)

This guide helps you deploy a **Google Cloud Storage (GCS)** bucket that hosts a custom website. Your site includes:

- 🏠 `germany.html` as the homepage
- 🇩🇪 `germany.jpg` as an image
- 💀 `404.html` with a Darth Malgus theme
- 🧱 Public access and directory browsing enabled

---

## ✅ Requirements

Before you begin:

- A Google Cloud Project with billing enabled
- A user or service account with **Storage Admin** permissions
- Terraform CLI installed (v1.3+)
- Your credentials file: `yourjsonfile.json`
- Files inside `resources/`:
  - `germany.html`
  - `germany.jpg`
  - `404.html`

---

## 📁 Updated Project Structure

```bash
be-a-man-level-7/
├── resources/
│   ├── 404.html
│   ├── germany.html
│   ├── germany.jpg
│   └── malgus.jpg
├── 0-authentication.tf
├── 1-variables.tf
├── 2-gcs-bucket.tf
├── 3-gcs-objects.tf
├── 4-iam.tf
├── 5-outputs.tf
├── README.md
└── USER_GUIDE.md
```

---

## ⚙️ Step-by-Step Deployment with Terraform

### 1. 🧪 Configure Your Authentication

Edit `0-authentication.tf`:

```hcl
project     = "your-gcp-project-id" # Change to your project ID
region      = "us-central1"
bucket_name = "your-bucket-name" # Change to your bucket name
```

### 2. 🪄 Initialize Terraform

```bash
terraform init
```

### 3. 🗺️ Format Terraform

```bash
terraform fmt
```

### 4. ✅ Validate Terraform

```bash
terraform validate
```

### 5. 🔍 Plan for Deployment

```bash
terraform plan
```

### 6. 🚀 Apply Your Deployment

```bash
terraform apply -auto-approve
```

- This will create:
  - A GCS bucket
  - Public access permissions
  - Upload of `germany.html`, `germany.jpg`, and `404.html`

---

## 🌍 What Gets Created

| File             | Purpose                        | Access URL                                               |
|------------------|--------------------------------|-----------------------------------------------------------|
| `germany.html`   | Main landing page              | <https://storage.googleapis.com/be-a-man-level-7/germany.html> |
| `germany.jpg`    | Image included in HTML         | <https://storage.googleapis.com/be-a-man-level-7/germany.jpg> |
| `404.html`       | Custom error page              | <https://storage.googleapis.com/be-a-man-level-7/404.html> |

![germany.jpg](/Screenshots/germany.jpg)
![germany1.jpg](/Screenshots/germany1.jpg)
![404.jpg](/Screenshots/404.jpg)

---

## 🔓 IAM Public Access Roles

Terraform configures:

- `roles/storage.objectViewer` for `allUsers` (object access)

---

## 🧑‍💻 Manual Setup (if needed)

1. Go to the [Cloud Storage Console](https://console.cloud.google.com/storage/browser)
2. Create a bucket with:
   - Uniform access **disabled**
   - Website configuration:
     - Main page: `germany.html`
     - Not found: `404.html`
![buckets.jpg](/Screenshots/buckets.jpg)

3. Upload files from `resources/`
![bucket-objects.jpg](/Screenshots/bucket-objects.jpg)

4. In Permissions:
   - Add `allUsers` with:
     - `Storage Object Viewer`
     - `Storage Legacy Bucket Reader`

---

## 🧰 Troubleshooting

If you run into issues, try the following solutions:

### 🔐 Access Denied or 403 Errors

- Make sure the bucket has **public IAM roles**:
  - `roles/storage.objectViewer` for `allUsers`
- Confirm files are uploaded to the correct bucket path
- Verify bucket permissions from the **Cloud Console**

### 🌐 Website Not Displaying

- Double-check the website configuration in the **bucket settings**:
  - Main page: `germany.html`
  - Not found page: `404.html`
- Visit: `https://storage.googleapis.com/[your-bucket-name]/germany.html`

### 📤 Files Not Uploading

- Ensure Terraform scripts are pointing to the correct local file paths:
  - `resources/germany.html`
  - `resources/germany.jpg`
  - `resources/404.html`
- Confirm that the `project`, `region`, and `bucket_name` values are accurate

### 🛑 Terraform Errors

- Run `terraform fmt` and `terraform validate` to catch syntax or config errors
- If `terraform apply` fails, run `terraform plan` again to check for drift or conflicts
- Delete `.terraform` and re-run `terraform init` if issues persist

---

## 🧹 Clean Up

To delete everything:

```bash
terraform destroy -auto-approve
```

---

**That’s it! Your leg will survive from Chewbecca for another 24 hours.**
