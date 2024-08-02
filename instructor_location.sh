#!/bin/bash

cur_time="8:00-8:50"
today=$(date +%A)
time_slots=("8:00-8:50" "9:00-9:50" "10:00-10:50" "11:00-11:50" "12:00-12:50")

grep "$today" timetable.csv > temptime.txt
grep "$cur_time" temptime.txt > temptime2.txt

if grep -q "$1" temptime2.txt ; then
    echo "$1 is in : "
    grep "$1" temptime2.txt | cut -d"," -f3 
else
    echo "Office"
fi

rm temptime.txt temptime2.txt
