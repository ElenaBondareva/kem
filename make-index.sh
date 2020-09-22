#!/bin/bash

echo "<html>" > index.html
echo "<head><meta charset=\"utf-8\"/><meta http-equiv=\"refresh\" content=\"10; url=https://5f632217e2b3c.site123.me\"></head>" >> index.html
echo "<body>" >> index.html
echo "<h3>Бондарева Елена Михайловна</h3>" >> index.html
echo "<h4><a href=\"https://5f632217e2b3c.site123.me/\">Основной сайт (автоматический переход через 10 секунд)</a></h4>" >> index.html
echo "<h4><a href=\"doc/index.html\">Документы</a></h4>" >> index.html
echo "<h4><a href=\"photo/index.html\">Фото и видео</a></h4>" >> index.html
echo "<h4><a href=\"gram/index.html\">Грамоты и награды</a></h4>" >> index.html
echo "<h4><a href=\"program/index.html\">Рабочие программы</a></h4>" >> index.html

#echo "<ul>" >> index.html
list=`find . -maxdepth 1 -mindepth 1 -type d -printf "%f\n" | sort`
for i in $list
do
#  echo " <li><a href=\"$i\">$i</a></li>" >> index.html
  cd $i
  ./make-index.sh
  cd ..
done
#echo "</ul>" >> index.html

echo "</body>" >> index.html
echo "</html>" >> index.html
