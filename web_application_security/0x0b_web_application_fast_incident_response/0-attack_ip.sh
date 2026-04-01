#!/bin/bash
grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' $1 | sort | uniq -c | sort -r | head -1