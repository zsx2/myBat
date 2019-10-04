@echo off
adb shell dmesg -c 
RgaTest.bat Z:zsx\TempStorage\ 8 > 31884.4.txt
adb shell dmesg -c > 31884.4dmesg.txt

