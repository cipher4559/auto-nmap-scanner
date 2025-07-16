# auto-nmap-scanner
A simple yet powerful Bash script that automates Nmap scans for multiple targets — perfect for cybersecurity students and pentesters.
## Why I Built This

While learning ethical hacking and cybersecurity at **Boston Institute of Analytics, Hyderabad**, I wanted a quick way to automate repetitive Nmap scans during CTFs and labs. So, I created this script to make recon faster, organized, and less painful.
Whether you're a student, pentester, or just curious — this tool gives you a head start.
##  What It Does

For each target in `target.txt`, this script automatically performs:

-  **Full TCP Port Scan** (`-p-`)
-  **Service & Version Detection** (`-sV`)
-  **Operating System Detection** (`-O`)
-  **Vulnerability Scanning** (`--script vuln`)
-  **UDP Scan** (`-sU`)
-  **Aggressive Scan** (`-A`)
-  **Firewall Evasion Scan** (`-f --data-length 200`)

All scan results are saved into a timestamped folder under the `scans/` directory, with separate output files for each scan type.
