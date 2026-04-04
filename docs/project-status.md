# Project Status

## Current Repository State

This repository currently represents Phase 1 of the homelab only. The documentation and claims below are limited to what is supported by the existing screenshots and project brief.

## Completed

- Internal lab network established on `192.168.50.0/24`
- Host gateway/internal adapter documented as `192.168.50.1`
- Host NAT configured for outbound access from the isolated lab
- Domain controller baseline established at `192.168.50.10`
- DHCP service visible and documented
- Active Directory computer visibility documented
- Client network configuration captured
- Client DNS/domain resolution against `corp.lab` captured from both clients

## Evidence Map

- `host-labNAT.png`: host NAT proof
- `host-labswitch-ip.png`: host lab switch/internal adapter addressing proof
- `server-DHCPmanager.png`: DHCP management proof
- `server-ADcomputers.png`: Active Directory computer object visibility proof
- `client1-interface-config.png`: client network configuration proof
- `client1-domainresolve.png`: Client1 DNS/domain resolution proof
- `client2-domainresolve.png`: Client2 DNS/domain resolution proof


## Next Commit Scope

The next commit should build directly on this baseline by adding:

- OU structure inside `corp.lab`
- A small user and group model
- Interview-friendly GPO examples
- Screenshots showing policy configuration and application
- Updated documentation for post-Phase-1 work

