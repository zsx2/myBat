@echo off
adb shell setprop sys.rga.log 1;logcat -s librga 
