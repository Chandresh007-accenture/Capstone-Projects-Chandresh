
# Project 10: Internal DNS Setup

## Project Overview

The objective of this project is to configure an internal DNS environment and access a web application using a hostname instead of an IP address.

## Environment

| Component | Configuration |
|---|---|
| Operating System | Windows Server 2022 |
| DNS Server | AZ-.........-01 |
| Domain | chandresh.local |
| DNS Server IP | 10.....160 |
| Web Server | IIS |
| Hostname | web.chandresh.local |
| Record Type | A Record |
| Reverse DNS | PTR Record |

## Implementation Steps

### 1. DNS Server Configuration
Verified the existing DNS Server service and DNS zone.

### 2. IIS Installation
Installed Internet Information Services (IIS) to host the sample website.

### 3. DNS A Record
Created an A record:

- Hostname: web
- Domain: chandresh.local
- IP Address: 10......160

### 4. Reverse DNS Configuration
Configured the reverse lookup zone:

`3.5.10.in-addr.arpa`

Created a PTR record for:

`AZ-.......-01.chandresh.local`

### 5. DNS Resolution Testing

Executed:

`nslookup web.chandresh.local 10.......160`

Expected result:

- Hostname: web.chandresh.local
- Resolved IP: 10.......160
- DNS Server: AZ-........01.chandresh.local

### 6. Website Verification

Accessed the IIS website using:

`http://web.chandresh.local`

Successfully displayed the IIS Welcome Page.

## Project Results

- DNS service verified.
- Forward DNS resolution successful.
- Reverse DNS configured.
- IIS website accessible through its hostname.
- DNS lookup successfully verified.

## Technologies Used

- Microsoft Azure
- Windows Server 2022
- Active Directory DNS
- IIS
- PowerShell

## Screenshots

See the screenshots folder for implementation and verification evidence.

## Resource Cleanup

Project-specific resources will be reviewed and cleaned up after submission verification. Existing Active Directory, DNS, Domain Controller and Azure infrastructure will be preserved.

## Author

Chandresh Kumar
