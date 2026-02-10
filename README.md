# Homelab Infrastructure

Personal home lab used to learn and experiment with virtualization, Linux servers,
networking, and self-hosted services.

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
- Role: Network Attached Storage
- Purpose:
  - Backups for other VMs
  - Media and data management

### VM2 – Ubuntu Server (Game Server)
- Role: Game server host
- Purpose:
  - Hosting multiplayer servers
  - Process management and performance tuning
  - Remote access via SSH

### VM3 – Ubuntu Server (Hosting)
- Role: Web hosting
- Purpose:
  - Hosts my CV website
  - Future services (dashboards, APIs, personal projects)

### VM4 – Planned
- Role: Proxy / Reverse Proxy
- Purpose:
  - Learn Nginx / Traefik
  - Central routing for services
  - SSL and domain-based access

## Network
- ZeroTier One
- Purpose:
  - Secure remote access
  - Private virtual network across devices
