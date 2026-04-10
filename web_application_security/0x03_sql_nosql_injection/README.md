# 0x03_sql_nosql_injection

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All exercises were performed in controlled and authorized environments.

The techniques used in this project are intended to understand how injection vulnerabilities work and how to prevent them.

## Description

This project focuses on SQL injection and NoSQL injection through practical web exploitation exercises.

It explores how insecure input handling can lead to data disclosure, authentication bypass, blind injection, and logical manipulation of database queries.  
The objective is to understand how injection vulnerabilities affect both relational and non-relational databases, and how they can be identified and mitigated.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It provides hands-on experience with manual injection testing in web applications, without relying on automated exploitation tools.

## Learning Objectives

By the end of this project, the following concepts were studied:

- SQL injection fundamentals
- differences between SQLi and NoSQLi
- UNION-based SQL injection
- blind and time-based SQL injection
- second-order SQL injection
- authentication bypass through injection
- importance of input validation
- parameterized queries and secure coding practices
- NoSQL injection in MongoDB-like query structures

## Project Tasks

### `0-vuln.txt`
Identification of parameters vulnerable to SQL injection.

---

### `1-flag.txt`
Flag obtained after extracting database information such as version and table names.

---

### `2-flag.txt`
Flag obtained through data exfiltration from a specific database table.

---

### `3-flag.txt`
Flag obtained through time-based blind SQL injection.

---

### `4-flag.txt`
Flag obtained by exploiting a second-order SQL injection scenario.

---

### `5-vuln.txt`
Identification of an endpoint vulnerable to NoSQL injection.

---

### `6-flag.txt`
Flag obtained by bypassing authentication through NoSQL injection.

---

### `7-flag.txt`
Flag obtained after using NoSQL injection to enumerate accounts and interact with application logic.

## Files Included

- vulnerability identification files (`0-vuln.txt`, `5-vuln.txt`)
- captured flags (`1-flag.txt` to `4-flag.txt`, `6-flag.txt`, `7-flag.txt`)

## Tech Stack

- Kali Linux
- Web browser
- Burp Suite or equivalent HTTP inspection tools
- Manual payload crafting

## Requirements

- All tasks performed on **Kali Linux**
- Allowed editors: `vi`, `vim`, `emacs`
- All files must contain one line
- All files must end with a new line
- `sqlmap` is not allowed for this project

## Usage

This project is based on manual testing and payload crafting rather than reusable scripts.

Typical workflow includes:

- identifying injectable parameters
- crafting SQL or NoSQL payloads manually
- observing responses and application behavior
- iterating on payloads to extract data or bypass authentication

## Learning Outcomes

- understanding of SQL and NoSQL injection mechanics
- ability to identify vulnerable parameters manually
- practical experience with UNION-based and blind SQL injection
- understanding of second-order injection scenarios
- ability to manipulate NoSQL query logic
- awareness of secure database interaction practices

## Project Status

This project is part of a broader web application security module and may be extended with additional injection scenarios and defensive concepts.

## Author

Pierre-Yves
