# Domain Controller Setup Notes


## Server Role in Phase 1

The domain controller is the core service node for the lab and is treated as providing:

- Active Directory Domain Services
- DNS for the internal lab domain
- DHCP for client IP assignment

Domain used in the lab:

- `corp.lab`

Static server IP used in the design:

- `192.168.50.10`

Default gateway used in the design:

- `192.168.50.1`

## Configuration Summary

The current repository supports the following summary of server-side setup:

1. A Windows Server VM was placed on the isolated internal lab network.
2. The server was assigned the static IP `192.168.50.10`.
3. The environment was built around the `corp.lab` domain.
4. DHCP management is present and visible in the lab.
5. Active Directory computer visibility is present and visible in the lab.

## Screenshots in This Repository

- `screenshots/server-DHCPmanager.png`
- `screenshots/server-ADcomputers.png`



