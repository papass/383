#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Использование: $0 <источник> [<цель>]"
  exit 1
fi

SOURCE=$1

TARGET=${2:-$PWD}

if [ ! -e "$SOURCE" ]; then
  echo "Ошибка: $SOURCE не существует"
  exit 1
fi

if [ -f "$SOURCE" ]; then
  cp "$SOURCE" "$TARGET"
  echo "Файл $SOURCE скопирован в $TARGET"
elif [ -d "$SOURCE" ]; then
  cp -r "$SOURCE" "$TARGET"
  echo "Директория $SOURCE скопирована в $TARGET"
else
  echo "Ошибка: $SOURCE не является файлом или директорией"
  exit 1
fi