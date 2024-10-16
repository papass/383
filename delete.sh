#!/bin/bash

remove_teacher() {
    echo "Введите имя преподавателя для удаления:"
    read teacher_name
    rm -rf Teachers/$teacher_name
    echo "Преподаватель $teacher_name удален."
}

remove_student() {
    echo "Введите имя студента для удаления:"
    read student_name
    rm -rf Students/$student_name
    echo "Студент $student_name удален."
}

remove_grade() {
    echo "Введите имя студента для удаления оценки:"
    read student_name
    rm -f Grades/${student_name}_grade.txt
    echo "Оценка для студента $student_name удалена."
}

echo "Выберите действие:"
echo "1. Удалить преподавателя"
echo "2. Удалить студента"
echo "3. Удалить оценку"
read choice

case $choice in
    1) remove_teacher;;
    2) remove_student;;
    3) remove_grade;;
    *) echo "Неверный выбор";;
esac