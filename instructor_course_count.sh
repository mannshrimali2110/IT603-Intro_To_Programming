#!/bin/bash
grep "$1" timetable.csv | cut -d"," -f3 | sort | uniq | wc -l
