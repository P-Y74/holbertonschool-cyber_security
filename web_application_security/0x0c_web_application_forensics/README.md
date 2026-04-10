# 0x0c_web_application_forensics

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All activities were conducted in a controlled and authorized environment.

The techniques demonstrated are intended to understand web application forensics and incident investigation.

## Description

This project focuses on **web application forensics**, analyzing system and authentication logs to investigate a security incident.

It involves identifying how attackers gained access, determining compromised accounts, analyzing system activity, and proposing mitigation strategies to prevent future incidents.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It simulates a real-world forensic investigation following a system compromise.

## Learning Objectives

By the end of this project, the following concepts were studied:

- digital forensics fundamentals
- web application forensic investigation
- log analysis (auth.log, dmesg)
- attack attribution and tracing
- compromised account identification
- system activity analysis
- incident documentation and reporting
- mitigation and monitoring strategies

## Project Tasks

### `0-service.sh`
Script to identify the service used by attackers to gain access to the system.

---

### `1-operating.sh`
Script to determine the operating system version from system logs.

---

### `2-accounts.sh`
Script to identify the compromised account based on suspicious login patterns.

---

### `3-ips.sh`
Script to count the number of distinct attacker IP addresses.

---

### `4-firewall.sh`
Script to determine how many firewall rules were added during or after the attack.

---

### `5-users.sh`
Script to list all user accounts created on the system.

---

### `README.md`
Project documentation.

## Files Included

- bash scripts for forensic analysis
- system logs:
  - `auth.log`
  - `dmesg`

## Tech Stack

- Kali Linux
- Bash scripting
- Linux log analysis tools (`grep`, `awk`, `sort`, `uniq`)
- forensic investigation methodology

## Requirements

- All scripts executed on **Kali Linux**
- Allowed editors: `vi`, `vim`, `emacs`
- Scripts must:
  - start with `#!/bin/bash`
  - end with a new line
- Files must be executable

## Usage

Each script analyzes the provided logs:

```bash
./0-service.sh auth.log
./1-operating.sh dmesg
./2-accounts.sh auth.log
./3-ips.sh auth.log
./4-firewall.sh auth.log
./5-users.sh auth.log
````

Typical workflow:

* parse authentication logs to identify suspicious activity
* analyze system logs for environment details
* detect brute-force attempts followed by successful login
* identify attacker IPs and behaviors
* extract evidence of system modifications (firewall rules, users)

## Learning Outcomes

* ability to perform forensic analysis on compromised systems
* understanding of attack patterns in authentication logs
* experience in identifying compromised accounts
* ability to correlate multiple data sources (auth.log, dmesg)
* improved incident investigation and reasoning skills
* awareness of post-compromise attacker behavior

## Key Security Insight

Forensics is about **understanding what happened, not just detecting it**.

* logs are the primary source of truth after an incident
* attackers often leave traces through authentication attempts and system changes
* correlating multiple logs provides a complete attack timeline

## Forensic Perspective

This project follows a forensic investigation workflow:

1. evidence collection → logs (`auth.log`, `dmesg`)
2. analysis → identify attacker behavior and entry point
3. attribution → determine attacker IPs and methods
4. impact assessment → compromised accounts and system changes
5. mitigation → propose defensive strategies
6. documentation → formal incident reporting

## Report

A detailed forensic report was created as part of this project:

👉 [https://medium.com/p/60a203e5ccbb/edit](https://medium.com/p/60a203e5ccbb/edit)

## Project Status

This project is part of a broader web application security module and may be extended with:

* timeline reconstruction
* SIEM integration
* automated forensic pipelines
* advanced log correlation

## Author

Pierre-Yves
