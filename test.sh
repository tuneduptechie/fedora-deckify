#!/bin/bash

# Check if plasmalogin is active
if systemctl is-active --quiet plasmalogin.service; then
    DM_USED="plasmalogin"
    CONFIG_PATH="/etc/plasmalogin.conf" # Adjust based on actual config location
    echo "Detected: Plasma Login Manager"
    
    # Insert your plasmalogin specific logic here
    
# Check if sddm is active
elif systemctl is-active --quiet sddm.service; then
    DM_USED="sddm"
    CONFIG_PATH="/etc/sddm.conf"
    echo "Detected: SDDM"
    
    # Insert your sddm specific logic here
    
else
    echo "Error: Neither plasmalogin nor sddm is currently running."
    exit 1
fi

# Continue with script using $DM_USED or $CONFIG_PATH   
