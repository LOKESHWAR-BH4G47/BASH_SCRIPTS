#!/bin/bash

URL="https://sgrh.com/"

#curl to download content from the website 
CONTENT=$(curl -s $URL)

if [ "$CONTENT" != "$(cat hospital.txt)" ];
then 
    echo "The content of $URL has changed!" | mail -s "website alert " bhagatlokeshwar7@gmail.com

    echo "$CONTENT">hospital.txt

else 

   echo "CONTENT NOT CHANGED!"
fi



