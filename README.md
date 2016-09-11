## A Sweet and Simple (SAS) Pomodoro Timer
---
This is a very simple timer based on the [Pomodoro Technique](https://en.wikipedia.org/wiki/Pomodoro_Technique), a time management method which breaks down work or study into 25 minute intervals, with 5 minute breaks in between. Every fourth break is 20 minutes.

I found the Pomodoro Technique a few years ago, while I was having a lot of trouble with time management when it came to working and studying. I found a decent app for my Android phone, but nothing I could stick with for Linux desktop. So, I thought, I'll just have to make one myself.

This script is a great combination between the convenience of desktop notifications and the simplicity and (nearly) instantaneous loading of a pure CLI script. Nothing fancy, just function and a little bit of love.

Please submit any bugs or feature requests to [https://github.com/Raindeer44/sas-timer/issues](https://github.com/Raindeer44/sas-timer/issues) Thank you.
long.
<br>
<br>

### How this timer works
---
This is a lovely little command line script for bash. The script will ask you how many cycles (once cycle is four 25 pomodoros, three 5 minute breaks and one 20 minute long break) you would like to run the timer for. In the terminal, the script will count down for every five minutes. At the end of a pomodoro, a notification will appear reminding you to take a break. A similar notification will appear at the end of each break.

If you ever miss a notification, or would like an estimate of time remaining, check out the terminal where the script is running. Every section of the timer logs its information and a 5-minute countdown with a 1-minute warning.
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

#### Install

Navigate to whatever directory you want the script to run from , then type/copy/paste:

```
git clone https://github.com/Raindeer44/sas-timer.git
```
```
cd sas-timer/
```
```
chmod u+x sas.sh
```

#### Run

Now you're ready to go! To run the script, simply type/copy/paste:

```
/path/to/install/dir/sas-timer/sas.sh
```

<br>
<br>

### License
---
This project is free software. There is no warranty; not even for merchantability or fitness for a particular purpose.

You may use, copy, modify and redistribute all files included in this distribution, individually or in aggregate, subject to the terms and conditions of the MIT license. See the file `LICENSE.txt` for details.
