#!/bin/bash

# 50 channels, each for 14s; 50*14 is 700, gather 1 cycle at each freq

for I in `seq 910 1 919`; do
    let J=$I+1
    rtl_power -g 0.9 -p -39.906 -f ${I}M:${J}M:5000 -c 20% -i 1s \
	-e 700s rtl_power-${I}M-${J}M-5000-I1.csv
done
