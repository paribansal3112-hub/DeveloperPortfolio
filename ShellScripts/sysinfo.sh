#!/bin/bash
# ============================================================
# Script  : sysinfo.sh
# Author  : Parisha Bansal
# Roll No : YOUR_ROLL_NO
# Purpose : Print a formatted system information report
# Usage   : ./ShellScripts/sysinfo.sh
# ============================================================

NAME="Parisha Bansal"
ROLL_NO="YOUR_ROLL_NO"
CURRENT_DATE=$(date "+%d-%m-%Y %H:%M:%S")

LINE="=============================================================="

# ---------- Header ----------
echo "$LINE"
echo "                 SYSTEM INFORMATION REPORT"
echo "$LINE"
echo "Name     : $NAME"
echo "Roll No  : $ROLL_NO"
echo "Date     : $CURRENT_DATE"
echo "$LINE"

# ---------- CPU Information ----------
CPU_MODEL=$(lscpu | grep "Model name" | sed 's/Model name:[[:space:]]*//')
CPU_THREADS=$(lscpu | awk -F: '/^CPU\(s\):/ {gsub(/ /, "", $2); print $2}')
CORES_PER_SOCKET=$(lscpu | awk -F: '/^Core\(s\) per socket:/ {gsub(/ /, "", $2); print $2}')
SOCKETS=$(lscpu | awk -F: '/^Socket\(s\):/ {gsub(/ /, "", $2); print $2}')
CPU_CORES=$((CORES_PER_SOCKET * SOCKETS))

echo ""
echo "[ CPU INFORMATION ]"
echo "CPU Model        : $CPU_MODEL"
echo "Physical Cores   : $CPU_CORES"
echo "Logical CPUs     : $CPU_THREADS"

# ---------- Memory Information ----------
TOTAL_MEM=$(free -h | awk '/^Mem:/ {print $2}')
USED_MEM=$(free -h | awk '/^Mem:/ {print $3}')

echo ""
echo "[ MEMORY INFORMATION ]"
echo "Total Memory     : $TOTAL_MEM"
echo "Used Memory      : $USED_MEM"

# ---------- Top 3 Processes by CPU ----------
echo ""
echo "[ TOP 3 PROCESSES BY CPU USAGE ]"
printf "%-8s %-12s %-6s %-6s %s\n" "PID" "USER" "%CPU" "%MEM" "COMMAND"
ps -eo pid,user,%cpu,%mem,comm --no-headers | sort -k3 -nr | head -3 | \
    awk '{printf "%-8s %-12s %-6s %-6s %s\n", $1, $2, $3, $4, $5}'

# ---------- Footer ----------
echo ""
echo "$LINE"
echo "Report generated successfully."
echo "$LINE"
