#!/bin/sh

# A dwm_bar module to display the current backlight brighness with xbacklight
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: xbacklight

dwm_backlight () {
	bright=$(light -G)

	
    printf "%s☀ %.0f%s%%\n" "$SEP1" "$bright"
}

dwm_backlight
