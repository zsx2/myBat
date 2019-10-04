@echo off

set projectPath="e:\work\project\myGitRepositories\"
set projectPythonPath="e:\work\project\myGitRepositories\python\"
set projectBatPath="e:\work\project\myGitRepositories\bat\myBat\easyWork\"

if "%2"=="debug" (
set DEBUG=1
) else (
set DEBUG=0
)

if %DEBUG%==1 (
echo "###### debug ######"
)

:: 切到e 盘
e:


if "%1"=="" (
call :PROJECT
goto :end
)


:: 注意 字符串比较的时候 == 两端都要有分号
if "%1"=="python" (
call :PYTHON
goto :end
)




:: 新增加的路径写在bat 前面 
if "%1"=="bat" (
call :BAT
goto :end
) else (
call :PROJECT
goto :end
)

:: 此处程序结束
goto end


:: 以下为函数 
:PROJECT

if %DEBUG%==1 (
echo %projectPath%
)
cd %projectPath%

goto:eof

:PYTHON

if %DEBUG%==1 (
echo %projectPythonPath%
)
cd %projectPythonPath%

goto:eof

:BAT

if %DEBUG%==1 (
echo %projectBatPath%
)
cd %projectBatPath%

:HELP

echo "home python bat"

goto:eof

:end
