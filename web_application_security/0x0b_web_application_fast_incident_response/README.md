# 0x0b_web_application_fast_incident_response

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All activities were conducted in a controlled and authorized environment.

The techniques demonstrated are intended to understand web application incident response and log analysis.

## Description

This project focuses on **fast incident response in web applications**, using log analysis to detect and investigate a potential attack.

It covers identifying the attacker, analyzing the target endpoint, measuring the impact, and determining the tools used.  
The project also includes proposing mitigation strategies based on the findings.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It simulates a real-world scenario where a web server is under attack and must be analyzed quickly.

## Learning Objectives

By the end of this project, the following concepts were studied:

- web application incident response lifecycle
- log analysis and parsing
- attack detection and identification
- denial of service (DoS) indicators
- endpoint targeting analysis
- user-agent inspection
- incident reporting and mitigation strategies
- automation for faster response

## Project Tasks

### `0-attack_ip.sh`
Script to identify the IP address generating the highest number of requests (likely attacker).

---

### `1-endpoint.sh`
Script to determine the most targeted endpoint in the application.

---

### `2-count_attack.sh`
Script to count the number of requests sent by the identified attacker.

---

### `3-library.sh`
Script to identify the tool or library used by the attacker based on User-Agent analysis.

---

### `logs.txt`
Log file used for analysis.

---

### `README.md`
Project documentation.

## Files Included

- bash scripts for log analysis
- attack logs (`logs.txt`)

## Tech Stack

- Kali Linux
- Bash scripting
- standard Linux tools (`grep`, `awk`, `sort`, `uniq`)
- log analysis techniques

## Requirements

- All scripts executed on **Kali Linux**
- Allowed editors: `vi`, `vim`, `emacs`
- Scripts must:
  - start with `#!/bin/bash`
  - end with a new line
- Files must be executable

## Usage

Each script processes the provided log file:

```bash
./0-attack_ip.sh logs.txt
./1-endpoint.sh logs.txt
./2-count_attack.sh logs.txt
./3-library.sh logs.txt
````

Typical workflow:

* extract relevant fields from logs (IP, endpoints, user-agent)
* aggregate and count occurrences
* identify anomalies and dominant patterns
* correlate findings to determine attacker behavior

## Learning Outcomes

* ability to quickly identify attack sources from logs
* understanding of DoS attack patterns
* experience in analyzing HTTP logs
* ability to extract meaningful insights from raw data
* improved incident investigation methodology
* introduction to defensive cybersecurity practices

## Key Security Insight

Fast detection is critical in incident response:

* the longer an attack goes unnoticed, the greater the impact
* log analysis is one of the most powerful tools for detection
* automation significantly reduces response time

## Incident Response Perspective

This project follows key incident response stages:

1. detection → identify abnormal activity in logs
2. analysis → determine attacker, target, and impact
3. containment → identify what should be blocked or limited
4. mitigation → propose defensive strategies
5. review → improve future detection and response

## Report

A detailed incident response report was created as part of this project:

👉 [https://docs.google.com/document/d/1li8lpjYuW80oVFGyFo2glIk65AhH0VqwUoVp5m56zt0/edit?usp=sharing](https://docs.google.com/document/d/1li8lpjYuW80oVFGyFo2glIk65AhH0VqwUoVp5m56zt0/edit?usp=sharing)

## Project Status

This project is part of a broader web application security module and may be extended with:

* SIEM integration
* real-time monitoring
* automated alerting systems
* log correlation across multiple sources

## Author

Pierre-Yves
