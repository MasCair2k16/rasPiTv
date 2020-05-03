# RasPiTv

### GOAL: Automate the television in the lobby of Eric Johnson for Whitworth CS/MATH Department and remote access to change out content

## Tools
- FBI: AKA Frame Buffer Image. This library allows to display sets of images located in a file (toPresent).  

- CronJob: Automation of terminating screen

- Openvt: Opening virtual terminal. This allows any command to be opened in a selected virtual terminal. Virtual terminal is a console that communicates with the kernel inside the linux machine. 

- Scp: AKA Secure Copy Protocol: This command allows to copy files from a device to a remote device. The format is as followed `scp /Users/masoncaird/Desktop/6cookies.jpg pi@<ipaddress>:/home/pi/Desktop/toPresent`

- Shell: I used to shell to execute all commands including FBI, CronJob, and Openvt. More instruction are below regarding the code

## Shell Script Psuedo Code (display.sh)
`dir = find the directory path to file (toPresent)` <br/>
`While true; `<br/>
`....for every file $f in directory`<br/>
`........cur = grab image file name`<br/>
`........num = parse first integer of cur name to dictate how long the image will show`<br/>
`........FBI show cur with time num`<br/>
`....}`<br/>
`}`<br/>

## CronJob Psuedo Code
- To access cronjob code in pi, ```nano /usr/lib/cronjob```
- Very bottom, you will see the following two lines of code
- first Line: `0 8  * * 1-5 /usr/bin/vcgencmd display_power 1`
- second Line: `0 18  * * 1-5 /usr/bin/vcgencmd display_power 0`
- first Format: (mins=0) (hour=8) (months=all) (days{monday-friday}) <directory to source file of output> (display_power 1=on)
- first Format: (mins=0) (hour=18) (months=all) (days{monday-friday}) <directory to source file of output> (display_power 1=off)
  
## Goals for next implementation
- Parse first couple integers so an image can be shown for more then 9 seconds

- Make a file that automate SCP to the pi without having to touch the Commandline (windows) or Terminal (Macintosh)
