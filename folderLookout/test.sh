#!/bin/bash
A=$(find results/. -type f -print | xargs grep "hello")
if [[ $A == *"hello"* ]]
then
   echo "It's there!"
fi
