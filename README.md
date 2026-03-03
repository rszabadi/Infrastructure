# Homelab Infrastructure

Personal home lab used to learn and experiment with virtualization, Linux servers,
networking, and self-hosted services.

*All VMs use the private DNS (192.168.1.240) created in the DNS VM

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
  - 192.168.1.210

### VM2 – Ubuntu Server (Game Server)
- Role: Game server host
- Purpose:
  - Hosting multiplayer servers
  - Process management and performance tuning
  - Remote access via SSH
  - 192.168.1.200

### VM3 – Ubuntu Server (Hosting)
- Role: Web hosting
- Purpose:
  - Hosts my CV website
  - Future services (dashboards, APIs, personal projects)
  - 192.168.1.220

### VM4 – OPNSense (Firewall)
- Role: Firewall
- Purpose:
  - Block incoming and outcoming data
  - Host a vpn service with WireGuard
  - 192.168.1.230
 
### VM5 – Ubuntu Server (DNS)
- Role: Privacy
- Purpose:
  - Create a private DNS via unbound and Pi-hole
  - Block most known ad, malware, phising and scam domains
  - 192.168.1.240

### VM6 – Kali-Linux (Sandbox)
- Role: Sandbox / hacking
- Purpose:
  - Test popular hacking tools
  - Controlled via VNC
  - 192.168.1.250

### VM7 – Planned
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
 
## Network (future)
- WireGuard
- Purpose:
  - Secure remote access
  - Access to private DNS from outside
  - Access to firewall from outside
