
@echo off 
set str=_meminfo.log
set folder=./meminfolog
cd %folder%
set CirNum=1000
set N=0



:Circle

if "%N%"=="%CirNum%" goto end
set /a N=N+1
echo finish%N%
call :BegingTest
goto Circle

goto :end

:RgaTest
for %%i in (*.bin) do adb -s %1 shell %%i
goto :eof

:BegingTest
call:GetTime
adb -s %1 shell cat proc/meminfo > %N%_%CURRENT_DATE_TIME_STAMP%%str%
adb -s %1 shell rgaBlit
goto :eof

:: 设置变量，使用变量时需要用一对%包起来
:: 获取时间
:GetTime
set ORIGINAL_DATE=%date% 

set YEAR=%date:~0,4%
set MONTH=%date:~5,2%
set DAY=%date:~8,2%

set HOUR=%time:~0,2%
set MINUTE=%time:~3,2%
set SECOND=%time:~6,2%
 
set CURRENT_TIME=%HOUR%:%MINUTE%:%SECOND%

set CURRENT_DATE_TIME_STAMP=%YEAR%%MONTH%%DAY%_%HOUR%%MINUTE%%SECOND%


goto :eof

:delay
echo WScript.Sleep %1>delay.vbs
CScript //B delay.vbs
del delay.vbs
goto :eof

:end