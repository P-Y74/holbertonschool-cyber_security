# 0x04_content_discovery

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All discovery and enumeration activities were performed in controlled and authorized environments.

The techniques used in this project are intended to understand how hidden web resources can be identified and secured.

## Description

This project focuses on content discovery in web applications and web infrastructure.

It explores how hidden files, directories, subdomains, services, and historical artifacts can expand the attack surface of a target.  
The objective is to understand how attackers map unexposed resources and how defenders can proactively identify and secure them.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It provides hands-on experience with common web discovery techniques and industry-standard enumeration tools.

## Learning Objectives

By the end of this project, the following concepts were studied:

- content discovery principles
- directory and file brute-forcing
- subdomain enumeration
- virtual host fuzzing
- use of wordlists in web security
- manual discovery through headers, sitemap, robots.txt, and favicon analysis
- OSINT techniques for historical and public data research
- fuzzing in the context of web applications

## Project Tasks

### `0-flag.txt`
Flag obtained through manual discovery by analyzing resources such as `robots.txt`, `sitemap.xml`, and `favicon.ico`.

---

### `1-flag.txt`
Flag obtained by inspecting HTTP response headers and identifying hidden information.

---

### `2-vendor.txt`
Contains the live preview URL of the frontend template vendor identified through source code analysis.

---

### `3-senior.txt`
Contains the name identified through OSINT research using historical web data from the Wayback Machine.

---

### `4-flag.txt`
Flag obtained through directory and file brute-forcing using Gobuster in `dir` mode.

---

### `5-flag.txt`
Flag obtained through DNS and zone-related discovery techniques using Gobuster in `dns` mode.

---

### `6-flag.txt`
Flag obtained through subdomain or virtual host fuzzing with `ffuf`.

---

### `7-flag.txt`
Flag obtained through Gobuster `fuzz` mode by identifying hidden paths through parameterized fuzzing.

---

### `8-flag.txt`
Flag obtained through TFTP file brute-forcing using Gobuster in `tftp` mode.

## Files Included

- captured flags (`0-flag.txt`, `1-flag.txt`, `4-flag.txt` to `8-flag.txt`)
- discovery results (`2-vendor.txt`, `3-senior.txt`)

## Tech Stack

- Kali Linux
- Gobuster
- ffuf
- Burp Suite
- browser developer tools
- OSINT resources
- common wordlists (e.g. SecLists)

## Requirements

- All tasks performed on **Kali Linux**
- Allowed editors: `vi`, `vim`, `emacs`
- All files must contain one line
- All files must end with a new line

## Usage

This project is based on manual discovery, fuzzing, and enumeration rather than reusable scripts.

Typical workflow includes:

- analyzing public resources such as `robots.txt`, `sitemap.xml`, and headers
- using wordlists to brute-force directories and files
- enumerating subdomains and virtual hosts
- performing targeted fuzzing against specific URL patterns
- using OSINT to identify historical or third-party information

## Learning Outcomes

- understanding of content discovery and hidden attack surface mapping
- practical use of Gobuster and ffuf
- ability to identify hidden files, directories, and subdomains
- experience with manual web discovery techniques
- introduction to OSINT as part of web security assessments
- awareness of how exposed content increases risk

## Project Status

This project is part of a broader web application security module and may be extended with additional discovery and fuzzing techniques.

## Author

Pierre-Yves
