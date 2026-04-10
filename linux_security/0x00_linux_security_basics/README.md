# 0x00_linux_security_basics

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All exercises were performed in controlled environments for learning and defensive security training.

## Description

This project introduces the fundamentals of Linux system security through practical Bash scripting exercises.

It focuses on system monitoring, network analysis, firewall configuration, and the use of industry-standard tools.  
The objective is to understand how to observe, analyze, and secure a Linux system in a real-world context.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It provides hands-on experience with Linux security concepts using tools commonly used by system administrators and security professionals.

## Learning Objectives

By the end of this project, the following concepts were studied:

- Linux system structure and file system hierarchy (FHS)
- system and user activity monitoring
- network traffic analysis and inspection
- firewall configuration and management
- identification of suspicious activity
- use of common Linux security tools (ps, ss, nmap, tcpdump, lynis, iptables, ufw)

## Project Tasks

### `0-login.sh`
Displays the last five user login sessions with corresponding timestamps.

---

### `1-active-connections.sh`
Lists active TCP network connections with associated processes and numerical addresses.

---

### `2-incoming_connections.sh`
Configures firewall rules to allow incoming TCP connections on port 80.

---

### `3-firewall_rules.sh`
Displays all firewall rules from the security table in verbose mode.

---

### `4-network_services.sh`
Lists services, their states, associated ports, and related processes.

---

### `5-audit_system.sh`
Performs a system security audit using automated scanning tools.

---

### `6-capture_analyze.sh`
Captures and analyzes network traffic, limiting the number of packets captured.

---

### `7-scan.sh`
Scans a given subnetwork to identify live hosts.

## Files Included

- `0-login.sh`
- `1-active-connections.sh`
- `2-incoming_connections.sh`
- `3-firewall_rules.sh`
- `4-network_services.sh`
- `5-audit_system.sh`
- `6-capture_analyze.sh`
- `7-scan.sh`

## Tech Stack

- Bash
- Kali Linux
- iproute2
- tcpdump
- nmap
- lynis
- iptables / ufw

## Requirements

- All scripts run on **Kali Linux**
- Allowed editors: `vi`, `vim`, `emacs`
- Scripts must be exactly 2 lines long
- All files must be executable
- First line must be:

```bash
#!/bin/bash
````

* No use of backticks, `&&`, `||`, or `;`
* Code must follow Betty style

Some scripts require elevated privileges (`root` or `sudo`) to run properly.

## Usage

Make scripts executable and run them with the appropriate privileges:

```bash
chmod +x script.sh
sudo ./script.sh
```

Examples:

```bash
sudo ./0-login.sh
sudo ./1-active-connections.sh
sudo ./7-scan.sh 192.168.1.0/24
```

## Learning Outcomes

* ability to monitor user and system activity
* understanding of network connections and socket analysis
* basic firewall configuration and rule inspection
* use of security auditing tools
* network traffic capture and analysis
* host discovery and network scanning techniques

## Author

Pierre-Yves
