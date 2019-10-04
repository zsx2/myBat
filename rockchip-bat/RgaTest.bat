@echo off

SET img-path="C:\Users\Administrator\img-storage\"
SET Sender1=%1
if "%1"=="" (
echo "Err ! No parameter!"
goto :end
) 
echo %1
echo %2
::push src img
call push-srcimg.bat
::push bin file
call push-bin.bat %1 %2
::pull img
call pull-img.bat %2
::check img
python pythonImagCheck.py

:end