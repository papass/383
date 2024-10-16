#!/bin/bash

add_teacher() {
    echo "Введите имя преподавателя:"
    read teacher_name
    mkdir -p Teachers/$teacher_name
    echo "Преподаватель $teacher_name добавлен."
}

add_student() {
    echo "Введите имя студента:"
    read student_name
    mkdir -p Students/$student_name
    echo "Студент $student_name добавлен."
}

add_grade() {
    echo "Введите имя студента и оценку:"
    read student_name grade
    echo $grade > Grades/${student_name}_grade.txt
    echo "Оценка для студента $student_name добавлена."
}

echo "Выберите действие:"
echo "1. Добавить преподавателя"
echo "2. Добавить студента"
echo "3. Добавить оценку"
read choice

case $choice in
    1) add_teacher;;
    2) add_student;;
    3) add_grade;;
    *) echo "Неверный выбор";;
esac