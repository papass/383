#!/bin/bash

read -p "Введите ваше ФИО на русском: " full_name

read -p "Введите вашу фамилию на английском: " last_name_en

read -p "Введите ваш возраст: " age

read -p "Введите ваше хобби: " hobby

user_folder="$last_name_en"
mkdir -p "$user_folder"

mkdir -p "$user_folder/documents"
mkdir -p "$user_folder/videos"
mkdir -p "$user_folder/photos"

for dir in documents videos photos; do
    for i in {1..3}; do
        touch "$user_folder/$dir/file$i.txt"
    done
done

mkdir -p "$user_folder/archive"

for ((i=1; i<=age; i++)); do
    archive_folder="$user_folder/archive/$i"
    mkdir -p "$archive_folder/documents"
    mkdir -p "$archive_folder/videos"
    mkdir -p "$archive_folder/photos"

    for dir in documents videos photos; do
        for j in {1..3}; do
            touch "$archive_folder/$dir/file$j.txt"
        done
    done
done

echo "Папка пользователя создана и настроена."