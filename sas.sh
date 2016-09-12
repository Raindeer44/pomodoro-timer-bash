#!/bin/bash


# SETTINGS

notify_sound="pluck.wav" # Change to empty string for no sound
# to preview sound, use `aplay assets/soundfile.wav` in terminal
#pomodoro_length="25" # not implemented yet
#short_break_length="5" # not implemented yet
#long_break_length="20" # not implemented yet

# END SETTINGS


clear

printf '%s\n'
printf '%s\n' "A Sweet and Simple Pomodoro Timer"
printf '%s\n'

re='^[0-9]+$'
runtime=0

while true
do
    printf '%s\n' "One cycle is 135 minutes long"
    read -p "How many cycles would you like to run? " cycles
    if ! [[ $cycles =~ $re ]]; then
        printf '%s\n' "Please enter a number"
    else
        cy=$(($cycles * 135))
        read -p "Confirm run timer for $cy minutes (Y/N) " yn
        case $yn in
            [Yy]* ) runtime=$cycles; break;;
            [Nn]* ) printf '%s\n';;
            * ) printf '%s\n' "please answer yes or no";;
        esac
    fi
done

wd=$(pwd)
icon="$wd/assets/p.png"
sound="$wd/assets/$notify_sound"
cycle_counter=$cycles

while [ $cycle_counter -gt 0 ]
do

    printf '%s\n'
    cycle_num=$(($cycles - $cycle_counter + 1))
    printf '%s\n' "Beginning pomodoro cycle $cycle_num of $cycles"
    notify-send "Starting timer cycle" "Starting pomodoro cycle $cycle_num of $cycles" -i $icon -t 10000
    printf '%s\n' "Type ^C at any time to exit timer"
    printf '%s\n'

    notify-send "Pomodoro" "Time to get to work" -i $icon -t 10000
    aplay $sound

    for a in 1 2 3
    do
        printf '%s\n' "Entering pomodoro $a of 4 for 25 minutes"
        sleep 300 && printf '%s\n' "20 minutes remaining"
        sleep 300 && printf '%s\n' "15 minutes remaining"
        sleep 300 && printf '%s\n' "10 minutes remaining"
        sleep 300 && printf '%s\n' "5 minutes remaining"
        sleep 240 && printf '%s\n' "1 minute remaining"
        sleep 60 && notify-send "Break Time" "Time for a five minute break" -i $icon -t 10000
        aplay $sound
        printf '%s\n' "End of pomodoro $a"
        printf '%s\n' "Entering 5 minute break"
        sleep 300 && notify-send "Pomodoro" "Time to get back to working" -i $icon -t 10000
        aplay $sound
        printf '%s\n'
    done
    printf '%s\n' "Entering pomodoro 4 of 4 for 25 minutes"
    sleep 300 && printf '%s\n' "20 minutes remaining"
    sleep 300 && printf '%s\n' "15 minutes remaining"
    sleep 300 && printf '%s\n' "10 minutes remaining"
    sleep 300 && printf '%s\n' "5 minutes remaining"
    sleep 240 && printf '%s\n' "1 minute remaining"
    printf '%s\n'
    printf '%s\n' "Entering long break for 20 minutes"
    sleep 60 && notify-send "Long Break Time" "Time for a 20 minute break" -i $icon -t 10000
    aplay $sound
    sleep 300 && printf '%s\n' "15 minutes remaining in long break"
    sleep 300 && printf '%s\n' "10 minutes remaining in long break"
    sleep 300 && printf '%s\n' "5 minutes remaining in long break"
    sleep 240 && printf '%s\n' "1 minute remaining in long break"
    sleep 60 && notify-send "End of cycle" "Cycle $cycle_num of $cycles has ended" -i $icon -t 10000
    printf '%s\n'

    cycle_counter=$(($cycle_counter - 1))

done

sleep 3
printf '%s\n'
printf '%s\n' "End of timer"
printf '%s\n' "Thank you for using the SAS Pomodoro Timer"
printf '%s\n'
notify-send "End of Pomodoro Timer" "Please run process again for more cycles" -i $icon -t 17000
aplay $sound
