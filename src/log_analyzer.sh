#cd ..
str="e
ee
eer"

for var in $str;
do
echo "---$var"
done

read -p "Путь до файла: " path
res_1=$(wc -l $(pwd)/${path} | awk '{print $1}')
res_2=$(awk '{print $1}' $(pwd)/${path} | sort -u | wc -l)
res_3=$()

echo "$res_1 $res_2 $res_3"