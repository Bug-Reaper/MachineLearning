#!/bin/bash

for IP in ./stylePrompts/*;
  do poetry run python nst.py "$(ls -d /home/llama/flake-style-nueral/neural_style_transfer/imgPrompts/* | shuf | head -1)" "$IP" $(uuidgen)
done
