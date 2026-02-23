#!/bin/bash
groupadd "$1"
chgrp "$1" "$2"
chmod 674 "$2"
