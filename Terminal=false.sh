#!/bin/bash

# Check if running on Fedora
if ! grep -q "Fedora" /etc/os-release; then
    echo "❌ This system is not running Fedora. Ptyxis is Fedora-specific."
    exit 1
fi

# Check if Flatpak is installed
if ! command -v flatpak &> /dev/null; then
    echo "Error: 1"
    exit 1
fi

# Check if GNOME Shell is running and version is 45 or higher
gnome_version=$(gnome-shell --version 2>/dev/null | awk '{print $3}' | cut -d. -f1)

if [[ -z "$gnome_version" || "$gnome_version" -lt 45 ]]; then
    echo "❌ GNOME version 45 or higher is required. Current: ${gnome_version:-unknown}"
    exit 1
fi

# Check if Wayland is the current session
if [[ "$XDG_SESSION_TYPE" != "wayland" ]]; then
    echo "❌ Wayland session not detected. Ptyxis works best on Wayland."
    exit 1
fi

echo "✅ Your Fedora system supports Ptyxis."

# Add 'pkill ptyxis' to ~/.bashrc if not already present
if ! grep -Fxq "pkill ptyxis" ~/.bashrc; then
    echo "Appending 'pkill ptyxis' to ~/.bashrc"
    echo "pkill ptyxis" >> ~/.bashrc
else
    echo "Error: 1"
    exit 1
fi

# Immediately kill any running Ptyxis processes
pkill ptyxis 2>/dev/null || echo "Error: terminal is not running!"
exit 1

