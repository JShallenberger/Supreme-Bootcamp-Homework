!/bin/bash

# Roulette scheudle with day and time for March 10

awk '{print $1, $2, $5, $6}' ./0310_Dealer_schedule > March10RouletteSchedule
