@echo off
::for %%i in (*.bin) do adb -s %1 shell %%i

echo moving：
echo all：%0
echo exc：%~0
echo dddd：%~d0
echo vvv：%~p0
echo gg：%~n0
echo cc：%~x0
echo dd：%~a0
echo time：%~t0
echo size：%~z0

pause