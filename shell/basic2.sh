#!/bin/bash

# array
array=(item1 item2 item3 item4)
array[0]="ITEM1"
array[2]="ITEM3"

echo "array[0]: ${array[0]}"
echo "array[1]: ${array[1]}"
echo "array[2]: ${array[2]}"

# access to all items
echo "array[*]: ${array[*]}"
echo "array[@]: ${array[@]}"

# operator
# 띄어쓰기 필수

# if
# if [condition] then command fi
# 왠지 모르겠지만, [] 사이 내용들에 띄어쓰기 필요.
if [ "$1" -gt "$2" ]; then
    echo "1 > 2"
elif [ "$1" -eq "$2" ]; then
    echo "1 = 2"
else
    echo "1 < 2"
fi

# switch 
# case - in condition -) command ;; esac
name="jman"
case "$name" in
    "jman") echo "good man"
    ;;
    "tsan") echo "also good man"
    ;;
    "-0") echo "nuclear waste"
    ;;
esac

# loop
# break continue
count=0
while [ $count -lt 5 ]
do
    echo $count
    count=`expr $count + 1`
done

# 조건이 일치할 때까지 반복
# 띄어쓰기 아주 중요해
b=0
until [ ! $b -lt 5 ]
do
    echo $b
    b=`expr $b + 1`
done

# for loop
# for var in ~ do command done
for num in {0..10}
do
    echo `expr $num + $num`
done

# function
myfunction () {
    echo "test"
    echo "$count $b"
}

myfunction
