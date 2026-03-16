#!/bin/bash
sudo nmap -sT -p $2 --exclude-ports $3 $1
