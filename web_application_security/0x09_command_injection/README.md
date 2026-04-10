# 0x09_command_injection

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All activities were conducted in controlled and authorized environments.

The techniques demonstrated are intended to understand command injection vulnerabilities and how to prevent them.

## Description

This project focuses on **command injection vulnerabilities** in web applications.

It explores how improper handling of user input can allow attackers to execute arbitrary system commands.  
The project also covers advanced bypass techniques, filter evasion, environment variable abuse, and blind command injection scenarios.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It simulates real-world vulnerabilities commonly found in poorly secured backend command execution features.

## Learning Objectives

By the end of this project, the following concepts were studied:

- command injection fundamentals
- command chaining and execution
- input validation weaknesses
- filter bypass techniques
- bash environment variables (e.g. `$HOME`)
- internal field separator (IFS)
- blind command injection and data exfiltration
- secure coding practices to prevent injection

## Project Tasks

### `0-flag.txt`
Flag obtained by exploiting a basic command injection vulnerability in a ping feature.

---

### `1-flag.txt`
Flag obtained by bypassing input filters and executing commands despite added security restrictions.

---

### `2-flag.txt`
Flag obtained by crafting payloads using environment variables to bypass character restrictions and access protected files.

---

### `3-flag.txt`
Flag obtained via blind command injection by exfiltrating data using external DNS queries.

---

### `4-flag.txt`
Flag obtained by exploiting command injection in an nmap-based functionality.

---

### `README.md`
Project documentation and overview.

## Files Included

- captured flags (`0-flag.txt` to `4-flag.txt`)

## Tech Stack

- Kali Linux
- Burp Suite / HTTP interception tools
- Web browser
- DNS-based exfiltration techniques
- command-line tools (ping, nslookup, nmap)

## Requirements

- All tasks performed on **Kali Linux**
- Allowed editors: `vi`, `vim`, `emacs`
- All scripts must be 2 lines long
- All files must end with a new line

## Usage

This project is based on manual web application testing and payload crafting.

Typical workflow includes:

- identifying user-controlled input passed to system commands
- injecting additional commands via separators or bypass techniques
- bypassing filters using:
  - environment variables (`$HOME`)
  - encoding tricks
  - alternative separators (IFS)
- analyzing application responses
- performing blind injection when no output is returned
- exfiltrating data using DNS or external services

## Learning Outcomes

- understanding of command injection vulnerabilities and their impact
- ability to bypass input validation and filtering mechanisms
- experience with blind injection and data exfiltration techniques
- deeper understanding of shell behavior and environment variables
- improved exploitation methodology for real-world scenarios

## Key Security Insight

Command injection vulnerabilities often arise from:

- unsanitized user input
- direct execution of system commands
- reliance on blacklist filtering instead of proper validation

Even “secured” inputs can often be bypassed with:

- environment variables
- encoding tricks
- indirect execution paths

## Project Status

This project is part of a broader web application security module and may be extended with:

- advanced payload obfuscation
- chaining vulnerabilities (e.g. injection → reverse shell)
- secure coding remediation examples

## Author

Pierre-Yves
