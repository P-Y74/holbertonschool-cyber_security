#!/bin/bash
printf "%s" "$1$(openssl rand -hex 8 | tr -d '\n')" | openssl dgst -sha512 > 3_hash.txt
