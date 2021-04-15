#!/bin/bash
CURRENT_GOVERNOR=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)

echo "$CURRENT_GOVERNOR"

if [ $CURRENT_GOVERNOR = "powersave" ]; then
    cpupower frequency-set -g performance;
else
    cpupower frequency-set -g powersave;
fi
