#!/bin/bash
sudo nmap -sA -p $2 $1 --reason --max-rtt-timeout 1000ms
