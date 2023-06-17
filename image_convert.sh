#!/bin/bash

file_name=("dog.png" "dragon.png" "goat.png" "horse.png" "monkey.png" "ox.png" "pig.png" "rabbit.png" "rat.png" "rooster.png" "snake.png" "tiger.png")

input_directory="images/user-icon/origin_img"  # 入力ディレクトリのパス
output_directory="images/user-icon"  # 出力ディレクトリのパス

resize_width=200
resize_height=200

mkdir -p "$output_directory"

# Loop from 0 to 11
for i in {0..11}
do
    input_path="${input_directory}/${file_name[i]}"  # 入力ファイルのパス
    output_path="${output_directory}/${file_name[i]}"  # 出力ファイルのパス

    convert "$input_path" -strip -resize "${resize_width}x${resize_height}" -dither None -posterize 8 -colors 256 "$output_path"
done

