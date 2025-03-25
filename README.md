# Inception 🧱  
**Multi-Service Web Infrastructure with Docker Compose**

Inception is a project developed as part of the 42 curriculum to design a secure, production-like environment using Docker containers. It deploys a complete web hosting stack using containerized services, with isolated networks and persistent volumes. The goal was to design an infrastructure that reflects good DevOps practices, such as modular services, proper isolation, and minimal manual configuration.

### ✨ Key Features

- Containerized web infrastructure using **Docker Compose**
- Services include:
  - WordPress with PHP-FPM
  - MariaDB (database)
  - NGINX (reverse proxy with SSL)
  - Redis cache for WordPress optimization
  - Adminer (database manager)
  - FTP server
  - Static HTML site (styled with Tailwind CSS)
  - **MailHog** for local SMTP testing
- Configured **SSL**, **Docker networks**, and **persistent volumes**
- Designed to simulate a modular production setup
  
## 🛠 Tech Stack

**Services & Tools**
- Docker / Docker Compose  
- NGINX  
- PHP-FPM  
- WordPress  
- MariaDB  
- Redis  
- Adminer  
- FTP  
- MailHog  

**Frontend & Static Site**
- HTML  
- Tailwind CSS

**DevOps Concepts**
- Container networking  
- Volume persistence  
- Reverse proxy with SSL (self-signed certificates)

## 📬 Contact

Built and maintained by [@lulubas](https://github.com/lulubas)
