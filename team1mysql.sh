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

echo "What is your mysql password?"
read password

var4=$password

mysql --user=root --password=$var4 << EOF
CREATE DATABASE IF NOT EXISTS team1;
USE team1;
CREATE TABLE IF NOT EXISTS tblQ (Name VARCHAR(255), Pets INT, Siblings INT, MacPc VARCHAR(255), PokemonGO VARCHAR(255), nPokemon INT, Time VARCHAR(255));

LOAD DATA INFILE '/home/cabox/workspace/task-5-database-interface/team1.csv' INTO TABLE tblQ FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'; 
EOF
mysqldump --user=root --password=$var4 team1 >> team1.sql
