# Host NAT setup for the isolated lab network.
# This script reflects the intended Phase 1 design documented in the repo:
# - Internal lab network: 192.168.50.0/24
# - Host gateway/internal adapter: 192.168.50.1

$labInterfaceAlias = "vEthernet (LabNet)"
$labGatewayIp = "192.168.50.1"
$labPrefixLength = 24
$labSubnet = "192.168.50.0/24"
$natName = "LabNAT"

# Assign the host-side IP for the internal switch adapter if it is not already present.
if (-not (Get-NetIPAddress -InterfaceAlias $labInterfaceAlias -AddressFamily IPv4 -ErrorAction SilentlyContinue | Where-Object { $_.IPAddress -eq $labGatewayIp })) {
    New-NetIPAddress -InterfaceAlias $labInterfaceAlias -IPAddress $labGatewayIp -PrefixLength $labPrefixLength
}

# Create the NAT object if it does not already exist.
if (-not (Get-NetNat -Name $natName -ErrorAction SilentlyContinue)) {
    New-NetNat -Name $natName -InternalIPInterfaceAddressPrefix $labSubnet
}

# Validation helpers
Get-NetIPAddress -InterfaceAlias $labInterfaceAlias -AddressFamily IPv4
Get-NetNat -Name $natName
