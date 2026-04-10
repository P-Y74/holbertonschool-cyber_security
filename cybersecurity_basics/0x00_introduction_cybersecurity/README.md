# 0x00_introduction_cybersecurity

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All exercises were completed in a controlled environment for learning and defensive security training.

## Description

This project introduces fundamental cybersecurity concepts through a mix of theory and simple Bash scripting exercises.

It covers core topics such as the CIA triad, encryption, risk management, access control, authentication, common threats, and basic security practices.  
The practical part focuses on small Linux-based tasks related to system identification, password generation, file integrity verification, SSH key generation, and process monitoring.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
Its purpose is to build a first technical foundation in cybersecurity while developing basic command-line and scripting skills in a Linux environment.

## Learning Objectives

By the end of this project, the following concepts were studied:

- definition and purpose of cybersecurity
- core principles of cybersecurity (CIA triad)
- role of encryption in security
- basics of risk management
- common cybersecurity threats
- difference between a virus and a worm
- social engineering concepts
- components of an information security program
- role of security policies and frameworks
- purpose of the OWASP Top Ten
- role of access control
- benefits of multi-factor authentication
- common methods for securing a network

## Project Tasks

### `0-release.sh`
Displays the Linux distributor ID in a concise single-line format.

### `1-gen_password.sh`
Generates a strong random password from `/dev/urandom` using an alphanumeric character set.  
The password length is provided as a command-line argument.

### `2-sha256_validator.sh`
Validates the integrity of a file by comparing its SHA-256 hash value.

### `3-gen_key.sh`
Generates a 4096-bit RSA SSH key pair using OpenSSH.

### `4-root_process.sh`
Monitors the processes started by a specified user using `ps`, while filtering irrelevant entries.

## Files Included

- `0-release.sh`
- `1-gen_password.sh`
- `2-sha256_validator.sh`
- `3-gen_key.sh`
- `4-root_process.sh`
- `new_key`
- `new_key.pub`
- `test_file`

## Tech Stack

- Bash
- Kali Linux 2023.2
- OpenSSH
- Standard Linux utilities

## Requirements

- All files were designed to run on **Kali Linux 2023.2**
- Allowed editors: `vi`, `vim`, `emacs`
- The first line of each script must be exactly:

```bash
#!/bin/bash
````

* All files must end with a new line
* All scripts must be less than 2 lines long
* Backticks, `&&`, `||`, and `;` are not allowed
* `printf` is not allowed
* Code must follow Betty style

## Usage

Make the script executable and run it from a Linux terminal:

```bash
chmod +x script.sh
./script.sh
```

Examples:

```bash
./1-gen_password.sh 16
./2-sha256_validator.sh test_file expected_hash
./4-root_process.sh root
```

## Learning Outcomes

* understanding of basic cybersecurity principles
* first practical use of Bash for security-related tasks
* password generation with Linux entropy sources
* file integrity verification using hashing
* SSH key generation and basic key management
* process monitoring in a Linux environment

## Author

Pierre-Yves
