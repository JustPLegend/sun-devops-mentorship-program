#!/bin/bash

#Komanda for za iteriranje kroz direktorije fajlova
#Moramo koristiti wildcard karakter u fajlu ili pathname
#Ovo forsira shell da koristi FILE GLOBBING
#FILE GLOBBING is the process of producing filenames or pathnames that match a specified wildcard character

for file in /home/sun/Desktop/suncica-pasalic-devops-mentorship/week-2-linux/*
do 
    if [ -d "$file" ]
    then 
        echo "$file is a directory"
elif [ -f "$file" ]
then 
    echo "$file is a file"
fi 
done



#Parametar -d je za direktorij, a -f parametar za file