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
  mv "$SOURCE" "$TARGET"
  echo "Файл $SOURCE перемещен в $TARGET"
elif [ -d "$SOURCE" ]; then
  mv "$SOURCE" "$TARGET"
  echo "Директория $SOURCE перемещена в $TARGET"
else
  echo "Ошибка: $SOURCE не является файлом или директорией"
  exit 1
fi