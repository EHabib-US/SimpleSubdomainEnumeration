Recon Script README

Description
-----------
This is a simple Bash reconnaissance script used to automate basic subdomain enumeration and live host discovery for a given domain. It is intended for learning, labs, CTFs, and lightweight recon workflows.

The script:
- Creates a directory structure for the target domain
- Enumerates subdomains using assetfinder
- Filters and stores discovered subdomains
- Probes which subdomains are alive over HTTPS (port 443)
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
(Optional)
- amass (commented out by default)

Notes
-----
- This script appends results to files; rerunning it without cleanup may cause duplicates
- HTTPS probing is limited to port 443
- The Amass section is optional and may take significant time depending on scope

Intended Use
------------
Educational purposes, labs, CTF environments, and controlled security testing only. Ensure you have permission before running reconnaissance against any target.
