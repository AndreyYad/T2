cd ..

while [ ! -f "$(pwd)/${path}" ] 
do
    read -p "Введите путь до файла: " path
done
while [ -z "$old" ] 
do
    read -p "Оригинальная подстрока: " old
done
read -p "Строка для замены: " new

sed -i "s/${old}/${new}/g" "$(pwd)/${path}"

size=$(stat -c %s test.txt)
date=$(date +"%Y-%m-%d %H:%M")
sha=$(sha256sum "$(pwd)/${path}" | awk '{print $1}')

echo "${path} - ${size} - ${date} - ${sha} - sha256" >> "$(pwd)/src/files.log"