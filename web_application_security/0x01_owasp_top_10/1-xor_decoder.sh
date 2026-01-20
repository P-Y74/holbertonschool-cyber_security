#!/bin/bash
INPUT="$1"
KEY="_"

ENCODED="${INPUT#\{xor\}}"

DECODED=$(echo "$ENCODED" | base64 --decode)

RESULT=""
KEY_LEN=${#KEY}

for ((i=0; i<${#DECODED}; i++)); do
    d=$(printf '%d' "'${DECODED:$i:1}")
    k=$(printf '%d' "'${KEY:$((i % KEY_LEN)):1}")
    RESULT+=$(printf "\\$(printf '%03o' $((d ^ k)))")
done

echo "$RESULT"
