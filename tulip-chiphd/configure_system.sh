#!/bin/sh

exec 1> /dev/kmsg
exec 2> /dev/kmsg

for line in $(cat /proc/cmdline)
do
  key="${line%%=*}"
  value="${line##*=}"
  if [ "$key" = 'eth0_speed' ] ; then
    setprop persist.net.eth0.speed "$value"
  fi
done
