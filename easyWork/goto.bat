@echo off
set projectPath="e:\work\project\myGitRepositories\"
set projectPythonPath="e:\work\project\myGitRepositories\python\"

set par=%1
if "%1"=="" (
call :PROJECT
goto :end
)

:: 注意 字符串比较的时候 == 两端都要有分号
if "%1"=="python" (
call :PYTHON
goto :end
) else (
if "%1"=="home" (
call :PROJECT
goto :end
)
)
goto end



:PROJECT

cd %projectPath%

goto:eof

:PYTHON

cd %projectPythonPath%

goto:eof

:end

