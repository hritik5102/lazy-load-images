#!/bin/bash

echo "Generate WebP images"

num_images=18

for ((i=1; i<=num_images; i++))
do
    input_image="images/high-resolution-images/image-$i.jpg"
    output_folder="images/webp-images/"
    output_image="images/webp-images/image-$i.webp"

    # Check if the folder exists
    if [ ! -d "$output_folder" ]; then
        # If the folder does not exist, create it
        mkdir -p "$output_folder"
        echo "Folder created: $output_folder"
    else
        echo "Folder already exists: $output_folder"
    fi

    # Compress the image using ffmpeg
    ffmpeg -i "$input_image" -quality 30 "$output_image"

    # Check if the ffmpeg command was successful
    if [ $? -eq 0 ]; then
        echo "Converted $input_image to $output_image successfully."
    else
        echo "Failed to convert $input_image"
    fi
done