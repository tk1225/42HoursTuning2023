#!/bin/bash

file_name=("dog.png" "dragon.png" "goat.png" "horse.png" "monkey.png" "ox.png" "pig.png" "rabbit.png" "rat.png" "rooster.png" "snake.png" "tiger.png")

input_directory="images/user-icon/origin_img"  # 入力ディレクトリのパス
output_directory="images/user-icon"  # 出力ディレクトリのパス

resize_width=500
resize_height=500

mkdir -p "$output_directory"

# Loop from 0 to 11
for i in {0..11}
do
    input_path="${input_directory}/${file_name[i]}"  # 入力ファイルのパス
    output_path="${output_directory}/${file_name[i]}"  # 出力ファイルのパス

    # convert "$input_path" -strip -resize "${resize_width}x${resize_height}" -dither None -posterize 8 -colors 256 "$output_path"
    convert "$input_path" -strip -resize "${resize_width}x${resize_height}"! -dither None -posterize 8 -colors 4 -depth 4 "$output_path"

done

convert "images/user-icon/origin_img/pig.png" -strip -resize "${resize_width}x${resize_height}"! -dither None -posterize 16 -colors 16 -depth 4 "images/user-icon/pig.png"
convert "images/user-icon/origin_img/snake.png" -strip -resize "${resize_width}x${resize_height}"! -dither None -posterize 16 -colors 16 -depth 4 "images/user-icon/snake.png"
convert "images/user-icon/origin_img/rat.png" -strip -resize "${resize_width}x${resize_height}"! -dither None -posterize 16 -colors 16 -depth 4 "images/user-icon/rat.png"
convert "images/user-icon/origin_img/goat.png" -strip -resize "${resize_width}x${resize_height}"! -dither None -posterize 16 -colors 8 -depth 4 "images/user-icon/goat.png"

