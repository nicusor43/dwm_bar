#!/bin/sh

# A dwm_bar function to display information regarding system memory, CPU temperature, and storage
# Joe Standring <git@joestandring.com>
# GNU GPLv3

dwm_resources () {
    # Used and total memory
    MEMUSED=$(free -h | awk '(NR == 2) {print $3}')
    MEMTOT=$(free -h |awk '(NR == 2) {print $2}')
    # CPU temperature
    CPU=$(top -bn1 | grep "Cpu(s)" | \
               sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
               awk '{print 100 - $1"%"}')
  

    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        printf "💻 MEM %s/%s CPU %s " "$MEMUSED" "$MEMTOT" "$CPU" 
    else
        printf "STA | MEM %s/%s CPU %s" "$MEMUSED" "$MEMTOT" "$CPU" 
    fi
    printf "%s\n" "$SEP2"
}

dwm_resources
