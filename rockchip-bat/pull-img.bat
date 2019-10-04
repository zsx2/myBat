@echo off

set Device=%2
SET img-path="C:\Users\Administrator\img-storage"
echo %img-path%
if "%1"=="" (
echo "input 8 or 16"
)

if "%1"=="8" (
echo "Scale8\n"
call:myfunc1
call:copyScale8
goto :end
) 
if "%1"=="16" (
echo "Scale16\n"
call:myfunc1
call:copyScale16
goto :end
)


goto:end
:copyScale8

adb -s %Device% shell rgaCopyScaleRgbaBUP8
adb -s %Device% pull /data/out0w1280-h720-rgba8888.bin %img-path%
mv %img-path%/out0w1280-h720-rgba8888.bin %img-path%/ScaleBUP8-w1280-h720-rgba8888.bin

adb -s %Device% shell rgaCopyScaleRgbaDSize8
adb -s %Device% pull /data/out0w160-h90-rgba8888.bin %img-path%
mv %img-path%/out0w160-h90-rgba8888.bin %img-path%/ScaleDSize8-w160-h90-rgba8888.bin

adb -s %Device% shell rgaCopyScaleYuvBUP8
adb -s %Device% pull /data/out0w1280-h720-nv12.bin %img-path%
mv %img-path%/out0w1280-h720-nv12.bin %img-path%/ScaleBUP8-w1280-h720-nv12.bin

adb -s %Device% shell rgaCopyScaleYuvDSize8
adb -s %Device% pull /data/out0w160-h90-nv12.bin %img-path%
mv %img-path%/out0w160-h90-nv12.bin %img-path%/ScaleDSize8-w160-h90-nv12.bin

adb -s %Device% shell rgaCopyScaleRgb565BUP8
adb -s %Device% pull /data/out0w1280-h720-rgb565.bin %img-path%
mv %img-path%/out0w1280-h720-rgb565.bin %img-path%/ScaleBUP8-w1280-h720-rgb565.bin

adb -s %Device% shell rgaCopyScaleRgb565DSize8
adb -s %Device% pull /data/out0w160-h90-rgb565.bin %img-path%
mv %img-path%/out0w160-h90-rgb565.bin %img-path%/ScaleDSize8-w160-h90-rgb565.bin

goto:eof

:copyScale16

adb -s %Device% shell rgaCopyScaleRgbaBUP16
adb -s %Device% pull /data/out0w2560-h1440-rgba8888.bin %img-path%
mv %img-path%/out0w2560-h1440-rgba8888.bin %img-path%/ScaleBUP16-w2560-h1440-rgba8888.bin

adb -s %Device% shell rgaCopyScaleRgbaDSize16
adb -s %Device% pull /data/out0w80-h45-rgba8888.bin %img-path%
mv %img-path%/out0w80-h45-rgba8888.bin %img-path%/ScaleDSize16-w80-h45-rgba8888.bin

adb -s %Device% shell rgaCopyScaleYuvBUP16
adb -s %Device% pull /data/out0w2560-h1440-nv12.bin %img-path%
mv %img-path%/out0w2560-h1440-nv12.bin %img-path%/ScaleBUP16-w2560-h1440-nv12.bin

adb -s %Device% shell rgaCopyScaleYuvDSize16
adb -s %Device% pull /data/out0w80-h45-nv12.bin %img-path%
mv %img-path%/out0w80-h45-nv12.bin %img-path%/ScaleDSize16-w80-h45-nv12.bin

adb -s %Device% shell rgaCopyScaleRgb565BUP16
adb -s %Device% pull /data/out0w2560-h1440-rgb565.bin %img-path%
mv %img-path%/out0w2560-h1440-rgb565.bin %img-path%/ScaleBUP16-w2560-h1440-rgb565.bin

adb -s %Device% shell rgaCopyScaleRgb565DSize16
adb -s %Device% pull /data/out0w80-h45-rgb565.bin %img-path%
mv %img-path%/out0w80-h45-rgb565.bin %img-path%/ScaleDSize-w80-h45-rgb565.bin

goto:eof

:myfunc1
adb -s %Device% shell rgaBlit
adb -s %Device% pull /data/out0w1280-h720-rgba8888.bin %img-path%
mv %img-path%/out0w1280-h720-rgba8888.bin %img-path%/blit-w1280-h720-rgba8888.bin

adb -s %Device% shell rgaUserSpace
adb -s %Device% pull /data/out0w1280-h720-rgba8888.bin %img-path%
mv %img-path%/out0w1280-h720-rgba8888.bin %img-path%/Userblit-w1280-h720-rgba8888.bin

adb -s %Device% shell rgaMirrorRgbaH
adb -s %Device% pull /data/out0w1280-h720-rgba8888.bin %img-path%
mv %img-path%/out0w1280-h720-rgba8888.bin %img-path%/MirrorH-w1280-h720-rgba8888.bin

