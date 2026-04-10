# 0x01_passive_reconnaissance

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All reconnaissance activities were performed using publicly available information and in controlled environments.

No direct interaction with target systems was performed as part of this project.

## Description

This project introduces passive reconnaissance techniques used to gather information about a target without direct interaction.

It focuses on open-source intelligence (OSINT), DNS analysis, and domain enumeration.  
The objective is to identify publicly exposed information that could be leveraged in a security assessment.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It provides hands-on experience with real-world reconnaissance tools and methodologies.

## Learning Objectives

By the end of this project, the following concepts were studied:

- passive vs active reconnaissance
- DNS fundamentals and record types
- domain information gathering (WHOIS)
- use of tools such as dig, nslookup, and subfinder
- subdomain enumeration techniques
- OSINT data collection from public sources

## Project Tasks

### `0-whois.sh`
Extracts domain registration, administrative, and technical information using WHOIS and formats the output in CSV.

---

### `1-a_record.sh`
Retrieves the A record of a domain using `nslookup`.

---

### `2-mx_record.sh`
Retrieves the MX record of a domain using `nslookup`.

---

### `3-txt_record.sh`
Retrieves the TXT record of a domain using `nslookup`.

---

### `4-dig_all.sh`
Retrieves all DNS records for a domain using `dig`.

---

### `5-subfinder.sh`
Enumerates subdomains using `subfinder` and outputs results in `Host,IP` format.

---

### `holbertonschool_report.md`
OSINT report containing:

- IP ranges associated with the domain
- technologies and frameworks used
- reconnaissance findings based on public sources

---

### CTF Challenges

#### `100-flag.txt`
Extracted flag from TXT records using passive DNS techniques.

#### `101-flag.txt`
Extracted flag from nameserver-related records.

#### `102-flag.txt`
Extracted flag from mail server (MX) records.

## Files Included

- reconnaissance scripts (`0-whois.sh` to `5-subfinder.sh`)
- CTF results (`100-flag.txt`, `101-flag.txt`, `102-flag.txt`)
- domain data (`holbertonschool.com.csv`, `holbertonschool.com.txt`)
- OSINT report (`holbertonschool_report.md`)

## Tech Stack

- Bash
- Kali Linux
- whois
- nslookup
- dig
- subfinder
- OSINT techniques

## Requirements

- All scripts run on **Kali Linux**
- Allowed editors: `vi`, `vim`, `emacs`
- Scripts must be exactly 2 lines long
- All files must be executable
- First line must be:

```bash
#!/bin/bash
````

* Code must follow Betty style
* Arguments must be used without quotes

## Usage

Make scripts executable and run them with the appropriate arguments:

```bash
chmod +x script.sh
./script.sh <domain>
```

Examples:

```bash
./0-whois.sh example.com
./1-a_record.sh example.com
./5-subfinder.sh example.com
```

## Learning Outcomes

* understanding of passive reconnaissance methodologies
* ability to gather domain and DNS information
* use of OSINT tools and techniques
* subdomain enumeration skills
* analysis of publicly exposed infrastructure
* awareness of information leakage risks

## Author

Pierre-Yves
