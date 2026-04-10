# 0x04_nmap_live_hosts_discovery

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All scanning activities were performed in controlled and authorized environments.

## Description

This project focuses on network host discovery techniques using Nmap.

It explores different methods to identify live hosts within a network without performing full port scans.  
The objective is to understand how various protocols (ARP, ICMP, TCP, UDP) can be used to detect active systems and how network behavior affects scan results.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It provides hands-on experience with Nmap scanning techniques used in real-world network reconnaissance.

## Learning Objectives

By the end of this project, the following concepts were studied:

- how Nmap works
- host discovery techniques
- subnet scanning
- ARP scanning
- ICMP-based discovery methods
- TCP and UDP-based discovery techniques
- differences between scan types and their use cases
- limitations of network scanning depending on privileges and environment

## Project Tasks

### `0-arp_scan.sh`
Discovers live hosts using ARP scan within a local network.

---

### `1-icmp_echo_scan.sh`
Discovers live hosts using ICMP Echo requests (ping scan).

---

### `2-icmp_timestamp_scan.sh`
Discovers live hosts using ICMP Timestamp requests.

---

### `3-icmp_address_mask_scan.sh`
Discovers live hosts using ICMP Address Mask requests.

---

### `4-tcp_syn_ping.sh`
Discovers live hosts using TCP SYN ping on common ports (22, 80, 443).

---

### `5-tcp_ack_ping.sh`
Discovers live hosts using TCP ACK ping on common ports.

---

### `6-udp_ping_scan.sh`
Discovers live hosts using UDP-based scanning (ports 53, 161, 162).

---

### `100-flag.txt`
Flag obtained through targeted scanning of UDP services and version detection.

## Files Included

- scanning scripts (`0-arp_scan.sh` to `6-udp_ping_scan.sh`)
- challenge result (`100-flag.txt`)

## Tech Stack

- Bash
- Kali Linux
- Nmap

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
* Arguments must be used without quotes

Most scans require elevated privileges (`root` or `sudo`) to work properly.

## Usage

Make scripts executable and run them with a target subnet:

```bash
chmod +x script.sh
sudo ./script.sh <subnet>
```

Examples:

```bash
sudo ./0-arp_scan.sh 192.168.1.0/24
sudo ./1-icmp_echo_scan.sh 192.168.1.0/24
sudo ./6-udp_ping_scan.sh 192.168.1.0/24
```

## Learning Outcomes

* understanding of host discovery techniques
* practical use of Nmap for network reconnaissance
* differences between ARP, ICMP, TCP, and UDP scanning
* impact of network configuration on scan results
* awareness of privilege requirements for advanced scans

## Author

Pierre-Yves
