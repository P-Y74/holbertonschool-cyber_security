#!/bin/bash
awk '{print $1}' $1 | sort | uniq -c | sort -nr | head -1 | awk '{print $1}'
