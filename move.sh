#!/bin/bash

move_teacher() {
    echo "Введите имя преподавателя для перемещения:"
    read teacher_name
    echo "Куда переместить преподавателя $teacher_name? (Teachers/Students/Grades)"
    read target_dir
    mv Teachers/$teacher_name $target_dir
    echo "Преподаватель $teacher_name перемещен в $target_dir."
}

move_student() {
    echo "Введите имя студента для перемещения:"
    read student_name
    echo "Куда переместить студента $student_name? (Teachers/Students/Grades)"
    read target_dir
    mv Students/$student_name $target_dir
    echo "Студент $student_name перемещен в $target_dir."
}

move_grade() {
    echo "Введите имя студента для перемещения оценки:"
    read student_name
    echo "Куда переместить оценку для студента $student_name? (Teachers/Students/Grades)"
    read target_dir
    mv Grades/${student_name}_grade.txt $target_dir
    echo "Оценка для студента $student_name перемещена в $target_dir."
}

echo "Выберите действие:"
echo "1. Переместить преподавателя"
echo "2. Переместить студента"
echo "3. Переместить оценку"
read choice

case $choice in
    1) move_teacher;;
    2) move_student;;
    3) move_grade;;
    *) echo "Неверный выбор";;
esac