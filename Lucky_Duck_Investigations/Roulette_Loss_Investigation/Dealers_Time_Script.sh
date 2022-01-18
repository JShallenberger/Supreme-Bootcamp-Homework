#!/bin/bash

# Script for March 10 with time, loss and dealer

grep '0315' ./Player_Analysis/Roulette_Losses | grep '02:00:00 PM' | awk '{print $1, $2, $3}' >> Dealers_Working_during_losses && grep '02:00:00 PM' ./Dealer_Analysis/March10RouletteSchedule |awk '{print $3, $4}' >> Dealers_Working_during_losses
