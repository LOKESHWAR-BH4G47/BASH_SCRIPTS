#!/bin/bash

URL=""

#curl to download content from the website 
CONTENT=$(curl -s $URL)

if [ "$CONTENT" != "$(cat hospital.txt)" ];
then 
    echo "The content of $URL has changed!" | mail -s "website alert " @gmail.com

    echo "$CONTENT">hospital.txt

else 

   echo "CONTENT NOT CHANGED!"
fi



