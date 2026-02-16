🪟 Windows & WSL Automation Scripts

Production-ready PowerShell and Bash scripts for rapid environment deployment and security hardening

This repository contains the automation scripts I use to provision and secure Windows and Ubuntu WSL environments. Built for speed and repeatability—what takes hours manually takes minutes with these scripts.

🎯 What This Solves
In security engineering, you rebuild environments constantly—testing exploits, spinning up lab infrastructure, hardening fresh systems. These scripts automate:

Fresh System Provisioning: Zero-to-production Windows/Linux setup
Security Baselines: CIS-compliant hardening for both Windows and Ubuntu
Development Environment: Automated installation of security tools and dev dependencies
Network Configuration: Static IP assignment, firewall rules, DNS hardening


🛠️ Key Capabilities
PowerShell (Windows)
✓ Automated security hardening (disable SMBv1, enable Defender, configure UAC)
✓ Bloatware removal and telemetry disabling
✓ Development tool installation (Git, VS Code, Python, Docker)
✓ Network configuration and firewall rule management
Bash (Ubuntu WSL)
✓ Ubuntu security baseline implementation
✓ Automated installation of penetration testing tools
✓ Docker and containerization setup
✓ Python virtual environment configuration

🚀 Real-World Usage
Scenario: New security lab needed for threat research
powershell# Windows: 3 minutes to fully hardened workstation
.\system-setup.ps1 && .\security-hardening.ps1
bash# WSL: 5 minutes to operational testing environment
./ubuntu-setup.sh && ./install-tools.sh --pentest
Result: Hardened, tool-ready environment without manual configuration errors.

🔒 Security First
Every script follows security engineering principles:

Least Privilege: Disables unnecessary services and protocols
Defense in Depth: Multiple security controls per system layer
Auditability: Logging enabled for all critical changes
Idempotent: Safe to run multiple times without breaking the system


📊 Impact

Time Saved: ~2 hours → 5 minutes per system deployment
Consistency: Eliminates manual configuration drift
Security Posture: Automated CIS baseline compliance
Scalability: Same scripts work for 1 machine or 100


This demonstrates: Infrastructure automation, scripting proficiency, security hardening knowledge, and operational efficiency—skills that directly translate to DevSecOps roles.

Clean, professional, speaks to value and impact. Good?no thse are just help adin script for windows and windoers server , wsl shouldt be hardned jsut yet and should comde with toolspre installed4:13 PM🪟 Windows & WSL Admin Scripts

Personal automation scripts for rapid Windows system administration and WSL tooling setup

A collection of PowerShell and Bash scripts I use for managing Windows workstations, Windows Server, and Ubuntu WSL environments. These handle the repetitive tasks—system configuration, software installation, and baseline security—so I can focus on actual work.

🎯 What's Here
PowerShell Scripts (Windows/Windows Server)

System configuration: Network settings, user accounts, services management
Software deployment: Automated installation of common tools and applications
Security baseline: Basic hardening for workstations and servers
Maintenance tasks: Cleanup scripts, log management, performance tuning

Bash Scripts (Ubuntu WSL)

Tool installation: Pre-configured security and development toolsets
Environment setup: Python, Docker, Git configuration
Quick configs: Aliases, dotfiles, shell customization


🚀 Typical Usage
New Windows Workstation
powershell.\setup-workstation.ps1  # Configure settings, install software
.\baseline-security.ps1   # Apply basic security controls
Windows Server Setup
powershell.\configure-server.ps1 -Role WebServer  # IIS, certificates, firewall rules
.\enable-monitoring.ps1                  # Event logging, performance counters
WSL Environment
bash./install-tools.sh  # nmap, wireshark, metasploit, burp suite, etc.
./setup-python.sh   # Python 3.x with common libraries

🛠️ Why These Exist
Manual system administration is slow and error-prone. These scripts:

Save Time: 10-minute manual tasks → 30 seconds scripted
Ensure Consistency: Same configuration every time
Document Changes: Scripts serve as living documentation
Easy Rollback: Know exactly what was changed


📝 Notes

PowerShell scripts require Administrator privileges
WSL scripts assume Ubuntu 22.04 or newer
Designed for personal/lab use—review before using in production


Simple, honest, and shows you automate the boring stuff. Better?
