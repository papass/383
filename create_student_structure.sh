#!/bin/bash

# Функция для создания структуры директорий
create_structure() {
    local student_name=$1
    local student_id=$2

    mkdir -p "students/student${student_id}"

    mkdir -p "students/student${student_id}/disciplines"

    echo "Имя: ${student_name}" > "students/student${student_id}/info.txt"
    echo "Фамилия: Иванов" >> "students/student${student_id}/info.txt"
    echo "Группа: 101" >> "students/student${student_id}/info.txt"

    echo "Введите названия дисциплин (оставьте пустым для завершения):"
    while true; do
        read -p "Название дисциплины: " discipline
        if [ -z "$discipline" ]; then
            break
        fi
        echo "$discipline" >> "students/student${student_id}/disciplines/discipline${student_id}.txt"
    done
}

echo "Введите количество студентов:"
read num_students

for ((i=1; i<=num_students; i++)); do
    echo "Введите имя студента $i:"
    read student_name
    create_structure "$student_name" "$i"
done

echo "Структура директорий и файлов создана."