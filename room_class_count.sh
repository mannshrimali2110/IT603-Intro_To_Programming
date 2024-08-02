#!/bin/bash

rooms=("CEP-102" "CEP-103" "CEP-104" "CEP-105" "CEP-106" "CEP-107" "CEP-108" "CEP-109" "CEP-110" "CEP-202" "CEP-203" "CEP-204" "CEP-205" "CEP-207" "CEP-209" "LAB" "LAB-A-SF" "LT-1" "LT-2" "LT-3")
days=("Monday" "Tuesday" "Wednesday" "Thursday" "Friday")

echo "Room, Day, Count "

for room in "${rooms[@]}"; do
    grep "$room" timetable.csv > temproom.txt 
    for day in "${days[@]}"; do
        count=$(grep "$day" temproom.txt | wc -l)
        echo "$room, $day, $count"
    done
        echo " " 
done

rm temproom.txt
