# 0x06_idor

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All activities were conducted in a controlled and authorized environment.

The techniques demonstrated are intended to understand Insecure Direct Object Reference (IDOR) vulnerabilities and how to prevent them.

## Description

This project focuses on **Insecure Direct Object Reference (IDOR)** vulnerabilities in a simulated banking application.

It explores how improper access control mechanisms allow attackers to access or manipulate resources belonging to other users by modifying identifiers such as user IDs or account numbers.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It simulates real-world vulnerabilities commonly found in financial web applications.

## Learning Objectives

By the end of this project, the following concepts were studied:

- insecure direct object reference (IDOR)
- broken access control mechanisms
- object identifier enumeration
- horizontal and vertical privilege escalation
- business logic flaws in financial applications
- API endpoint manipulation
- secure access control implementation

## Project Tasks

### `0-flag.txt`
Flag obtained by discovering and enumerating user IDs across the application.

---

### `1-flag.txt`
Flag obtained by enumerating account numbers and accessing unauthorized account balances.

---

### `2-flag.txt`
Flag obtained by manipulating wire transfer functionality to increase account balance beyond intended limits.

---

### `3-flag.txt`
Flag obtained by bypassing 3D Secure verification and completing unauthorized payment transactions.

---

### `README.md`
Project documentation and vulnerability overview.

## Files Included

- captured flags (`0-flag.txt` to `3-flag.txt`)

## Tech Stack

- Kali Linux
- Burp Suite
- Web browser (developer tools)
- HTTP request interception and modification
- manual testing and logic analysis

## Requirements

- All tasks performed on **Kali Linux**
- Allowed editors: `vi`, `vim`, `emacs`
- All files must contain one line
- All files must end with a new line

## Usage

This project is based on manual web application testing.

Typical workflow includes:

- analyzing application endpoints and parameters
- identifying exposed object identifiers (user IDs, account numbers)
- modifying requests to access unauthorized resources
- exploiting business logic flaws in transactions
- validating responses to confirm unauthorized access

## Learning Outcomes

- understanding of IDOR vulnerabilities and their impact
- ability to identify and exploit broken access control
- experience with API manipulation and parameter tampering
- understanding of business logic vulnerabilities in financial systems
- improved reasoning and attack chaining skills

## Key Security Insight

IDOR vulnerabilities are not technical flaws in isolation —  
they are failures in **authorization logic**.

Even a perfectly secure backend can be compromised if:

- user input is trusted without verification
- access control checks are missing or improperly implemented

## Project Status

This project is part of a broader web application security module and may be extended with:

- role-based access control (RBAC) testing
- API security assessments
- advanced business logic exploitation scenarios

## Author

Pierre-Yves
