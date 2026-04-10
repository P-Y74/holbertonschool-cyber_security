# 0x07_nmap_post_port_scan_scripting

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All scanning and scripting activities were performed in controlled and authorized environments.

This project includes vulnerability detection and service enumeration techniques strictly for learning, analysis, and defensive security training.

## Description

This project focuses on post-scan analysis using the Nmap Scripting Engine (NSE).

It explores how NSE scripts can extend Nmap beyond basic port scanning by automating service enumeration, vulnerability checks, and targeted analysis.  
The objective is to understand how scripting can improve reconnaissance efficiency and support defensive assessments.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It provides hands-on experience with NSE-based automation for network and service analysis.

## Learning Objectives

By the end of this project, the following concepts were studied:

- what the Nmap Scripting Engine (NSE) is
- how NSE scripts work and are organized
- different categories of NSE scripts
- how to execute NSE scripts from the command line
- how NSE extends standard Nmap scans
- vulnerability detection and service enumeration with NSE
- documentation concepts related to NSE scripts

## Project Tasks

### `0-nmap_default.sh`
Runs the default NSE scripts against a specified target to gather basic information.

---

### `1-nmap_vulners.sh`
Runs the `vulners` NSE script against ports 80 and 443 to identify known vulnerabilities.

---

### `2-vuln_scan.sh`
Checks for the Apache Struts 2 vulnerability using the `http-vuln-cve2017-5638` NSE script and saves the results.

---

### `3-comprehensive_scan.sh`
Performs a broader security analysis by combining multiple NSE scripts, including:

- `http-vuln-cve2017-5638`
- `ssl-enum-ciphers`
- `ftp-anon`

Results are saved for later review.

---

### `4-vulnerability_scan.sh`
Performs vulnerability detection across multiple services using wildcard-based NSE scripts for:

- web applications
- MySQL
- FTP
- SMTP

Results are saved for later analysis.

---

### `5-service_enumeration.sh`
Performs advanced service enumeration, including:

- service/version detection
- OS detection
- traceroute
- banner grabbing
- SSL/TLS cipher enumeration
- default NSE scripts
- SMB domain enumeration

Results are saved for later analysis.

## Files Included

- `0-nmap_default.sh`
- `1-nmap_vulners.sh`
- `2-vuln_scan.sh`
- `3-comprehensive_scan.sh`
- `4-vulnerability_scan.sh`
- `5-service_enumeration.sh`

## Tech Stack

- Bash
- Kali Linux
- Nmap
- Nmap Scripting Engine (NSE)

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
* `echo` is not allowed
* Code must follow Betty style
* Ports must be referenced by number
* Arguments must be used without quotes

## Usage

Make scripts executable and run them with a target host:

```bash
chmod +x script.sh
./script.sh <target>
```

Examples:

```bash
./0-nmap_default.sh 192.168.1.10
./1-nmap_vulners.sh 192.168.1.10
./5-service_enumeration.sh 192.168.1.10
```

Some scripts generate output files for later analysis.

## Learning Outcomes

* understanding of how NSE extends Nmap capabilities
* practical use of automated service enumeration
* targeted vulnerability detection using NSE scripts
* ability to combine multiple scripts for broader assessments
* improved understanding of post-scan analysis workflows

## Author

Pierre-Yves
