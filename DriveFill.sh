#!/bin/sh

i=1
while true; do
  dd if=/dev/zero of=/tmp/fillfile_$i bs=10M count=100
  i=$((i + 1))
done
