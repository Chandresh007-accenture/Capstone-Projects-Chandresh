# Project 16: Enable HTTPS Using AWS ACM

## 1. Project Overview

The objective of this project is to enable HTTPS for a web application using AWS Certificate Manager (ACM) and an Application Load Balancer (ALB).

The Application Load Balancer accepts HTTPS traffic on port 443 and forwards requests to a backend Amazon EC2 web server using HTTP on port 80.

The backend web server is protected by a security group that allows traffic only from the Application Load Balancer.


## 3. AWS Resources

| Resource | Configuration |
|---|---|
| AWS Region | ap-south-1 |
| Load Balancer | project16-https-Chandresh |
| Load Balancer Type | Application Load Balancer |
| Target Group | project16-https-Chandresh-tg |
| EC2 Instance Type | t3.micro |
| Operating System | Amazon Linux 2023 |
| Web Server | Nginx |
| Certificate Service | AWS Certificate Manager |
| Certificate Domain | chandresh.local |
| HTTPS Listener | TCP 443 |
| Backend Traffic | HTTP 80 |

## 4. Security Configuration

### Application Load Balancer Security Group

- Allows inbound HTTPS traffic on port 443.
- Does not allow public inbound HTTP traffic on port 80.

### Backend EC2 Security Group

- Allows inbound HTTP traffic on port 80 only from the ALB security group.
- Does not allow public inbound HTTP traffic.
- SSH port 22 is not opened.
- RDP port 3389 is not opened.

## 5. SSL/TLS Certificate Configuration

A self-signed SSL/TLS certificate was generated using OpenSSL and imported into AWS Certificate Manager.

Certificate details:

- Domain: `chandresh.local`
- Certificate type: Imported
- ACM status: ISSUED

The certificate was attached to the Application Load Balancer HTTPS listener.

**Important:** The certificate is self-signed and is not publicly trusted. It also uses `chandresh.local`, which does not match the AWS load balancer DNS hostname. Therefore, browsers display a certificate security warning.

For production environments, use a domain you own and a publicly trusted certificate issued for that domain.

## 6. EC2 Web Server Configuration

The project uses an Amazon Linux 2023 EC2 instance with Nginx installed.

The website displays:

- Project 16 - HTTPS Enabled Using AWS ACM
- Owner: Chandresh Kumar
- Secure HTTPS Load Balancer Project

## 7. Validation and Testing

### Target Group Health Check

The EC2 instance was registered successfully with the Target Group.

**Verified status:** `healthy`

### HTTPS Test

The website was opened using the Application Load Balancer DNS hostname over HTTPS.

The website loaded successfully.

### HTTP Access Test

Command used:

```bash
curl --max-time 10 -I http://<ALB-DNS-NAME>
```

**Result:** Connection timed out.

This is expected because public inbound port 80 is not allowed by the ALB security group.

### Listener Verification

The ALB listener configuration was checked.

Verified configuration:

| Protocol | Port |
|---|---|
| HTTPS | 443 |

No HTTP listener on port 80 was configured.

## 9. Technologies Used

- Amazon Web Services (AWS)
- AWS Certificate Manager (ACM)
- Application Load Balancer (ALB)
- Amazon EC2
- Amazon Linux 2023
- Nginx
- OpenSSL
- AWS CLI
- HTTPS and TLS
- Security Groups

## 10. Learning Outcomes

Through this project, I learned how to:

1. Generate a self-signed SSL/TLS certificate using OpenSSL.
2. Import a certificate into AWS Certificate Manager.
3. Create and configure an Application Load Balancer.
4. Configure an HTTPS listener on port 443.
5. Create and register an EC2 instance with a Target Group.
6. Configure security groups for restricted backend access.
7. Verify Target Group health.
8. Test HTTPS connectivity.
9. Verify that public HTTP access is blocked.

## 11. Security Best Practices

- Never upload private keys or passwords to GitHub.
- Do not publish AWS access keys, secret keys, or authentication tokens.
- Restrict backend access to the Application Load Balancer.
- Use publicly trusted certificates for production websites.
- Keep SSH and RDP access closed when not required.

**Project Owner**: 
 - Chandresh Kumar
