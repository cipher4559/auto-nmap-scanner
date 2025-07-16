 This project was created using **Prompt Engineering techniques** with the help of OpenAI’s ChatGPT.  
I guided the tool with carefully crafted prompts to automate real-world Nmap scans for cybersecurity workflows.

# auto-nmap-scanner
A simple yet powerful Bash script that automates Nmap scans for multiple targets — perfect for cybersecurity students and pentesters.
## Why I Built This

While learning ethical hacking and cybersecurity at **Boston Institute of Analytics, Hyderabad**, I wanted a quick way to automate repetitive Nmap scans during CTFs and labs. So, I created this script to make recon faster, organized, and less painful.
Whether you're a student, pentester, or just curious — this tool gives you a head start.
##  What It Does

For each target in `target.txt`, this script automatically performs:


| 🔍 Scan Type               | 🧪 Description |
|----------------------------|----------------|
|  **Ping Scan**           | Checks if the host is up |
|  **SYN Scan**            | Stealthy TCP port scan |
|  **Service Version Detection** | Detects services and versions on open ports |
|  **Aggressive Scan**     | Enables OS detection, version detection, script scanning, and traceroute |
|  **Top 100 Ports Scan**  | Scans the top 100 most common TCP ports |
|  **UDP Scan**            | Scans for open UDP ports (slow but important) |
|  **OS Detection**        | Attempts to detect the host’s operating system |
|  **Vulnerability Scan**  | Uses built-in NSE scripts to identify known vulnerabilities |
|  **Firewall Evasion Scan** | Sends fragmented packets to bypass firewalls |
|  **NULL Scan**           | Sends packets with no flags for stealthy detection |
|  **XMAS Scan**           | Sends packets with FIN, PSH, and URG flags to test for filtering |
|  **Default NSE Scripts** | Runs Nmap's default script set for common vulnerabilities and enumeration |

All scan results are saved into a timestamped folder under the `scans/` directory, with separate output files for each scan type.
🛠️ How to Use

### 1️ Clone the Repository
```bash
git clone https://github.com/yourusername/nmap-automation-tool.git
cd nmap-automation-tool
