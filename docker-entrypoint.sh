#!/bin/bash

[ -n "$DEBUG" ] && set -o xtrace

# Export needed variables
export VPN_PROTOCOL="wireguard"
export DISABLE_IPV6="y"
export DIP_TOKEN="n"
export PIA_CONF_PATH="/etc/wireguard/wg0.conf"
export PIA_DNS=true
export PIA_PF=false
export PIA_CONNECT=false
export AUTOCONNECT=false
export PREFERRED_REGION=$PIA_LOCATION

# Default values, if not provided
[[ "$KEEPALIVE" =~ ^[0-9]+$ ]] || export KEEPALIVE=0

# Script Output Locations
outputWireguardConfiguration="/etc/wireguard/wg0.conf"

# Container to Host Locations
ConfigurationDirectory="/pia"
TokenFile="$ConfigurationDirectory/.token"
PortForwardFile="$ConfigurationDirectory/portsig.json"
PiaCertificate="/ca.rsa.4096.crt"
WireguardConfigurationFile="/etc/wireguard/wg0.conf"

# Run setup command
./run_setup.sh

# Create Wireguard Configuration file
# PREFERRED_REGION="$PIA_LOCATION" \
#   VPN_PROTOCOL=wireguard \
#   DISABLE_IPV6=yes \
#   DIP_TOKEN="$DIP_TOKEN" \
#   AUTOCONNECT=false \
#   PIA_PF=false \
#   PIA_DNS=true \
#   PIA_USER="$PIA_USER" \
#   PIA_PASS="$PIA_PASS" \
#   PIA_CONNECT=false \
#   PIA_CONF_PATH="$ConfigurationDirectory"
#   ./run_setup.sh
