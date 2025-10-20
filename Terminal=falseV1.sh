#!/bin/sh

if [ -e /etc/wsl.conf ]; then
  echo "Error: /etc/wsl.conf exists — aborting." >&2
  # If the script is being sourced, return; otherwise exit.
  if (return 0 2>/dev/null); then
    return 1
  else
    exit 1
  fi
fi
