#!/usr/bin/env bash
set -e

echo "================================="
echo "      Horus OS Installer v0.2     "
echo "================================="

# Root check
if [ "$(id -u)" -ne 0 ]; then
  echo "[ERROR] Run as root (use sudo)"
  exit 1
fi

# OS check
if ! grep -qi ubuntu /etc/os-release; then
  echo "[ERROR] Horus OS supports Ubuntu only"
  exit 1
fi

echo "[1/5] Updating system..."
apt update

echo "[2/5] Installing Horus OS packages..."
grep -vE '^\s*#|^\s*$' ../horus-packages.txt | xargs apt install -y

echo "[3/5] Enabling services..."
systemctl enable ssh
systemctl enable docker
systemctl start docker

echo "[4/5] Applying branding..."
../branding/branding.sh

echo "[5/5] Installation complete."
echo "Reboot recommended."
