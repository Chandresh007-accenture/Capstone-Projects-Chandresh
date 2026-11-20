# Project 5: Secure Linux Server Permissions

**Project Owner:** Chandresh Kumar

## 1. Project Overview

This project demonstrates user-based access restrictions on an Ubuntu Linux server using Linux users, groups, file permissions, ownership, and Access Control Lists (ACLs).

## 2. Objective

Apply user-based access restrictions so users can access only the files and directories permitted to them.

## 3. Environment

- OS: Ubuntu 24.04.3 LTS
- Shell: Bash
- Permissions: chmod, chown, chgrp
- ACL tools: setfacl, getfacl

## 4. Users and Groups

| User | Primary Group | Purpose |
|---|---|---|
| chandresh_admin | chandresh_admins | Administrator |
| chandresh_dev | chandresh_developers | Developer |

## 5. Project Directory

`/opt/chandresh-secure-project`

- Owner: chandresh_admin
- Group: chandresh_admins
- Permissions: 2770
- Developer ACL: Execute-only (--x)

## 6. File Permissions

| File | Owner | Group | Permission |
|---|---|---|---|
| admin-notes.txt | chandresh_admin | chandresh_admins | 600 |
| developer-guide.txt | chandresh_admin | chandresh_developers | 640 |

## 7. Access Testing Results

| Test | Expected Result | Actual Result |
|---|---|---|
| Developer reads developer guide | Allowed | Passed |
| Developer reads admin notes | Denied | Passed |
| Developer lists project directory | Denied | Passed |
| Admin reads admin notes | Allowed | Passed |
| Admin reads developer guide | Allowed | Passed |

All five access tests passed successfully.

## 8. Linux Commands Used

- groupadd
- useradd
- id
- getent
- mkdir
- chown
- chmod
- chgrp
- setfacl
- getfacl
- ls -l
- stat
- sudo -u

## 9. Short Project Write-up

Two Linux users and two groups were created to demonstrate role-based access control. A protected directory was configured with appropriate ownership and permissions.

The administrator can read both project files. The developer can read only the developer guide. An ACL allows the developer to traverse the directory without listing its contents or accessing confidential administrator notes.

All five access tests produced the expected results.

## 10. Screenshots

Project evidence is stored in the `screenshots/` directory.

1. Linux users and groups
2. Secure directory permissions and ACL
3. File permissions
4. Developer access tests
5. Administrator access tests

## 11. Cleanup

After submission, project-created users, groups, files, directories, and ACL entries will be removed. Existing system accounts and resources will be preserved.

---

**Project Owner: Chandresh Kumar**
