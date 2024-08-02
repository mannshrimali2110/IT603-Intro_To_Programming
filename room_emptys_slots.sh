#!/bin/bash
room="$1"

time_slots=("8:00-8:50" "9:00-9:50" "10:00-10:50" "11:00-11:50" "12:00-12:50")
days=("Monday" "Tuesday" "Wednesday" "Thursday" "Friday")

grep ",$room$" timetable.csv | cut -d ',' -f1,2 > occupied_slots.txt

echo "Room: $room"
for day in "${days[@]}"; do
  for slot in "${time_slots[@]}"; do
    if ! grep -q "$day,$slot" occupied_slots.txt; then
      echo "  $day $slot is empty"
      fi
  done
done

rm occupied_slots.txt
