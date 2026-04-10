# 0x02_mandatory_access_control

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All exercises were performed in controlled environments for learning and defensive security training.

## Description

This project focuses on Mandatory Access Control (MAC) mechanisms in Linux, with a strong emphasis on SELinux and its security model.

It explores how security policies are enforced beyond traditional permission systems, providing fine-grained control over processes, users, and resources.  
The objective is to understand how MAC enhances system security through labeling, policies, and strict access enforcement.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It provides hands-on experience with advanced Linux security mechanisms used in enterprise environments.

## Learning Objectives

By the end of this project, the following concepts were studied:

- Mandatory Access Control (MAC) in Linux
- SELinux architecture and enforcement mechanisms
- differences between SELinux and AppArmor
- role of policies and labels in access control
- Type Enforcement, RBAC, and MLS concepts
- SELinux management and troubleshooting
- user mappings and security contexts
- SELinux booleans and configuration
- importance of audit logs in security

## Project Tasks

### `0-analyse_mode.sh`
Displays the current SELinux mode (enforcing, permissive, or disabled).

---

### `1-security_match.sh`
Displays the status of AppArmor security profiles.

---

### `2-list_http.sh`
Lists SELinux-managed ports and filters those related to HTTP services.

---

### `3-add_port.sh`
Adds a new SELinux port configuration for HTTP traffic (TCP port 81).

---

### `4-list_user.sh`
Lists all SELinux user mappings.

---

### `5-add_selinux.sh`
Creates a new SELinux login mapping for a specified user.

---

### `6-list_booleans.sh`
Lists all SELinux booleans available on the system.

---

### `7-set_sendmail.sh`
Enables the `httpd_can_sendmail` SELinux boolean permanently.

## Files Included

- `0-analyse_mode.sh`
- `1-security_match.sh`
- `2-list_http.sh`
- `3-add_port.sh`
- `4-list_user.sh`
- `5-add_selinux.sh`
- `6-list_booleans.sh`
- `7-set_sendmail.sh`

## Tech Stack

- Bash
- Kali Linux 2023.2
- SELinux tools (`sestatus`, `semanage`, `getsebool`, etc.)
- AppArmor utilities

## Requirements

- All scripts run on **Kali Linux 2023.2**
- Allowed editors: `vi`, `vim`, `emacs`
- Scripts must be exactly 2 lines long
- First line must be:

```bash
#!/bin/bash
````

* All files must end with a new line
* No use of backticks, `&&`, `||`, or `;`
* `printf` is not allowed
* Code must follow Betty style

## Usage

Make scripts executable and run them with the appropriate privileges:

```bash
chmod +x script.sh
sudo ./script.sh
```

Examples:

```bash
sudo ./0-analyse_mode.sh
sudo ./2-list_http.sh
sudo ./5-add_selinux.sh new_user
```

Some scripts require elevated privileges (`root` or `sudo`).

## Learning Outcomes

* understanding of advanced Linux access control mechanisms
* practical use of SELinux for system security
* management of security policies, ports, and user mappings
* configuration of SELinux booleans
* comparison between SELinux and AppArmor
* awareness of least privilege enforcement through MAC

## Author

Pierre-Yves
