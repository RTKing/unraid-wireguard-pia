FROM alpine:latest

RUN apk add --no-cache \
    bash \
    curl \
    jq \
    wireguard-tools \
    ncurses

# Add main work dir to PATH
WORKDIR /pia-scripts

# Copy PIA CA certificate
COPY ./PIA-Information/ca.rsa.4096.crt ./

# Copy scripts to container
COPY ./docker-entrypoint.sh ./
COPY ./PIA-Information/*.sh ./
RUN chmod 755 ./*

# Persistent data
VOLUME /pia

# Container start point
ENTRYPOINT ["./docker-entrypoint.sh"]
