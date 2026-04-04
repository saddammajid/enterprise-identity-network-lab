# DHCP Configuration Notes


## DHCP Role in the Lab

DHCP exists to automate client onboarding on the internal lab network. Instead of assigning static addresses to each Windows client, the domain controller provides IP configuration dynamically so clients can:

- join the lab subnet
- receive the correct default gateway
- use the domain controller for DNS
- resolve `corp.lab`

## DHCP Design Intent

Based on the project brief and screenshot evidence, the DHCP configuration is intended to support:

- Lab subnet: `192.168.50.0/24`
- Default gateway: `192.168.50.1`
- DNS server: domain controller at `192.168.50.10`
- Client endpoints: DHCP-based addressing

## Screenshots in This Repository

- `screenshots/server-DHCPmanager.png`
- `screenshots/client1-interface-config.png`


