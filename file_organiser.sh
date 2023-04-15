#!/bin/bash

read -p "directory_to_organsize path:" directory_to_organize 



sudo mkdir -p "$directory_to_organize/files"
sudo mkdir -p "$directory_to_organize/Videos"
sudo mkdir -p "$directory_to_organize/images"

for file in "$directory_to_organize"/*;do 
   extension="${file##*.}"

    case "$extension" in
        txt|doc|pdf|docx)
          mv "$file" "$directory_to_organize/files/"
          ;;

        jpg|jpeg|png|gif)
          mv "$file" "$directory_to_organize/images/"
          ;;
        mp4|avi|mov)
          mv "$file" "$directory_to_organize/Videos/"
          ;;
        *)
        ;;
    esac
done
owner=$(whoami)

sudo chown -R $owner $directory_to_organize/files
sudo chown -R $owner $directory_to_organize/images
sudo chown -R $owner $directory_to_organize/Videos 


echo "organizing completed!"

  

          