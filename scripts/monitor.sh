#!/bin/bash

echo "==== SYSTEM MONITOR ===="
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo

echo "---- CPU ----"
top -bn1 | grep "Cpu(s)"

echo
echo "---- MEMORY ----"
free -h

echo
echo "---- DISK ----"
df -h /

echo
echo "---- LOAD ----"
uptime
