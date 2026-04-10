# 0x06_nmap_advanced_port_scans

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All scanning activities were performed in controlled and authorized environments.

These techniques are studied to understand network behavior, detection mechanisms, and defensive strategies.

## Description

This project focuses on advanced port scanning techniques using Nmap.

It explores stealth scanning methods and non-standard TCP flag combinations used to identify port states and analyze firewall behavior.  
The objective is to understand how advanced scans work, how they can bypass certain defenses, and how they can be detected.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It provides hands-on experience with advanced reconnaissance techniques used in both offensive and defensive cybersecurity contexts.

## Learning Objectives

By the end of this project, the following concepts were studied:

- advanced Nmap scanning techniques
- differences between standard and advanced scans
- TCP flag manipulation and its impact
- firewall detection and behavior analysis
- stealth scanning methodologies
- interpretation of scan results

## Project Tasks

### `0-null_scan.sh`
Performs a TCP NULL scan on ports 20 to 25.

---

### `1-fin_scan.sh`
Performs a TCP FIN scan with packet fragmentation and reduced timing to increase stealth.

---

### `2-xmas_scan.sh`
Performs a TCP Xmas scan with detailed output and packet analysis.

---

### `3-maimon_scan.sh`
Performs a Maimon scan targeting common service ports (HTTP, HTTPS, FTP, SSH, Telnet).

---

### `4-ask_scan.sh`
Performs a TCP ACK scan to analyze firewall filtering behavior.

---

### `5-window_scan.sh`
Performs a TCP Window scan to infer port states based on TCP window size.

---

### `6-custom_scan.sh`
Executes a custom scan with all TCP flags set and saves results to `custom_scan.txt`.

---

### `custom_scan.txt`
Output file containing results from the custom scan.

## Files Included

- scanning scripts (`0-null_scan.sh` to `6-custom_scan.sh`)
- scan output (`custom_scan.txt`)

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

* Scripts must be executed with `sudo`
* No use of backticks, `&&`, `||`, or `;`
* `echo` is not allowed
* Code must follow Betty style
* Arguments must be used without quotes

## Usage

Run scripts with elevated privileges:

```bash
chmod +x script.sh
sudo ./script.sh <target>
```

Examples:

```bash
sudo ./0-null_scan.sh 192.168.1.1
sudo ./2-xmas_scan.sh 192.168.1.1
sudo ./4-ask_scan.sh 192.168.1.1 22,80,25
```

## Learning Outcomes

* understanding of advanced port scanning techniques
* ability to analyze firewall behavior
* knowledge of stealth scanning methods
* interpretation of non-standard scan results
* awareness of detection and evasion techniques

## Author

Pierre-Yves
