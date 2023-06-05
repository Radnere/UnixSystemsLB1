#!/bin/bash

# Зчитування шляху до текстового файлу
echo -n "Введіть шлях до текстового файлу: "
read file_path

# Перевірка існування файлу
if [ ! -f "$file_path" ]; then
    echo "Файл не знайдено: $file_path"
    exit 1
fi

# Виведення вмісту текстового файлу
echo "Зміст файлу $file_path:"
cat "$file_path"

# Кількість слів в текстовому файлі
word_count=$(cat "$file_path" | wc -w)
echo "Кількість слів в файлі: $word_count"

# Кількість символів в текстовому файлі
character_count=$(cat "$file_path" | wc -c)
echo "Кількість символів в файлі: $character_count"

# Кількість рядків в текстовому файлі
line_count=$(cat "$file_path" | wc -l)
echo "Кількість рядків в файлі: $line_count"

# Запит послідовності символів для додавання
echo -n "Введіть послідовність символів для додавання: "
read sequence

# Додавання послідовності символів в кінець файлу
echo "$sequence" >> "$file_path"
echo "Послідовність символів додана в кінець файлу."