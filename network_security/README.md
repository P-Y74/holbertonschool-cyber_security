# network_security

## Disclaimer

This module was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All exercises were performed in controlled environments for learning and defensive security training.

## Description

This directory contains projects focused on network security concepts, reconnaissance techniques, and traffic analysis.

It covers both passive and active reconnaissance methods, network scanning, packet analysis, and service enumeration.  
The objective is to understand how networks are discovered, analyzed, and assessed from a security perspective.

## Educational Context

This work was completed as part of the Holberton School cybersecurity specialization.  
Each project provides hands-on experience with real-world network analysis and security tools.

## Projects

### [0x01_passive_reconnaissance](./0x01_passive_reconnaissance)

Introduction to passive information gathering techniques.

Key elements:
- domain information lookup (WHOIS)
- DNS record analysis (A, MX, TXT)
- use of tools such as `dig` and `subfinder`
- data collection without direct interaction with the target

---

### [0x02_active_reconnaissance](./0x02_active_reconnaissance)

Introduction to active reconnaissance and target interaction.

Key elements:
- identification of open ports
- web server analysis
- discovery of potential entry points
- enumeration of services and resources

---

### [0x04_nmap_live_hosts_discovery](./0x04_nmap_live_hosts_discovery)

Techniques for discovering live hosts on a network.

Key elements:
- ARP scanning
- ICMP-based discovery
- TCP and UDP ping techniques
- host availability detection

---

### [0x05_wireshark_basics](./0x05_wireshark_basics)

Introduction to network traffic analysis using Wireshark.

Key elements:
- packet inspection
- identification of scan types (TCP, UDP, ICMP, ARP)
- understanding network behavior through captured traffic

---

### [0x06_nmap_advanced_port_scans](./0x06_nmap_advanced_port_scans)

Advanced port scanning techniques using Nmap.

Key elements:
- NULL, FIN, and XMAS scans
- evasion techniques
- custom scan configurations
- understanding scan behavior and limitations

---

### [0x07_nmap_post_port_scan_scripting](./0x07_nmap_post_port_scan_scripting)

Post-scan analysis and scripting with Nmap.

Key elements:
- use of Nmap scripts (NSE)
- vulnerability scanning
- service enumeration
- comprehensive scanning strategies

## Tech Stack

- Bash
- Linux environment
- Nmap
- Wireshark
- DNS and network utilities (dig, whois, subfinder)

## Usage

Each project directory contains its own files and may include a dedicated `README.md` with detailed instructions.

Most scripts can be executed in a Linux environment using:

```bash
chmod +x script.sh
./script.sh
````

Some activities involve network scanning and should only be performed in authorized and controlled environments.

## Learning Outcomes

* understanding of passive vs active reconnaissance
* ability to perform network discovery and host identification
* basic and advanced port scanning techniques
* analysis of network traffic and protocols
* use of industry-standard tools (Nmap, Wireshark)
* introduction to service enumeration and vulnerability scanning

## Project Status

This module is part of a broader cybersecurity learning path and may be extended with additional projects over time.

## Author

Pierre-Yves
