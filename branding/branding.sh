#!/usr/bin/env bash
set -e

echo "[*] Applying Horus OS branding..."

# /etc/os-release
cat <<EOF > /etc/os-release
NAME="Horus OS"
PRETTY_NAME="Horus OS (Based on Ubuntu)"
ID=horus
ID_LIKE=ubuntu
VERSION_ID="24.04"
VERSION="24.04 LTS"
EOF

# /etc/issue
cat <<EOF > /etc/issue
Horus OS
Based on Ubuntu Linux

EOF

# MOTD
cat <<EOF > /etc/motd
Horus OS 🦅
Terminal-first. Transparent. Unopinionated.

Based on Ubuntu LTS.
EOF

# Hostname (only if default)
if [ "$(hostname)" = "ubuntu" ]; then
  hostnamectl set-hostname horus
fi

echo "[*] Branding applied."
