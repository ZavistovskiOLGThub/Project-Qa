echo -n "Введите напоминание для сохранения:"
read -r remainder_text

echo -n "Введите путь к существующей директории для сохранения:"
read -r save_dir

filename="$(date +%Y-%m-%d)_важное_напоминание.txt"
full_path="$save_dir/$filename"

echo "$reminder_text" > "$full_path"

if [ $? -eq 0 ]; then
	echo "Напоминание успешно сохранено в : $full_path"
else
	echo "Ошибка: файл не сохранен"
	exit 1
fi
