#!/bin/bash

if [ -z "$1" ]; then
  echo "Использование: $0 <путь_к_папке>"
  exit 1
fi

directory="$1"

if [ ! -d "$directory" ]; then
  echo "Ошибка: $directory не является папкой"
  exit 1
fi

for file in "$directory"/*; do
  if [ -f "$file" ]; then
    echo "Содержимое файла $file:"
    cat "$file"
    echo "----------------------------------------"
  fi
done