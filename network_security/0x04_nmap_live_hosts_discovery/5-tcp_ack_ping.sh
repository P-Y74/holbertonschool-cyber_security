#!/bin/bash
sudo nmap -sn -PA20,80,443 --send-ip "$1"
