#!/bin/bash

echo "Compress high resolution images"

num_images=18

for ((i=1; i<=num_images; i++))
do
    input_image="images/high-resolution-images/image-$i.jpg"
    output_folder="images/compressed-high-resolution-images/"
    output_image="images/compressed-high-resolution-images/image-$i.jpg"

    # Check if the folder exists
    if [ ! -d "$output_folder" ]; then
        # If the folder does not exist, create it
        mkdir -p "$output_folder"
        echo "Folder created: $output_folder"
    else
        echo "Folder already exists: $output_folder"
    fi

    # Compress the image using ffmpeg
    ffmpeg -i "$input_image" -q:v 15 "$output_image"

    # Check if the ffmpeg command was successful
    if [ $? -eq 0 ]; then
        echo "Converted $input_image to $output_image successfully."
    else
        echo "Failed to resize $input_image"
    fi
done