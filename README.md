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

## 🎖 Extra Credit

For full savage status:

- Share your `germany.html` live link
- Ensure your `404.html` page works with an invalid path

---

## 👤 Author

**T.I.Q.S.** – Galactic Infrastructure Architect

> "If Chewbacca asks for Terraform, you give him Terraform."

---

## 🔗 Useful Links

- [User Guide - Be Like a Man Level 7](https://github.com/tiqsclass6/gcp-be-a-man-level-7)
- [Terraform GCS Bucket Docs](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket)
- [Google Cloud Storage Website Hosting](https://cloud.google.com/storage/docs/hosting-static-website)
