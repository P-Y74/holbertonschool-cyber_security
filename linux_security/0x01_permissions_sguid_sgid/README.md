# 0x01_permissions_sguid_sgid

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All exercises were performed in controlled environments for learning and defensive security training.

## Description

This project focuses on Linux file permissions, ownership management, and special permission bits such as SUID and SGID.

It explores how access control works in Unix/Linux systems and how misconfigurations can introduce security risks.  
The objective is to understand how to manage permissions securely and identify potential privilege escalation vectors.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It provides hands-on experience with access control mechanisms and their impact on system security.

## Learning Objectives

By the end of this project, the following concepts were studied:

- Linux permission model (user, group, others)
- file ownership and group management
- usage of chmod, chown, chgrp, sudo, and su
- purpose and behavior of SUID and SGID
- difference between chown and chgrp
- best practices for managing file permissions
- auditing permission changes
- understanding of umask

## Project Tasks

### `0-add_user.sh`
Creates a new user and sets a password using provided arguments.

---

### `1-add_group.sh`
Creates a new group, assigns file ownership, and sets group permissions.

---

### `2-sudo_nopass.sh`
Configures a user to execute commands without requiring a password.

---

### `3-find_files.sh`
Searches for potential SUID-related vulnerabilities in a given directory.

---

### `4-find_suid.sh`
Lists all files with the SUID bit set in a specified directory.

---

### `5-find_sgid.sh`
Lists all files with the SGID bit set in a specified directory.

---

### `6-check_files.sh`
Finds files modified in the last 24 hours with SUID or SGID set.

---

### `7-file_read.sh`
Modifies permissions to make files read-only for others without affecting owner or group.

---

### `8-change_user.sh`
Changes file ownership from one user to another based on conditions.

---

### `9-empty_file.sh`
Finds empty files and grants full permissions to all users.

## Files Included

- `0-add_user.sh`
- `1-add_group.sh`
- `2-sudo_nopass.sh`
- `3-find_files.sh`
- `4-find_suid.sh`
- `5-find_sgid.sh`
- `6-check_files.sh`
- `7-file_read.sh`
- `8-change_user.sh`
- `9-empty_file.sh`

## Tech Stack

- Bash
- Kali Linux
- Linux file system and permission tools

## Requirements

- All scripts run on **Kali Linux**
- Allowed editors: `vi`, `vim`, `emacs`
- All files must be executable
- First line must be:

```bash
#!/bin/bash
````

* No use of backticks, `&&`, or `||`
* Code must follow Betty style

## Usage

Make scripts executable and run them with the appropriate arguments:

```bash
chmod +x script.sh
./script.sh <arguments>
```

Examples:

```bash
./0-add_user.sh username password
./4-find_suid.sh /home
./7-file_read.sh /var/www
```

Some scripts require elevated privileges (`root` or `sudo`).

## Learning Outcomes

* understanding of Linux access control mechanisms
* ability to manage users, groups, and file ownership
* identification of SUID/SGID-related risks
* awareness of privilege escalation vectors
* practical use of permission auditing techniques
* secure configuration of file permissions

## Author

Pierre-Yves
