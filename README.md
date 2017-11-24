# Remove Bloatware on the Raspberry Pi & deploy needed software
Remove bloatware from Raspberry Pi Raspbian with one script. This will remove the storage hogging programs and some other often never-used tools including:

1. Wolfram Engine
2. Libre Office
3. Minecraft Pi
4. Sonic Pi 
5. Dillo Web Broswer (dillo)
6. Image Viewer (gpicview)
7. Penguines Puzzle (penguinspuzzle)
8. Java (oracle-java8-jdk openjdk-7-jre oracle-java7-jdk openjdk-8-jre)

The script will then `autoremove`, `autoclean` and then `update` the aptitude pacakges on the Pi itself.

This Script will also deploy the needed Software for using the raspberry pi as an information screen, including:
1. chromium
2. zip
3. wget

## Installation

Run the following command within the Raspberry Pi terminal:
```
wget -O - https://raw.githubusercontent.com/stev-it/raspdeploy/master/deploy.sh | sudo bash
```
