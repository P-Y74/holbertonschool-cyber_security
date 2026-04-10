# 0x03_cryptography_basics

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All exercises were performed in controlled environments for learning, analysis, and defensive security training.

This project includes password hashing and cracking techniques strictly within authorized lab environments.

## Description

This project introduces fundamental concepts of cryptography and their practical applications in cybersecurity.

It covers hashing algorithms, password security, and the use of industry-standard tools such as John the Ripper and hashcat.  
The objective is to understand how cryptographic mechanisms protect data and how weak implementations can be exploited in a controlled environment.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It focuses on both theoretical understanding and hands-on practice with cryptographic tools and techniques.

## Learning Objectives

By the end of this project, the following concepts were studied:

- definition and role of cryptography in cybersecurity
- encryption and decryption principles
- importance of secure password storage
- hash algorithms (sha1, sha256, md5, sha512)
- applications of cryptography
- password cracking methodologies
- usage of John the Ripper
- usage of hashcat

## Project Tasks

### `0-sha1.sh`
Generates a SHA-1 hash from a provided password and stores the result in `0_hash.txt`.

---

### `1-sha256.sh`
Generates a SHA-256 hash from a provided password and stores the result in `1_hash.txt`.

---

### `2-md5.sh`
Generates an MD5 hash from a provided password and stores the result in `2_hash.txt`.

---

### `3-password_hash.sh`
Generates a secure SHA-512 password hash using OpenSSL combined with a random value.

---

### `4-wordlist_john.sh`
Uses John the Ripper in wordlist mode to attempt password cracking based on `hash.txt`.

---

### `5-windows_john.sh`
Cracks NTLM (Windows authentication) hashes using John the Ripper.

---

### `6-crack_john.sh`
Performs password cracking using John the Ripper on a provided hash file.

---

### `7-crack_hashcat.sh`
Performs password cracking using hashcat with a standard attack mode.

---

### `8-combination_hashcat.sh`
Generates a combined wordlist using two input wordlists.

---

### `9-attack_hashcat.sh`
Uses hashcat with combined wordlists to perform advanced password cracking.

## Files Included

- hashing scripts (`0-sha1.sh`, `1-sha256.sh`, `2-md5.sh`, `3-password_hash.sh`)
- cracking scripts (`4-wordlist_john.sh` to `9-attack_hashcat.sh`)
- hash files (`*_hash.txt`, `hash.txt`)
- result files (`*-password.txt`)
- wordlists (`wordlist1.txt`, `wordlist2.txt`)

## Tech Stack

- Bash
- Kali Linux
- OpenSSL
- John the Ripper
- Hashcat

## Requirements

- All scripts run on **Kali Linux**
- Allowed editors: `vi`, `vim`, `emacs`
- Scripts must be exactly 2 lines long
- All files must be executable
- First line must be:

```bash
#!/bin/bash
````

* No use of backticks, `&&`, `||`, or `;`
* Code must follow Betty style
* Cryptographic algorithm names must be written in lowercase

## Usage

Make scripts executable and run them with the appropriate arguments:

```bash
chmod +x script.sh
./script.sh <arguments>
```

Examples:

```bash
./0-sha1.sh mypassword
./4-wordlist_john.sh hash.txt
./7-crack_hashcat.sh hash.txt
./8-combination_hashcat.sh wordlist1.txt wordlist2.txt
```

## Learning Outcomes

* understanding of cryptographic fundamentals
* practical use of hashing algorithms
* secure password handling concepts
* introduction to password cracking techniques
* use of John the Ripper and hashcat
* awareness of weak password risks and attack vectors

## Author

Pierre-Yves
