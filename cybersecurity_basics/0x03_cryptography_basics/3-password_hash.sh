#!/bin/bash
printf "%s" "$1$(openssl rand -hex 16)" | openssl dgst -sha512 > 3_hash.txt
