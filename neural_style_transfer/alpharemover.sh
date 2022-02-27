#!/bin/bash

for IP in ./stylePrompts/*;
  do convert "$IP" -alpha off "$IP"
done
