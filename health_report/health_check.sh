#!/bin/sh
echo "==== Server Health Check ===="
echo "Date       : $(date)"
echo "Hostname   : $(hostname)"
echo "Uptime     : $(uptime -p 2>/dev/null || uptime)"
echo ""
 
echo "---- CPU Load ----"
uptime | awk -F'load average:' '{ print $2 }'
echo ""
 
echo "---- Memory Usage ----"
free -h
echo ""
 
echo "---- Disk Usage ----"
df -h /host
echo ""
 
echo "==== Check Complete ===="
