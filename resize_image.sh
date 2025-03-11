#!/bin/bash

echo "Image is being compressed using ffmpeg"

num_images=16

for((i=1; i<=num_images;i++))
do
    input_image="images/high-resolution-images/image-$i.jpg"
    output_image="images/low-resolution-images/image-$i.jpg"

    ffmpeg -i "$input_image" -vf scale=20:-1 "$output_image"

    if [ $? -eq 0 ]; then
        echo "Resized $input_image to $output_image successfully."
    else
        echo "Failed to resize $input_image"
    fi

done