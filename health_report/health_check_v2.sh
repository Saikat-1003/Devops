#!/bin/bash

echo "=============================="
echo "     SERVER HEALTH CHECK"
echo "=============================="

echo ""
echo "---- Hostname ----"
echo "Host: $(hostname)"

echo ""
echo "---- Uptime ----"
UPTIME=$(awk '{print int($1)}' /host/proc/uptime)
DAYS=$((UPTIME / 86400))
HOURS=$(((UPTIME % 86400) / 3600))
MINUTES=$(((UPTIME % 3600) / 60))

echo "Uptime: ${DAYS} days, ${HOURS} hours, ${MINUTES} minutes"

echo ""
echo "---- Memory ----"
awk '
/MemTotal/     {total=$2}
/MemAvailable/ {available=$2}
END {
    printf "Total Memory: %.1f GB\n", total/1024/1024
    printf "Available Memory: %.1f GB\n", available/1024/1024
}' /host/proc/meminfo

echo ""
echo "---- Disk Usage ----"
df -h /host

echo ""
echo "=============================="
echo "     HEALTH CHECK COMPLETE"
echo "=============================="