adb -s %Device% shell rgaMirrorRgbaV
adb -s %Device% pull /data/out0w1280-h720-rgba8888.bin %img-path%
mv %img-path%/out0w1280-h720-rgba8888.bin %img-path%/MirrorV-w1280-h720-rgba8888.bin

adb -s %Device% shell rgaMirrorYuvH
adb -s %Device% pull /data/out0w1280-h720-nv12.bin %img-path%
mv %img-path%/out0w1280-h720-nv12.bin %img-path%/MirrorH-w1280-h720-nv12.bin

adb -s %Device% shell rgaMirrorYuvV
adb -s %Device% pull /data/out0w1280-h720-nv12.bin %img-path%
mv %img-path%/out0w1280-h720-nv12.bin %img-path%/MirrorV-w1280-h720-nv12.bin

adb -s %Device% shell rgaMirrorRgb565H
adb -s %Device% pull /data/out0w1280-h720-rgb565.bin %img-path%
mv %img-path%/out0w1280-h720-rgb565.bin %img-path%/MirrorH-w1280-h720-rgb565.bin

adb -s %Device% shell rgaMirrorRgb565V
adb -s %Device% pull /data/out0w1280-h720-rgb565.bin %img-path%
mv %img-path%/out0w1280-h720-rgb565.bin %img-path%/MirrorV-w1280-h720-rgb565.bin


adb -s %Device% shell rgaRotationRgba90
adb -s %Device% pull /data/out0w720-h1280-rgba8888.bin %img-path%
mv %img-path%/out0w720-h1280-rgba8888.bin %img-path%/Rot90-w720-h1280-rgba8888.bin

adb -s %Device% shell rgaRotationRgba270
adb -s %Device% pull /data/out0w720-h1280-rgba8888.bin %img-path%
mv %img-path%/out0w720-h1280-rgba8888.bin %img-path%/Rot270-w720-h1280-rgba8888.bin

adb -s %Device% shell rgaRotationRgb56590
adb -s %Device% pull /data/out0w720-h1280-rgb565.bin %img-path%
mv %img-path%/out0w720-h1280-rgb565.bin %img-path%/Rot90-w720-h1280-rgb565.bin

adb -s %Device% shell rgaRotationRgb565270
adb -s %Device% pull /data/out0w720-h1280-rgb565.bin %img-path%
mv %img-path%/out0w720-h1280-rgb565.bin %img-path%/Rot270-w720-h1280-rgb565.bin

adb -s %Device% shell rgaRotationYuv90
adb -s %Device% pull /data/out0w720-h1280-nv12.bin %img-path%
mv %img-path%/out0w720-h1280-nv12.bin %img-path%/Rot90-w720-h1280-nv12.bin

adb -s %Device% shell rgaRotationYuv270
adb -s %Device% pull /data/out0w720-h1280-nv12.bin %img-path%
mv %img-path%/out0w720-h1280-nv12.bin %img-path%/Rot270-w720-h1280-nv12.bin


adb -s %Device% shell rgaCopyRgbaToYuv
adb -s %Device% pull /data/out0w1280-h720-nv12.bin %img-path%
mv %img-path%/out0w1280-h720-nv12.bin %img-path%/RgbaToyuv-w1280-h720-nv12.bin

adb -s %Device% shell rgaCopyRgbaTo565
adb -s %Device% pull /data/out0w1280-h720-rgb565.bin %img-path%
mv %img-path%/out0w1280-h720-rgb565.bin %img-path%/RgbaTo565-w1280-h720-rgb565.bin

adb -s %Device% shell rgaCopyYuvTo565
adb -s %Device% pull /data/out0w1280-h720-rgb565.bin %img-path%
mv %img-path%/out0w1280-h720-rgb565.bin %img-path%/YuvTo565-w1280-h720-rgb565.bin

adb -s %Device% shell rgaCopy565ToYuv
adb -s %Device% pull /data/out0w1280-h720-nv12.bin %img-path%
mv %img-path%/out0w1280-h720-nv12.bin %img-path%/565Toyuv-w1280-h720-nv12.bin

adb -s %Device% shell rgaCopyYuvToRgba
adb -s %Device% pull /data/out0w1280-h720-rgba8888.bin %img-path%
mv %img-path%/out0w1280-h720-rgba8888.bin %img-path%/YuvToRgba-w1280-h720-rgba8888.bin

adb -s %Device% shell rgaCopy565ToRgba
adb -s %Device% pull /data/out0w1280-h720-rgba8888.bin %img-path%
mv %img-path%/out0w1280-h720-rgba8888.bin %img-path%/565ToRgba-w1280-h720-rgba8888.bin

adb -s %Device% shell rgaClip
adb -s %Device% pull /data/out0w360-h360-rgba8888.bin %img-path%
mv %img-path%/out0w360-h360-rgba8888.bin %img-path%/clip-360-h360-rgba8888.bin

adb -s %Device% shell rgaColorFill
adb -s %Device% pull /data/out0w1280-h720-rgba8888.bin %img-path%
mv %img-path%/out0w1280-h720-rgba8888.bin %img-path%/CF-1280-h720-rgba8888.bin

goto:eof 
:end