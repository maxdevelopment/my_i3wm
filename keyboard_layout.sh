#!/bin/sh
case "$(xset -q | grep -A 0 'LED' | cut -c59-67)" in
  "00001000") KBD="[Ru]" ;;
  "00000000") KBD="[En]" ;;
  *) KBD="unknown" ;;
esac
echo -n $KBD
