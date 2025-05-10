# 🧠 Be A Man Level 7

![Terraform](https://img.shields.io/badge/IaC-Terraform-623CE4?logo=terraform&logoColor=white)
![GCP](https://img.shields.io/badge/Cloud-Google--Cloud-4285F4?logo=googlecloud&logoColor=white)
![HTML](https://img.shields.io/badge/Web-Static%20Site-E34F26?logo=html5&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

This project provisions a **Google Cloud Storage (GCS)** bucket using Terraform and hosts a custom website featuring a *Heiße Deutsche Frau* image and a **Darth Malgus-themed 404 error page**. The bucket is configured for **public object access** and **directory listing**, enabling full website behavior using only GCS.

🔗 **GitHub Repository**: [gcp-be-a-man-level-7](https://github.com/tiqsclass6/gcp-be-a-man-level-7/)

---

## 📦 Purpose

This project demonstrates:

- 🚀 Infrastructure as Code with Terraform  
- ☁️ Static site hosting via GCP Cloud Storage  
- 🔐 Public IAM configuration using `roles/storage.objectViewer`  
- 🧱 Custom `germany.html` + `404.html` for themed site delivery  

---

## 📁 Directory Structure

```bash
be-a-man-level-7/
├── resources/
│   ├── 404.html                 # Custom Darth Malgus 404 error page
│   ├── germany.jpg              # Heiße Deutsche Frau image file
│   └── germany.html             # Main landing page (homepage)
├── 0-authentication.tf         # Google Cloud provider & credentials setup
├── 1-variables.tf              # Terraform input variables
├── 2-gcs-bucket.tf             # GCS bucket creation & website config
├── 3-gcs-objects.tf            # Upload HTML and image files to the bucket
├── 4-iam.tf                    # IAM policies for public access and listing
├── 5-outputs.tf                # Output URLs (image + site)
├── README.md                   # Project overview and badge display
└── USER_GUIDE.md               # Terraform and Console deployment guide
```

---

## 🛠 Features

- 🪣 GCS bucket with fine-grained access
- 🖼 Static hosting with `germany.html`, `germany.jpg`, and `404.html`
- 🔗 Public file links and browsable bucket
- 💥 Darth Malgus 404 to greet broken links

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

## 🎖 Extra Credit

For full savage status:

- Share your `germany.html` live link
- Ensure your `404.html` page works with an invalid path

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

## 👤 Author

**T.I.Q.S.** – Galactic Infrastructure Architect

> "If Chewbacca asks for Terraform, you give him Terraform."

---

## 🔗 Useful Links

- [User Guide - Be Like a Man Level 7](https://github.com/tiqsclass6/gcp-be-a-man-level-7/blob/main/USER_GUIDE.md)
- [Terraform GCS Bucket Docs](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket)
- [Google Cloud Storage Website Hosting](https://cloud.google.com/storage/docs/hosting-static-website)
