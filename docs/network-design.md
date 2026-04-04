# Network Design

## Overview

Uses a simple enterprise-style lab topology built around an isolated internal network and host-provided NAT. This keeps the environment separate from the home network while still allowing outbound internet access when needed.

## Topology

```text
Internet
   |
Host Wi-Fi
   |
Host NAT Router (192.168.50.1)
   |
LabNet - 192.168.50.0/24
   |
+------------------+------------------+------------------+
|                  |                  |                  |
Domain Controller  Client1            Client2
192.168.50.10      DHCP               DHCP
```

## Addressing Plan

- Network: `192.168.50.0/24`
- Host internal adapter / default gateway: `192.168.50.1`
- Domain Controller: `192.168.50.10`
- Clients: DHCP-assigned addresses on the lab subnet

## Component Roles

### Host machine

The host provides the NAT boundary for the lab. This allows the virtual lab network to remain isolated while still reaching external resources through the host's internet connection.

ScreenShots:

- `screenshots/host-labNAT.png`
- `screenshots/host-labswitch-ip.png`

### Domain Controller

The domain controller is the central service node in the lab. In this phase, it is treated as the server providing:

- Active Directory domain services
- DNS for `corp.lab`
- DHCP for client addressing

The server uses a static IP of `192.168.50.10`, which keeps DNS and DHCP references stable for clients.

Screenshots:

- `screenshots/server-DHCPmanager.png`
- `screenshots/server-ADcomputers.png`

### Clients

Clients are configured to receive their network settings through DHCP. They rely on the domain controller for DNS so they can resolve `corp.lab` and locate AD-related services correctly.

Screenshots:

- `screenshots/client1-interface-config.png`
- `screenshots/client1-domainresolve.png`
- `screenshots/client2-domainresolve.png`

## Validation Summary

Based on the current screenshots, the following network outcomes are supported:

- The host has a configured NAT role for the lab network
- The internal lab adapter/gateway is configured
- The domain controller is visible as the central server for the environment
- DHCP is present for client addressing
- Clients can resolve the lab domain through the expected DNS path

