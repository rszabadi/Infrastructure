# Homelab Infrastructure

Personal home lab used to learn and experiment with virtualization, Linux servers, networking, and self-hosted services.

The server is not running 24/7, so some services may only be available when the homelab is powered on.

## Hardware

- **CPU:** Intel i5-11400
- **RAM:** 32GB DDR4
- **Storage:**
  - 2TB NVMe M.2 (primary)
  - 1TB SATA SSD (secondary)

## Hypervisor

- Proxmox VE 9.1.1

## Virtual Machines & Services

### VM1 – OMV (NAS)

- **Status:** 🟢 Active
- **Role:** Network Attached Storage
- **Purpose:**
  - Backups for other VMs
  - Media and data storage
- **IP:** `192.168.1.210`

### VM2 – Ubuntu Server (Game Server)

- **Status:** ⚪ Inactive
- **Role:** Game server host
- **Purpose:**
  - Hosting multiplayer servers
  - Process management and performance tuning
  - Remote access via SSH
- **IP:** `192.168.1.200`

### VM3 – Ubuntu Server (Hosting)

- **Status:** 🟢 Active
- **Role:** Web hosting
- **Purpose:**
  - Hosts my CV website
  - Future services such as dashboards, APIs, and personal projects
- **IP:** `192.168.1.220`

### VM4 – OPNsense (Firewall)

- **Status:** ⚪ Inactive
- **Role:** Firewall
- **Purpose:**
  - Block incoming and outbound traffic
  - Host a VPN service with WireGuard
- **IP:** `192.168.1.230`

### VM5 – Ubuntu Server (DNS)

- **Status:** 🟢 Active
- **Role:** DNS / Network filtering
- **Purpose:**
  - Local DNS using Unbound and Pi-hole
  - Block known ad, malware, phishing, and scam domains
- **IP:** `192.168.1.240`

### VM6 – Kali Linux (Sandbox)

- **Status:** ⚪ Inactive
- **Role:** Security testing sandbox
- **Purpose:**
  - Test security tools
  - Controlled via VNC
- **IP:** `192.168.1.250`

### VM7 – Planned

- **Status:** ⚪ Inactive
- **Role:** Proxy / Reverse Proxy
- **Purpose:**
  - Learn Nginx / Traefik
  - Central routing for services
  - SSL and domain-based access

## DNS

The local DNS server runs on **VM5** using Pi-hole and Unbound.

- **VMs:**
  - Primary DNS: `192.168.1.240`
  - No secondary DNS

- **Other local devices:**
  - Primary DNS: `192.168.1.240`
  - Secondary DNS: `9.9.9.9` (Quad9)

## Network

### ZeroTier One

- Secure remote access
- Private virtual network across devices

### WireGuard (Future)

- Secure remote access
- Access to local services from outside the network
- Remote access to the firewall
