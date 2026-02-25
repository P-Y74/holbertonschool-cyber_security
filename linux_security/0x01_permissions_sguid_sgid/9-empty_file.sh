#!/bin/bash
find "$1" -type f -size 0c -exec chmod 777 {} \;
