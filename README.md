## A Sweet and Simple (SAS) Pomodoro Timer
---
This is a very simple timer based on the [Pomodoro Technique](https://en.wikipedia.org/wiki/Pomodoro_Technique), a time management method which breaks down work or study into 25 minute intervals, with 5 minute breaks in between. Every fourth break is 20 minutes.

I came across the Pomodoro Technique a few years ago when I was having a lot of trouble managing my time with regards to working and studying. I found a decent app for my Android phone, but nothing I liked using on my Linux desktop. So, I made one.

This script is a great combination of convenient desktop notifications and nearly instantaneous loading of a pure CLI script. Nothing fancy, just function and a little bit of love.

Please submit any bugs or feature requests to [https://github.com/Raindeer44/sas-timer/issues](https://github.com/Raindeer44/sas-timer/issues) Thank you.
<br>
<br>

### How this timer works
---
This is a lovely little command line script for bash. The script will ask you how many cycles you would like to run the timer for. One cycle consists looks like this:

* 25 minutes: work time (pomodoro)
* 5 minutes: break
* 25 minutes: work time (pomodoro)
* 5 minutes: break
* 25 minutes: work time (pomodoro)
* 5 minutes: break
* 25 minutes: work time (pomodoro)
* 20 minutes: long break

At the end of a pomodoro, a notification will appear reminding you to take a break. A similar notification will appear at the end of each break. If you ever miss a notification, or would like an estimate of time remaining, check out the terminal where the script is running. Every section of the timer logs its information and a 5-minute countdown with a 1-minute warning.
<br>
<br>

### How to run
---
*Requires notify-osd package*

To check if notify-osd is already installed, type/copy/paste:


    notify-send --version


if something like `notify-send 0.7.6` returns, notify-osd is already installed

Otherwise, to install notify-osd, type/copy/paste:


    sudo apt-get install notify-osd


#### Install

Navigate to whatever directory you want the script to run from, then type/copy/paste:


    git clone https://github.com/Raindeer44/sas-timer.git
    cd sas-timer/
    chmod u+x sas.sh


#### Run

Now you're ready to go! To run the script, simply run from the install directory:

    /path/to/install/dir/sas-timer/sas.sh

<br>
<br>

### License
---
Copyright (C) 2016 Jade Thornton

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program. If not, see <http://www.gnu.org/licenses/>.
