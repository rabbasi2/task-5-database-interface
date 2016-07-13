#!/bin/bash

name=$1
pets=$1
siblings=$1
prefer=$1
pokemon=$1


echo "What is your name"
read $name 
echo "How many pets do you have?"
read $pets
echo "How many siblings do you have?"
read $siblings
echo "Do you prefer Mac or PC?"
read $prefer
echo "Do you play POKEMON GO?"
read $pokemon
echo "You completed the questionnaire on" "`date`"

sed 's/\s\+/,/g' questions.sh > questions.csv


