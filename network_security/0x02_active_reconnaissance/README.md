# 0x02_active_reconnaissance

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All activities were performed in controlled and authorized environments on dedicated lab machines.

This project involves active interaction with target systems strictly within a legal and supervised context.

## Description

This project introduces active reconnaissance techniques used to gather information through direct interaction with target systems.

It focuses on network scanning, service enumeration, web analysis, and basic vulnerability identification.  
The objective is to understand how attackers actively explore systems and how such activities can be detected and mitigated.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It provides hands-on experience with real-world reconnaissance and vulnerability discovery techniques.

## Learning Objectives

By the end of this project, the following concepts were studied:

- active reconnaissance methodology
- port scanning and service enumeration
- web application analysis
- DNS and host configuration
- OS fingerprinting basics
- use of tools such as nmap, sqlmap, gobuster, and Wappalyzer

## Project Tasks

### `0-ports.txt`
Identification of open ports on the target machine using `nmap`.

---

### `1-webserver.txt`
Detection of web server technology and version using tools such as Wappalyzer.

---

### `100-flag.txt`
First flag obtained through manual inspection of the web application source code.

---

### `2-injectable.txt`
Identification of a potentially vulnerable endpoint through manual testing.

---

### `3-database.txt`
Enumeration of database names using `sqlmap`.

---

### `4-tables.txt`
Identification of the number of tables within the database.

---

### `101-flag.txt`
Second flag obtained through database enumeration and data extraction.

---

### `5-hidden_dir.txt`
Discovery of hidden directories using `gobuster`.

---

### `102-flag.txt`
Third flag obtained from the admin panel after directory discovery.

## Files Included

- reconnaissance results (`0-ports.txt`, `1-webserver.txt`)
- vulnerability findings (`2-injectable.txt`, `3-database.txt`, `4-tables.txt`, `5-hidden_dir.txt`)
- CTF flags (`100-flag.txt`, `101-flag.txt`, `102-flag.txt`)

## Tech Stack

- Kali Linux
- nmap
- sqlmap
- gobuster
- Wappalyzer
- web browser (manual analysis)

## Requirements

- All tasks performed on **Kali Linux**
- Allowed editors: `vi`, `vim`, `emacs`
- Scripts/files must be one line long
- All files must end with a new line

## Usage

This project is based on analysis and results rather than reusable scripts.

Typical workflow includes:

```bash
nmap -top-ports 1000 <target_ip>
sqlmap -u <url> --dbs
gobuster dir -u <url> -w <wordlist>
````

## Learning Outcomes

* understanding of active reconnaissance techniques
* ability to scan and identify open ports and services
* web application analysis and manual inspection skills
* identification of potential vulnerabilities
* use of automated tools for enumeration (sqlmap, gobuster)
* awareness of attack surface discovery

## Author

Pierre-Yves
