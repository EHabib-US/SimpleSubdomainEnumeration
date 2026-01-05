<img width="914" height="443" alt="image" src="https://github.com/user-attachments/assets/d97ecc57-9a31-4cf8-9a72-5034a079e228" />

SimpleSubdomainEnumeration
-----------
This is a simple Bash reconnaissance script used to automate basic subdomain enumeration and live host discovery for a given domain. It is intended for learning penetration testing, labs, CTFs, and certifications.

The script:
- Creates a directory structure for the target domain
- Enumerates subdomains using assetfinder
- Filters and stores discovered subdomains
- Probes which subdomains are alive over HTTPS/port 443 (modifiable)
- Saves results to files for later use

Usage
-----
./recon.sh example.com

Directory Structure
-------------------
example.com/
└── recon/
    ├── final.txt   # All discovered subdomains
    └── alive.txt   # Subdomains responding on HTTPS

Requirements
------------
- bash
- assetfinder
- httprobe
- amass (optional, commented out by default)

Notes
-----
- This script appends results to files; rerunning it without cleanup may cause duplicates
- HTTPS probing is limited to port 443
- The Amass section is optional and may take significant time depending on scope
- You may have to run 'chmod +x' on the shell file after downloading it

Intended Use
------------
Educational purposes, labs, CTF environments, and controlled security testing only.
