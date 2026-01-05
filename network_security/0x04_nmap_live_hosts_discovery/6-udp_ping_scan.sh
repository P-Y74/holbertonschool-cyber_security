#!/bin/bash
sudo nmap -sn -PU53,161,162 --send-ip "$1"