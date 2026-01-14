# Horus OS 

Horus OS is a **TTY-first, Ubuntu-based Linux distribution** designed for
developers, learners, and servers who prefer clarity, control, and terminal-driven workflows.

It ships with a complete **terminal developer toolchain out of the box**
while remaining fully compatible with Ubuntu LTS.

---

## What Horus OS IS

- Terminal-only (no GUI, no display manager)
- Based on **Ubuntu LTS**
- Preloaded with developer tooling (Python, Node.js, Docker, Git)
- SSH-ready and secure by default
- Transparent, minimal, and predictable
- Easy to understand and easy to modify

---

## What Horus OS is NOT

- Not a desktop operating system
- Not beginner-oriented GUI Linux
- Not a replacement for Ubuntu
- Not a locked-down platform
- Not a “next-gen” or experimental distro

Horus OS favors **clarity over cleverness** and **finished over flashy**.

---

## Target Audience

Horus OS is for:

- Developers who live in the terminal
- Students learning Linux, servers, or DevOps
- Home lab and self-hosting users
- Low-resource systems
- Anyone who wants a ready-to-use TTY environment

---

## Included Tooling

Out of the box, Horus OS includes:

- Python 3 (pip, venv)
- Node.js + npm
- Docker + Docker Compose
- Git
- OpenSSH
- tmux, htop, vim, man pages
- UFW firewall
- Automatic security updates

No GUI tools. No background clutter.

---

## Security Defaults

Horus OS ships with **sane, boring defaults**:

- Root SSH login: ❌ disabled
- SSH password login: ❌ disabled
- SSH key authentication: ✅ enabled
- Firewall (UFW): ✅ enabled (SSH only)
- Automatic security updates: ✅ enabled

All security decisions are **documented and reversible**.

---

## Installation

Horus OS is installed using a conversion script on top of Ubuntu Server.

### Requirements

- Fresh Ubuntu Server LTS installation
- Internet connection
- sudo access

### Install

```bash
git clone https://github.com/<your-username>/horus-os.git
cd horus-os/install
sudo ./install.sh
