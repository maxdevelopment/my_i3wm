#!/bin/sh
if [ $(xset -q | grep -A 0 'LED' | cut -c59-67) -eq 00001000 ] ; then
	xkb-switch -n
fi
