#!/bin/bash

vw=(./vaporwave/*)
wbg=(./flake-bbg/*)
for ((i=0; i<${#vw[@]}; i++)); do
    #do something to each element of array
    wbgindx=$(expr $i % ${#wbg[@]})
    uuid=$(uuidgen)
    vwimg="${vw[$i]}"
    printf "$wbgindx"
    wbgimg="${wbg[$wbgindx]}"
    printf "\n🔑 New Job Dis UUID: [$uuid]\n"
    printf "🤺 Style Image => [$vwimg]\n"
    printf "☃️ Snow Image => [$wbgimg]\n"
    poetry run python vaporwave-bbg.py "$wbgimg" "$vwimg" "$uuid"
done

sudo shutdown -h now
