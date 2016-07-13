#!/bin/bash

#file=/My Container/Team-1-Data/team-1.csv

echo Please answer the following questions in lowercase.
# ask What is your name?
echo "What is your first name?"
# read name
read name
# ask "How many pets do you have?"
echo "How many pets do you have?"
# read pets
read pets
# ask "How many siblings do you have?"
echo "How many siblings do you have?"
# read siblings
read siblings
# ask "Do you prefer Mac or PC?"
echo "Do you prefer Mac or PC?"
# read comp
read comp
# ask pokemon go
echo "Yes or no, do you play POKEMON GO?"
# read pokemon
read pokemon

var3=$pokemon

# this is an if statement to see if you play pokemon, if you do it will ask you how many you've caught
if [ "yes" = "$var3" ]; then
  echo "How many have you caught?"
read number
 if [ ! -e team-1.csv ]; then
  touch team-1.csv
    var3=Name,pets,siblings,pokemon,number
now=$(date)
var="$name, $pets, $siblings, $comp, $pokemon, $number"
echo "$var3" > team-1.csv
echo "$var, $now" >> team-1.csv
 else 
 var3=Name,pets,siblings,pokemon,number
 now=$(date)
var="$name, $pets, $siblings, $comp, $pokemon, $number"
echo "$var3" > team-1.csv
echo "$var, $now" >> team-1.csv
fi
else
  now=$(date)
var="$name, $pets, $siblings, $comp, $pokemon, NA"
# var2=$name
echo "$var, $now" >> team-1.csv
fi




