#!/bin/bash

#userid - koji zelimo da koristimo za korisnika
#user name - full ime koje zelimo za korsinika
#Pravljenje liste user accounta i spasavanje u csv

# process new user accounts
input="users.csv"
while IFS=',' read -r userid name
do
    echo "adding $userid"
    useradd -c "$name" -m $userid
done < "$input"