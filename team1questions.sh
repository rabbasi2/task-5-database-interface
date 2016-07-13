#!/bin/bash

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
now=$(date)
var="$name, $pets, $siblings, $comp, $pokemon, $number"
# var2=$name
echo "$var, $now" >> team1.csv
else
  now=$(date)
var="$name, $pets, $siblings, $comp, $pokemon, NA"
# var2=$name
echo "$var, $now" >> team1.csv
fi



