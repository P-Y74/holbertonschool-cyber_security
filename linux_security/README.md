# linux_security

## Disclaimer

This module was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All exercises were performed in controlled environments for learning and defensive security training.

## Description

This directory contains projects focused on securing Linux systems and understanding low-level system behaviors.

It covers essential topics such as system auditing, permissions management, access control mechanisms, network services, and basic exploitation concepts.  
The goal is to develop a solid understanding of how Linux systems operate and how they can be secured or analyzed.

## Educational Context

This work was completed as part of the Holberton School cybersecurity specialization.  
Each project provides hands-on experience with real-world system administration and security concepts.

## Projects

### [0x00_linux_security_basics](./0x00_linux_security_basics)

Introduction to Linux security fundamentals and system analysis.

Key elements:
- system auditing scripts
- network connections monitoring
- firewall rules inspection
- service analysis
- basic network scanning and traffic capture

---

### [0x01_permissions_sguid_sgid](./0x01_permissions_sguid_sgid)

Focus on Linux permissions and privilege management.

Key elements:
- user and group management
- SUID and SGID file identification
- privilege escalation concepts
- file access control
- system checks and audits

---

### [0x02_mandatory_access_control](./0x02_mandatory_access_control)

Introduction to Mandatory Access Control systems (SELinux).

Key elements:
- SELinux modes analysis
- policy and context inspection
- port and service configuration
- user and boolean management

---

### [0x03_protocols_servers](./0x03_protocols_servers)

Analysis and hardening of network services and protocols.

Key elements:
- firewall configuration (iptables)
- service auditing and hardening
- protocol analysis (NFS, SNMP, SMTP)
- denial-of-service concepts
- encryption and cipher basics

---

### [0x04_buffer_overflow](./0x04_buffer_overflow)

Introduction to low-level memory concepts and buffer overflow.

Key elements:
- basic C program analysis
- memory manipulation concepts
- heap interaction
- understanding vulnerabilities in a controlled context

## Tech Stack

- Bash
- Linux environment
- C (basic)
- Python (basic scripting)
- System tools (iptables, SELinux, networking tools)

## Usage

Each project directory contains its own files and may include a dedicated `README.md` with detailed instructions.

Most scripts can be executed in a Linux environment using:

```bash
chmod +x script.sh
./script.sh
````

Some projects may require elevated privileges depending on the task (e.g., system auditing or firewall configuration).

## Learning Outcomes

* understanding of Linux system security fundamentals
* management of users, groups, and permissions
* introduction to SELinux and access control mechanisms
* analysis and hardening of network services
* basic understanding of memory-related vulnerabilities
* practical scripting for system security tasks

## Project Status

This module is part of a broader cybersecurity learning path and may be extended with additional projects over time.

## Author

Pierre-Yves
