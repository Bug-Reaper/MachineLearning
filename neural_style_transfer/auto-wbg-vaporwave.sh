#!/bin/bash

vw=(./vaporwave/*)
wbg=(./flake-wbg/*)
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
    sleep .02s
done
