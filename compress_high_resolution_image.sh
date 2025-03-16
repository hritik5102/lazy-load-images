#!/bin/bash

echo "Compress high resolution images"

num_images=16

for((i=1; i<=num_images;i++))
do
    input_image="images/high-resolution-images/image-$i.jpg"
    output_image="images/webp-images/image-$i.jpg"

    ffmpeg -i "$input_image" -quality 95 "$output_image"

    if [ $? -eq 0 ]; then
        echo "Converted $input_image to $output_image successfully."
    else
        echo "Failed to resize $input_image"
    fi

done