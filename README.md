# Manage PIA VPN for unRAID

- Notes to come

## Local Commands

Docker Run

```CMD
docker run -it --rm -e PIA_LOCATION="us_atlanta" -e PIA_USER="p4027245" -e PIA_PASS='RollTide!2022' rtking18/unraid-wireguard-pia:local
```

Docker Build

```CMD
docker build -t rtking18/unraid-wireguard-pia:local .
```