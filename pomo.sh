#!/bin/bash

clear

echo
echo "Pomodoro Timer"
echo



echo "Beginning pomodoros in the form 25-5-25-5-25-20"
echo "Type ^C at any time to exit timer"
echo

WD=$(pwd)
REL_PATH="$WD/p.png"

for a in 1 2 3
do
    echo "Entering pomodoro $a of 4 for 25 minutes"
    sleep 300 && echo "20 minutes remaining"
    sleep 300 && echo "15 minutes remaining"
    sleep 300 && echo "10 minutes remaining"
    sleep 300 && echo "5 minutes remaining"
    sleep 240 && echo "1 minute remaining"
    sleep 60 && notify-send "Break Time" "Time for a five minute break" -i $REL_PATH -t 10
    echo "End of pomodoro $a"
    echo "Entering 5 minute break"
    sleep 300 && notify-send "Pomodoro" "Time to get back to working" -i $REL_PATH -t 10
    echo
done
echo "Entering pomodoro 4 of 4 for 25 minutes"
sleep 300 && echo "20 minutes remaining"
sleep 300 && echo "15 minutes remaining"
sleep 300 && echo "10 minutes remaining"
sleep 300 && echo "5 minutes remaining"
sleep 240 && echo "1 minute remaining"
sleep 60 && notify-send "Long Break Time" "Time for a 25 minute break" -i $REL_PATH -t 10
sleep 1440 && notify-send "End of Pomodoro Timer" "Please restart process for another pomodoro" -i $REL_PATH -t 17
