#!/bin/bash

str=$1

file=$2

echo "要查找的文字: ${str}"

echo "要从此文件中查找: ${file}"

cd ~

num=`grep ${str} ${file} | wc -l`

echo "在文件中出现的次数: ${num}"

if [ $num == 0 ]; then
    echo "在${file}文件中没有找到了文字:${str}"
    echo $str >> $file
    echo "插入文字:${str}到文件:${file}"
    echo "现在${file}文件的内容如下"
    cat $file
    exit 0
fi

exit 0
