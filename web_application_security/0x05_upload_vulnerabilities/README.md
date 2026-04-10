# 0x05_upload_vulnerabilities

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All exploitation techniques were performed in controlled and authorized environments.

The vulnerabilities explored are intended to understand insecure file upload mechanisms and how to secure them.

## Description

This project focuses on file upload vulnerabilities in web applications.

It explores how insecure upload mechanisms can be exploited to bypass restrictions, upload malicious files, and potentially execute code on the server.  
The objective is to understand how file validation works and how weak implementations can be abused.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It provides hands-on experience with real-world file upload attack scenarios and bypass techniques.

## Learning Objectives

By the end of this project, the following concepts were studied:

- unrestricted file upload vulnerabilities
- client-side vs server-side validation
- MIME type and content-type spoofing
- file extension filtering bypass
- magic number manipulation
- file size restriction bypass
- risks of web shells and remote code execution
- secure file upload best practices

## Project Tasks

### `0-target.txt`
Identification of the vulnerable subdomain exposing an insecure file upload feature.

---

### `1-flag.txt`
Flag obtained by bypassing client-side file type validation.

---

### `2-flag.txt`
Flag obtained by bypassing server-side validation using special characters in file names.

---

### `3-flag.txt`
Flag obtained by bypassing file type validation through magic number manipulation.

---

### `4-flag.txt`
Flag obtained by bypassing file size restrictions and identifying alternative upload vectors.

## Files Included

- target identification (`0-target.txt`)
- captured flags (`1-flag.txt` to `4-flag.txt`)

## Tech Stack

- Kali Linux
- Burp Suite
- Web browser (developer tools)
- manual payload crafting
- HTTP request manipulation

## Requirements

- All tasks performed on **Kali Linux**
- Allowed editors: `vi`, `vim`, `emacs`
- All files must contain one line
- All files must end with a new line

## Usage

This project is based on manual testing and request manipulation.

Typical workflow includes:

- identifying upload endpoints
- analyzing client-side validation (JavaScript)
- intercepting and modifying requests with Burp Suite
- crafting payloads to bypass server-side validation
- testing file execution and behavior

## Learning Outcomes

- understanding of file upload attack vectors
- ability to bypass multiple layers of validation
- practical experience with web shell deployment concepts
- knowledge of file format validation mechanisms
- awareness of secure file handling practices

## Project Status

This project is part of a broader web application security module and may be extended with advanced upload exploitation techniques and defensive implementations.

## Author

Pierre-Yves
