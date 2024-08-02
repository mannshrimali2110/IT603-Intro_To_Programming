#!/bin/bash
today = $(date+%A)
grep "$today" timetable.csv

