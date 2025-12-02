#!/bin/bash
ps aux --no-headers | grep "^$1" | grep -v " 0 *0 "
