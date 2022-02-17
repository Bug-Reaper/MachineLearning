#!/bin/bash

for IP in ./imagePrompts/*; 
  do for SP in ./stylePrompts/*;
    do 
      uuid=$(uuidgen); 
      printf "\n🤖 JOB DETAILS: =>\nImage Prompt: [%s]\nStyle Prompt: [%s]\nUUID: [%s]\n" $IP $SP $uuid 
      pip list
  done
done

