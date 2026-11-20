# Project 9: Domain Controller Setup

## Project Overview

**Objective:** Practice basic authentication using Microsoft Active Directory Domain Services (AD DS).

This project uses Windows Server 2022 Datacenter to configure and verify domain user accounts and test authentication against an existing Active Directory domain.

## Environment

| Component | Details |
|---|---|
| Operating System | Windows Server 2022 Datacenter |
| Domain | chandresh.local |
| NetBIOS Name | CHANDRESH |
| Domain Controller | AZ-L........-01 |
| Domain Controller IP | 10..........160 |
| Active Directory | AD DS |
| DNS Server | Installed |

## Project Tasks

### 1. Verify Active Directory Domain Services

Verified that AD DS and DNS Server were already installed and operational on the existing Windows Server.

### 2. Verify Domain Controller

Confirmed the domain controller:

- Hostname: AZ-L......V-01
- Domain: chandresh.local
- Domain Controller role: Primary Domain Controller
- Global Catalog: Enabled

### 3. Create Organizational Unit

Created a dedicated organizational unit:

`Project9-Lab`

Distinguished Name:

`OU=Project9-Lab,DC=chandresh,DC=local`

### 4. Create Domain Users

Created two domain user accounts:

| Display Name | Username | Status |
|---|---|---|
| Chandresh User One | chandresh.user1 | Enabled |
| Chandresh User Two | chandresh.user2 | Enabled |

Both accounts were created inside the Project9-Lab organizational unit.

### 5. Authentication Testing

Validated both user credentials against the Active Directory domain using PowerShell and the .NET PrincipalContext API.

| Account | Authentication Result |
|---|---|
| chandresh.user1 | True |
| chandresh.user2 | True |

Both accounts successfully passed credential validation.

**Note:** These results demonstrate successful credential validation against Active Directory. Separate interactive Windows desktop logins were not demonstrated. Attempts using `runas` were blocked by Windows logon restrictions.

## Final Verification

Both domain accounts were verified:

- Enabled: True
- PasswordExpired: False

## Screenshots and Evidence

The screenshots folder contains the project implementation and verification evidence.

1. Domain Controller verification
2. Active Directory domain configuration
3. Project9-Lab organizational unit
4. First domain user creation
5. Second domain user creation
6. Both domain users verification
7. User 1 authentication result
8. User 2 authentication result
9. Final domain user verification

## Project Outcome

Successfully created and verified two domain user accounts in an existing Active Directory environment and tested their credentials against the domain.

## Technologies Used

- Microsoft Windows Server 2022
- Active Directory Domain Services (AD DS)
- DNS Server
- Windows PowerShell
- Microsoft Azure

## Resource Cleanup

The Domain Controller, domain, DNS, and virtual machine were pre-existing infrastructure.

Project-created resources are scheduled for cleanup after submission verification. No pre-existing infrastructure should be removed as part of this project.

## Author

Chandresh Kumar
