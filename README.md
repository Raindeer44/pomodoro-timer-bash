## A Very Simple Pomodoro Timer
#### For bash
----------
This is a very simple timer based on the [Pomodoro Technique](https://en.wikipedia.org/wiki/Pomodoro_Technique),
a time management method which breaks down work or study into 25 minute
intervals, with 5 minute breaks in between. Every fourth break is 20 minutes
long.
<br>
<br>

### How this timer works
----
This is a very easy command line script for bash. The script will ask you how
many cycles (four pomodoros at 25 mins each) you would like to run the timer
for. In the terminal, the script will count down for every five minutes. At
the end of a pomodoro, a notification will appear reminding you to take a break.
A similar notification will appear at the end of each break.
<br>
<br>

### How to run
---
*Requires notify-osd package*

To check if notify-osd is already installed, type/copy/paste:

```
notify-send --version
```

if something like `notify-send 0.7.6` returns, notify-osd is already installed

To install notify-osd, type/copy/paste:

```
sudo apt-get install notify-osd
```
