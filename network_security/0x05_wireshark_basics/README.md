# 0x05_wireshark_basics

## Disclaimer

This project was developed for educational purposes only as part of the Holberton School cybersecurity curriculum.  
All traffic analysis was performed in controlled environments for learning and defensive security training.

## Description

This project introduces network traffic analysis using Wireshark.

It focuses on identifying and understanding different types of network scans by analyzing captured packets and applying filters.  
The objective is to learn how to detect reconnaissance activities by observing network behavior.

## Educational Context

This project was completed as part of the Holberton School cybersecurity specialization.  
It provides hands-on experience with packet analysis and network monitoring techniques.

## Learning Objectives

By the end of this project, the following concepts were studied:

- what Wireshark is and how it works
- how to apply filters in Wireshark
- packet analysis fundamentals
- identification of different scan types through network traffic
- correlation between Nmap commands and packet behavior

## Project Tasks

### `0-ip_scan.txt`
Wireshark filter to detect IP protocol scans (`nmap -sO`).

---

### `1-tcp_syn.txt`
Wireshark filter to detect TCP SYN scans (`nmap -sS`).

---

### `2-tcp_connect_scan.txt`
Wireshark filter to detect TCP Connect scans (`nmap -sT`).

---

### `3-tcp_fin.txt`
Wireshark filter to detect TCP FIN scans (`nmap -sF`).

---

### `4-tcp_ping_sweep.txt`
Wireshark filter to detect TCP SYN/ACK ping sweeps.

---

### `5-udp_port_scan.txt`
Wireshark filter to detect UDP port scans (`nmap -sU`).

---

### `6-udp_ping_sweep.txt`
Wireshark filter to detect UDP-based host discovery.

---

### `7-icmp_ping_sweep.txt`
Wireshark filter to detect ICMP ping sweeps.

---

### `8-arp_scanning.txt`
Wireshark filter to detect ARP scanning activity.

## Files Included

- Wireshark filters (`0-ip_scan.txt` to `8-arp_scanning.txt`)

## Tech Stack

- Kali Linux
- Wireshark
- Nmap (for generating traffic)

## Requirements

- All tasks performed on **Kali Linux**
- Allowed editors: `vi`, `vim`, `emacs`
- Each file must contain exactly 2 lines
- All files must end with a new line
- Filters must be written in `.txt` format

## Usage

Open Wireshark and apply the filters directly in the filter bar.

Example:

```bash id="4z6d41"
ip.addr==192.168.1.1
````

Each file contains a filter designed to detect a specific type of network scan.

## Learning Outcomes

* ability to analyze network traffic using Wireshark
* understanding of how different scans appear at the packet level
* correlation between scanning tools and network behavior
* identification of reconnaissance activity in network captures
* development of defensive monitoring skills

## Author

Pierre-Yves
