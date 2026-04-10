# 0x00_web_fundamentals

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All exploitation techniques were performed in controlled and authorized environments.

The vulnerabilities explored here are studied to understand how attacks work and how to prevent them.

## Description

This project introduces the fundamentals of web application security through practical exploitation scenarios.

It covers multiple common vulnerabilities such as:

- Host Header Injection
- Cross-Site Scripting (XSS)
- SQL Injection (SQLi)
- Remote Code Execution (RCE)

The objective is to understand how web applications work, identify security flaws, and exploit them in a controlled environment.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It provides hands-on experience with real-world web vulnerabilities and attack techniques.

## Learning Objectives

By the end of this project, the following concepts were studied:

- how web applications work (client/server model)
- communication between front-end and back-end
- stateful vs stateless applications
- web security risks and vulnerabilities
- fundamentals of Bug Bounty methodology
- exploitation of common web vulnerabilities

## Project Tasks

### `1-host_header_injection.sh`
Exploits a Host Header Injection vulnerability using `curl`.

---

### `2-flag.txt`
Flag obtained after exploiting password reset functionality.

---

### `3-xss_payload.txt`
Contains a JavaScript payload exploiting an XSS vulnerability to exfiltrate cookies.

---

### `4-flag.txt`
Flag obtained after exploiting XSS and impersonating a support user.

---

### `5-ticket.txt`
Contains a crafted HTTP request used to exploit a SQL Injection vulnerability.

---

### `6-flag.txt`
Flag obtained after exploiting SQL Injection and accessing admin credentials.

---

### `7-rce_payload.txt`
Payload exploiting command injection to achieve Remote Code Execution.

---

### `8-flag.txt`
Final flag obtained after gaining remote shell access.

## Files Included

- Bash scripts for exploitation
- Payload files (XSS, RCE)
- HTTP request file for SQL injection
- Captured flags

## Tech Stack

- Bash
- Kali Linux
- curl
- sqlmap
- Firefox DevTools
- Netcat (nc)

## Requirements

- All scripts run on **Kali Linux 2023.3**
- Scripts must be exactly 2 lines long
- All files must be executable
- First line must be:

```bash
#!/bin/bash
````

* Code must follow Betty style
* Arguments must be properly handled
* Tools required:

  * `curl`
  * `sqlmap`

## Usage

Example usage:

```bash
chmod +x 1-host_header_injection.sh
./1-host_header_injection.sh <new_host> <target_url> <form_data>
```

Other tasks involve manual interaction using browser tools and security utilities.

## Learning Outcomes

* understanding of common web vulnerabilities (OWASP)
* ability to exploit XSS, SQLi, and RCE
* knowledge of HTTP request manipulation
* practical use of tools like curl and sqlmap
* understanding of attack chains (multi-step exploitation)

## Author

Pierre-Yves
