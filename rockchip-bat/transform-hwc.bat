@echo off
SET Sender1=%1
if "%1"=="6" (
call:open_hwc
adb shell getprop | grep hwc
)
if "%1"=="0" (
call:close_hwc
adb shell getprop | grep hwc
)
goto :end

:open_hwc
adb shell setprop sys.hwc.compose_policy 6
adb shell setprop sys.hwc.enable 1
goto:eof 

:close_hwc
adb shell setprop sys.hwc.compose_policy 0
adb shell setprop sys.hwc.enable 0
goto:eof 

:end