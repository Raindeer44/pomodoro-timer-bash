#!/bin/bash

clear

echo
echo "A Sweet and Simple Pomodoro Timer"
echo

re='^[0-9]+$'
runtime=0

while true
do
    echo "One cycle is 135 minutes long"
    read -p "How many cycles would you like to run? " cycles
    if ! [[ $cycles =~ $re ]]; then
        echo "Please enter a number"
    else
        cy=$(($cycles * 135))
        read -p "Confirm run timer for $cy minutes (Y/N) " yn
        case $yn in
            [Yy]* ) runtime=$cycles; break;;
            [Nn]* ) echo;;
            * ) echo "please answer yes or no";;
        esac
    fi
done

wd=$(pwd)
rel_path="$wd/p.png"
cycle_counter=$cycles

while [ $cycle_counter -gt 0 ]
do

    echo
    cycle_num=$(($cycles - $cycle_counter + 1))
    echo "Beginning pomodoro cycle $cycle_num of $cycles"
    notify-send "Starting timer cycle" "Starting pomodoro cycle $cycle_num of $cycles" -i $rel_path -t 10000
    echo "Type ^C at any time to exit timer"
    echo

    for a in 1 2 3
    do
        echo "Entering pomodoro $a of 4 for 25 minutes"
        notify-send "Pomodoro" "Time to get to work" -i $rel_path -t 10000
        sleep 300 && echo "20 minutes remaining"
        sleep 300 && echo "15 minutes remaining"
        sleep 300 && echo "10 minutes remaining"
        sleep 300 && echo "5 minutes remaining"
        sleep 240 && echo "1 minute remaining"
        sleep 60 && notify-send "Break Time" "Time for a five minute break" -i $rel_path -t 10000
        echo "End of pomodoro $a"
        echo "Entering 5 minute break"
        sleep 300 && notify-send "Pomodoro" "Time to get back to working" -i $rel_path -t 10000
        echo
    done
    echo "Entering pomodoro 4 of 4 for 25 minutes"
    sleep 300 && echo "20 minutes remaining"
    sleep 300 && echo "15 minutes remaining"
    sleep 300 && echo "10 minutes remaining"
    sleep 300 && echo "5 minutes remaining"
    sleep 240 && echo "1 minute remaining"
    echo
    echo "Entering long break for 20 minutes"
    sleep 60 && notify-send "Long Break Time" "Time for a 20 minute break" -i $rel_path -t 10000
    sleep 300 && echo "15 minutes remaining in long break"
    sleep 300 && echo "10 minutes remaining in long break"
    sleep 300 && echo "5 minutes remaining in long break"
    sleep 240 && echo "1 minute remaining in long break"
    sleep 60 && notify-send "End of cycle" "Cycle $cycle_num of $cycles has ended" -i $rel_path -t 10000
    echo

    cycle_counter=$(($cycle_counter - 1))

done

echo
echo "End of timer"
echo "Thank you for using the SAS Pomodoro Timer"
echo
notify-send "End of Pomodoro Timer" "Please run process again for more cycles" -i $rel_path -t 17000
