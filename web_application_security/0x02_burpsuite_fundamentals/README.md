# 0x02_burpsuite_fundamentals

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All testing activities were performed in controlled and authorized environments.

The techniques used in this project are intended for security assessment and defensive purposes only.

## Description

This project introduces the fundamentals of web application testing using Burp Suite.

It focuses on intercepting, analyzing, and manipulating HTTP/HTTPS traffic to identify vulnerabilities in web applications.  
The objective is to understand how web requests and responses can be modified to uncover security flaws.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It provides hands-on experience with Burp Suite, an industry-standard tool used in web application security testing.

## Learning Objectives

By the end of this project, the following concepts were studied:

- Burp Suite architecture and components
- proxy configuration and traffic interception
- HTTPS inspection and certificate handling
- request and response manipulation
- use of Repeater, Intruder, Sequencer, and Decoder
- identification of common web vulnerabilities

## Project Tasks

### `0-flag.txt`
Flag obtained by configuring Burp Suite and analyzing TLS certificate details.

---

### `1-flag.txt`
Flag obtained after configuring client-side TLS authentication.

---

### `2-flag.txt`
Flag obtained by modifying server responses to reveal hidden data.

---

### `3-flag.txt`
Flag obtained using Repeater to manipulate authentication requests.

---

### `4-flag.txt`
Flag obtained using Intruder to enumerate hidden resources.

---

### `5-flag.txt`
Flag obtained using Sequencer to analyze and exploit weak session tokens.

---

### `6-flag.txt`
Flag obtained by decoding and modifying a Bearer token to escalate privileges.

## Files Included

- task results (`0-flag.txt` to `6-flag.txt`)

## Tech Stack

- Kali Linux
- Burp Suite Community Edition
- Web browser (proxy configured)

## Requirements

- All tasks performed on **Kali Linux**
- Allowed editors: `vi`, `vim`, `emacs`
- All files must contain one line
- All files must end with a new line

## Usage

This project is based on interactive testing using Burp Suite.

Typical workflow:

1. Configure browser proxy to Burp Suite
2. Intercept HTTP/HTTPS traffic
3. Analyze and modify requests/responses
4. Use Burp tools (Repeater, Intruder, Sequencer, Decoder)

## Learning Outcomes

- ability to intercept and analyze web traffic
- understanding of HTTP request/response structure
- practical use of Burp Suite tools
- identification of authentication and session weaknesses
- manipulation of tokens and encoded data
- understanding of web application attack surfaces

## Project Status

This project is part of a broader web application security module and may be extended with advanced Burp Suite usage and automated testing techniques.

## Author

Pierre-Yves
