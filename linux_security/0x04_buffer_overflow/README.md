# 0x04_buffer_overflow

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All experiments were conducted in controlled environments for learning and defensive security training.

This project explores low-level vulnerabilities such as buffer overflows strictly to understand their impact and how to prevent them.

## Description

This project introduces the concept of buffer overflows and their impact on system security.

It focuses on understanding how memory is managed, how vulnerabilities can arise from improper handling of buffers, and how such issues can be exploited in controlled environments.  
The objective is to build a foundational understanding of low-level vulnerabilities and their mitigation.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It provides an introduction to memory-related vulnerabilities and secure coding concepts.

## Learning Objectives

By the end of this project, the following concepts were studied:

- definition of buffers and memory allocation
- buffer overflow vulnerabilities and their causes
- types of buffer overflow attacks
- how attackers exploit memory corruption
- detection of buffer overflow vulnerabilities
- consequences of memory exploitation
- mitigation and prevention techniques

## Project Tasks

### `read_write_heap.py`

Interacts with the memory of a running process to locate and replace a string in the heap.

Key elements:
- process memory analysis
- heap inspection
- controlled memory modification
- understanding of process structure

---

### `main.c`

Simple C program used as a target to demonstrate memory behavior and interactions.

---

### Buffer Overflow Report

A detailed report explaining:

- what buffer overflows are
- how they occur
- how they can be exploited
- real-world examples (e.g., Morris Worm, Heartbleed)
- mitigation techniques and secure coding practices

📄 Report link:  
https://medium.com/p/24f21e5fb43a

## Files Included

- `read_write_heap.py`
- `main.c`
- `README.md`

## Tech Stack

- Python 3
- C
- Linux environment
- low-level system interaction

## Requirements

### Python Scripts

- Executed with **Python 3 (Ubuntu 14.04 LTS)**
- First line must be:

```bash
#!/usr/bin/python3
````

* All files must be executable
* Code must follow PEP 8 style
* All modules, classes, and functions must be documented

### General

* Allowed editors: `vi`, `vim`, `emacs`
* All files must end with a new line

## Usage

Run the Python script with:

```bash
chmod +x read_write_heap.py
./read_write_heap.py <pid> <search_string> <replace_string>
```

Example:

```bash
./read_write_heap.py 1234 hello world
```

## Learning Outcomes

* understanding of memory management concepts
* introduction to low-level vulnerabilities
* ability to analyze process memory (heap)
* awareness of exploitation techniques in a controlled context
* understanding of secure coding and mitigation strategies

## Author

Pierre-Yves
