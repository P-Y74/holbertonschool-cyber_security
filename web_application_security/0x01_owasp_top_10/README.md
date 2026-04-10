# 0x01_owasp_top_10

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All exercises were performed in controlled and authorized environments.

The vulnerabilities explored are part of standard web security training and are studied to understand how to detect and prevent them.

## Description

This project introduces selected vulnerabilities from the OWASP Top 10 (2021), focusing on practical exploitation scenarios.

It covers key security risks such as broken access control, cryptographic failures, and injection vulnerabilities through hands-on exercises.  
The objective is to understand how common web vulnerabilities work and how they can be exploited and mitigated.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It represents an early exposure to web application security concepts and OWASP methodology.

## Learning Objectives

By the end of this project, the following concepts were explored:

- OWASP Top 10 overview (2021)
- broken access control
- cryptographic failures
- injection vulnerabilities (XSS)
- common web security flaws
- importance of secure authentication and session handling
- risks related to improper input validation

## Project Tasks

### `0-flag.txt`
Flag obtained by exploiting a Broken Access Control vulnerability through session manipulation.

---

### `1-xor_decoder.sh`
Bash script used to decode XOR-encoded data as part of a cryptographic failure scenario.

---

### `2-flag.txt`
Flag obtained after exploiting weak encoding mechanisms and recovering credentials.

---

### `3-flag.txt`
Flag obtained through exploitation of a stored XSS vulnerability (part 1).

---

### `4-vuln.txt`
Identification of a vulnerable input field leading to a stored XSS vulnerability.

## Files Included

- exploitation results (`0-flag.txt`, `2-flag.txt`, `3-flag.txt`)
- decoding script (`1-xor_decoder.sh`)
- vulnerability identification (`4-vuln.txt`)

## Tech Stack

- Bash
- Kali Linux
- Web browser (manual analysis)
- HTTP inspection tools

## Requirements

- All tasks run on **Kali Linux**
- Allowed editors: `vi`, `vim`, `emacs`
- All files must be executable
- First line must be:

```bash
#!/bin/bash
````

* No use of backticks, `&&`, `||`, or `;`
* Code must follow Betty style

## Usage

Example:

```bash
chmod +x 1-xor_decoder.sh
./1-xor_decoder.sh <encoded_value>
```

Other tasks involve manual interaction with web applications and analysis using browser developer tools.

## Learning Outcomes

* understanding of key OWASP Top 10 vulnerabilities
* ability to identify and exploit common web flaws
* basic understanding of session manipulation
* introduction to cryptographic weaknesses
* practical experience with XSS vulnerabilities
* awareness of secure coding practices

## Project Status

This project represents an early stage in web security training and focuses on a subset of OWASP Top 10 (2021).

## Author

Pierre-Yves
