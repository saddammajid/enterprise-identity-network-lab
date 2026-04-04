# Enterprise Identity Network Lab

Phase 1 of a Windows enterprise homelab focused on the backend pieces that support domain-joined devices: NAT networking, internal switching, domain controller networking, DHCP, and client name resolution against Active Directory DNS.


## Project Goal

The purpose of this lab is to move beyond basics and document the infrastructure behind enterprise Windows environments.

Current focus:

- Host-based NAT for safe internet access from an isolated lab
- Internal lab network on `192.168.50.0/24`
- Domain controller providing AD, DNS, and DHCP services
- Windows clients receiving addressing from DHCP
- Client DNS resolution against `corp.lab`

## Current Architecture

```text
Internet
   |
Host Wi-Fi
   |
Host NAT Router
   |
LabNet (192.168.50.0/24)
   |
+------------------+------------------+------------------+
|                  |                  |                  |
DC01               Client1            Client2
192.168.50.10      DHCP               DHCP
```

Key network roles:

- Host internal adapter / gateway: `192.168.50.1`
- Domain Controller: `192.168.50.10`
- Domain: `corp.lab`
- Client addressing: DHCP
- Client DNS: Domain Controller

## Scope

- Internal lab networking established with an isolated switch and host gateway
- Host NAT configured to provide internet access into the lab network
- Domain controller baseline built with Active Directory visibility
- DHCP configured for lab clients
- Client network configuration validated
- Client DNS/domain resolution against `corp.lab` validated from both clients

### Host and network foundation

- `screenshots/host-labNAT.png`
  - Host NAT configuration for the lab
- `screenshots/host-labswitch-ip.png`
  - Internal lab switch IP/gateway configuration

### Server services

- `screenshots/server-DHCPmanager.png`
  - DHCP service and scope.
- `screenshots/server-ADcomputers.png`
  - Active Directory is tracking domain computer objects

### Client validation

- `screenshots/client1-interface-config.png`
  - Client network configuration
- `screenshots/client1-domainresolve.png`
  - Client1 resolves the lab domain through DNS
- `screenshots/client2-domainresolve.png`
  - Client2 resolves the lab domain through DNS

## Repository Layout

```text
.
|-- README.md
|-- context 1.txt
|-- docs/
|   |-- network-design.md
|   `-- project-status.md
|-- setup/
|   |-- dc-setup.md
|   |-- dhcp-config.md
|   `-- nat-setup.ps1
`-- screenshots/
```

Planned for the next commit:

- Organizational Units
- Users and groups
- Group Policy Objects
- Additional troubleshooting scenarios
- Final portfolio polish across later phases


