#!/bin/bash

# Script to analyze the employee schedule

#grep -l " " 0* ./03* | awk -F" " '{print $1, $2, $5, $6}'

cat $1_Dealer_schedule | awk -F" " '{print $1, $2, $5, $6}' | grep "$2"

