# Project 15: Automate Server Configuration with Ansible

## Objective
Automate Apache web server installation and configuration on an Azure Ubuntu VM using Ansible.

## Architecture
- **Controller:** Ubuntu VM with Ansible and Azure CLI.
- **Managed Node:** Azure Ubuntu 22.04 VM.
- **Configuration Management:** Ansible Pull.
- **Web Server:** Apache2.

## Network Security
- Inbound TCP port 80: Allowed.
- Inbound TCP port 22 (SSH): Denied.
- Inbound TCP port 3389 (RDP): Denied.

## Implementation
1. Installed Ansible on the controller.
2. Created an Azure managed VM.
3. Installed Ansible and Git on the managed VM using Azure Run Command.
4. Created an Ansible playbook to update apt, install Apache, start and enable the service, and deploy a custom HTML page.
5. Published the playbook in this GitHub repository.
6. The controller uses Azure Run Command to invoke Ansible Pull on the managed VM.

## Why Ansible Pull?
Inbound SSH is not opened. Azure Run Command invokes `ansible-pull` through the Azure management plane. The managed VM fetches the playbook from GitHub and executes it locally.

## Playbook
See [apache-setup.yml](apache-setup.yml).

## Verification
Evidence screenshots will be stored in the `evidence/` directory.

## Author
 - Chandresh Kumar
