#!/bin/bash
sudo nmap -sn -PS22,80,443 --send-ip "$1"
