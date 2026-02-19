#!/bin/bash
hashcat -a 0 -m 0 "$1" /usr/share/wordlists/rockyou.txt -o 7-password.txt | cut -d: -f2
