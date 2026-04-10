# 0x07_file_inclusion

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All activities were performed in controlled and authorized environments.

The techniques explored in this project are intended to understand file inclusion vulnerabilities and how to prevent them.

## Description

This project focuses on file inclusion vulnerabilities in web applications.

It explores how insecure handling of file paths and user-controlled input can lead to Local File Inclusion (LFI), Remote File Inclusion (RFI), filter bypasses, template abuse, and escalation toward code execution in controlled scenarios.  
The objective is to understand how file inclusion flaws work, how they can be exploited, and how they should be mitigated.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It provides hands-on experience with common file inclusion attack paths and related web application weaknesses.

## Learning Objectives

By the end of this project, the following concepts were studied:

- local file inclusion (LFI)
- remote file inclusion (RFI)
- path traversal techniques
- file inclusion filter bypasses
- the use of `../../` in path manipulation
- how LFI can lead to remote code execution
- detection and mitigation of file inclusion vulnerabilities
- secure handling of file paths and templates

## Project Tasks

### `0-flag.txt`
Flag obtained by identifying a vulnerable file access endpoint and reading a sensitive file from the system.

---

### `1-flag.txt`
Flag obtained by bypassing additional file access restrictions and retrieving a protected file.

---

### `2-flag.txt`
Flag obtained by exploiting a more restricted inclusion flow through alternative path handling or bypass techniques.

---

### `3-flag.txt`
Flag obtained through abuse of report rendering logic and template behavior in a Jinja2-based context.

---

### `4-flag.txt`
Flag obtained by progressing through multiple application behaviors, including file access and log-related exploitation steps.

## Files Included

- captured flags (`0-flag.txt` to `4-flag.txt`)

## Tech Stack

- Kali Linux
- Web browser
- Burp Suite or equivalent HTTP inspection tools
- manual payload crafting
- Jinja2 template context analysis

## Requirements

- All tasks performed on **Kali Linux**
- Allowed editors: `vi`, `vim`, `emacs`
- All files must contain one line
- All files must end with a new line

## Usage

This project is based on manual testing and request manipulation rather than reusable scripts.

Typical workflow includes:

- identifying endpoints that process file paths
- testing path traversal and inclusion behavior
- analyzing hidden routes and page source
- experimenting with encoding and filter bypass techniques
- observing server-side rendering behavior
- chaining multiple application features to reach sensitive files

## Learning Outcomes

- understanding of file inclusion vulnerabilities and their impact
- practical experience with path traversal and inclusion testing
- awareness of how weak filtering can be bypassed
- understanding of the relationship between LFI and code execution
- improved reasoning around multi-step web exploitation chains
- awareness of secure file handling and template rendering practices

## Project Status

This project is part of a broader web application security module and may be extended with additional file handling and server-side rendering security scenarios.

## Author

Pierre-Yves
