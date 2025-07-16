#!/bin/bash

# === Nmap Automation Tool by Manikanta Reddy ===
# 📍 Includes Ping, SYN, Version, Aggressive, Top 100, UDP, OS Detection, Vulnerability, Firewall Evasion
 
# ==== Configuration ====
TARGETS_FILE="targets.txt"                   # Input: list of IPs/domains
OUTPUT_DIR="nmap_scan_$(date +%F_%H-%M-%S)"  # Output folder with timestamp
mkdir -p "$OUTPUT_DIR"

# ==== Start Scanning ====
echo "[+] Starting full Nmap scan automation..."

while read -r TARGET; do
    echo -e "\n🔍 Scanning Target: $TARGET"
    
    # Ping Scan
    echo "[*] Running Ping Scan..."
    nmap -sn "$TARGET" -oN "$OUTPUT_DIR/${TARGET}_ping.txt"

    # SYN Scan
    echo "[*] Running SYN Scan..."
    nmap -sS "$TARGET" -oN "$OUTPUT_DIR/${TARGET}_syn.txt"

    # Service Version Detection
    echo "[*] Running Service Version Detection..."
    nmap -sS -sV "$TARGET" -oN "$OUTPUT_DIR/${TARGET}_service.txt"

    # Aggressive Scan
    echo "[*] Running Aggressive Scan..."
    nmap -A "$TARGET" -oN "$OUTPUT_DIR/${TARGET}_aggressive.txt"

    # Top 100 Ports
    echo "[*] Scanning Top 100 Ports..."
    nmap --top-ports 100 "$TARGET" -oN "$OUTPUT_DIR/${TARGET}_top100.txt"

    # UDP Scan
    echo "[*] Running UDP Scan..."
    nmap -sU "$TARGET" -oN "$OUTPUT_DIR/${TARGET}_udp.txt"

    # OS Detection
    echo "[*] Running OS Detection..."
    nmap -O "$TARGET" -oN "$OUTPUT_DIR/${TARGET}_os.txt"

    # Vulnerability Scan
    echo "[*] Running Vulnerability Scan..."
    nmap --script vuln "$TARGET" -oN "$OUTPUT_DIR/${TARGET}_vuln.txt"

    # Firewall Evasion Scan
    echo "[*] Running Firewall Evasion Scan..."
    nmap -f --data-length 200 "$TARGET" -oN "$OUTPUT_DIR/${TARGET}_evasion.txt"

    echo "✅ Completed scans for $TARGET"

done < "$TARGETS_FILE"

echo -e "\n🎉 All scans completed! Results are saved in: $OUTPUT_DIR/"
