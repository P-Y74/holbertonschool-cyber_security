#!/bin/bash
grep -v -e '^[[:space:]]*$' -e '^#' /etc/ssh/sshd_config
