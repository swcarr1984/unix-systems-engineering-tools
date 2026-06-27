#!/bin/bash
# ---------------------------------------------------------
# System Health Snapshot Script
# For: Personal Ubuntu/Linux machine status reporting
# Logs CPU, memory, disk, network, temperature, and services
# ---------------------------------------------------------

LOG_DIR="$HOME/system-health"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
LOG_FILE="$LOG_DIR/health_$TIMESTAMP.log"

mkdir -p "$LOG_DIR"

{
    echo "===== System Health Report — $TIMESTAMP ====="
    echo

    echo "--- CPU Load ---"
    uptime
    echo

    echo "--- Memory Usage ---"
    free -h
    echo

    echo "--- Disk Usage ---"
    df -h /
    echo

    echo "--- Network Status ---"
    ip -4 addr show
    echo

    echo "--- Active Network Connections ---"
    ss -tuna | head -20
    echo

    echo "--- System Temperature ---"
    if command -v sensors >/dev/null 2>&1; then
        sensors | head -10
    else
        echo "lm-sensors not installed"
    fi
    echo

    echo "--- Running Services (systemd) ---"
    systemctl --type=service --state=running | head -20
    echo

    echo "===== End of Report ====="
} >> "$LOG_FILE"
