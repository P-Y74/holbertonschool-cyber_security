# 0x03_protocols_servers

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All exercises were performed in controlled environments for learning and defensive security training.

## Description

This project focuses on network protocols, server configurations, and their associated security risks.

It explores how common services operate, how to audit them, and how to identify potential vulnerabilities.  
The objective is to understand how misconfigurations and outdated protocols can expose systems, and how to apply basic hardening techniques.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It provides hands-on experience with real-world protocols, services, and security auditing practices.

## Learning Objectives

By the end of this project, the following concepts were studied:

- purpose and behavior of common network protocols (NFS, SMTP, SNMP, SSH)
- role of port numbers in network communication
- differences between secure and insecure protocols
- importance of encryption (SSL/TLS)
- risks associated with misconfigured services
- basic server hardening techniques
- vulnerability detection using auditing tools

## Project Tasks

### `0-iptables.sh`
Displays all current iptables rules in a readable format with line numbers.

---

### `1-audit.sh`
Audits SSH configuration to identify non-standard or potentially insecure settings.

---

### `2-harden.sh`
Finds world-writable directories and applies more secure permission settings.

---

### `3-identify.sh`
Performs a vulnerability scan using the lynis auditing tool.

---

### `4-nfs.sh`
Checks for NFS shares accessible to unauthorized users.

---

### `5-snmp.sh`
Identifies insecure SNMP configurations allowing public access.

---

### `6-smtp.sh`
Analyzes SMTP server configuration and checks for missing security features such as STARTTLS.

---

### `7-dos.sh`
Simulates a basic denial-of-service scenario on an HTTP server using network tools in a controlled environment.

---

### `8-cipher.sh`
Tests SSL/TLS configurations and identifies weak encryption ciphers.

---

### `9-firewall.sh`
Implements basic iptables firewall rules to restrict incoming traffic while allowing SSH access.

## Files Included

- `0-iptables.sh`
- `1-audit.sh`
- `2-harden.sh`
- `3-identify.sh`
- `4-nfs.sh`
- `5-snmp.sh`
- `6-smtp.sh`
- `7-dos.sh`
- `8-cipher.sh`
- `9-firewall.sh`

## Tech Stack

- Bash
- Kali Linux 2023.2
- iptables
- lynis
- nmap
- hping3
- standard Linux networking tools

## Requirements

- All scripts run on **Kali Linux 2023.2**
- Allowed editors: `vi`, `vim`, `emacs`
- Scripts must be 2 lines long (except where specified)
- First line must be:

```bash
#!/bin/bash
````

* All files must end with a new line
* Code must follow Betty style

## Usage

Make scripts executable and run them with the appropriate privileges:

```bash
chmod +x script.sh
sudo ./script.sh
```

Examples:

```bash
sudo ./0-iptables.sh
sudo ./3-identify.sh
sudo ./8-cipher.sh
```

Some scripts require elevated privileges (`root` or `sudo`).

## Learning Outcomes

* understanding of common network protocols and their security implications
* ability to audit server configurations
* identification of insecure services and misconfigurations
* basic system hardening techniques
* use of security tools for vulnerability detection
* awareness of encryption weaknesses and attack vectors

## Author

Pierre-Yves
