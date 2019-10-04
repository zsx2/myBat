@echo off
SET Sender1=%1
if "%1"=="" (
echo "Err ! No parameter!"
goto :end
) 
call:myDosFunc
if "%2"=="8" (
echo "CopyScale8"
call:CopyScale8
goto :end
)
if "%2"=="16" (
echo "CopyScale16"
call:CopyCcale16
goto :end
)
goto :end

:CopyCcale16

SET "bin-path=%Sender1%rgaCopyScaleRgbaBUP16"
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaCopyScaleRgbaBUP16
::echo %bin-path%

SET "bin-path=%Sender1%rgaCopyScaleRgb565BUP16"
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaCopyScaleRgb565BUP16
::echo %bin-path%

SET "bin-path=%Sender1%rgaCopyScaleYuvBUP16"
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaCopyScaleYuvBUP16
::echo %bin-path%

SET "bin-path=%Sender1%rgaCopyScaleRgbaDSize16"
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaCopyScaleRgbaDSize16
::echo %bin-path%

SET "bin-path=%Sender1%rgaCopyScaleRgb565DSize16"
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaCopyScaleRgb565DSize16
::echo %bin-path%

SET "bin-path=%Sender1%rgaCopyScaleYuvDSize16"
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaCopyScaleYuvDSize16
::echo %bin-path%

goto:eof

:CopyScale8

SET "bin-path=%Sender1%rgaCopyScaleRgbaBUP8"
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaCopyScaleRgbaBUP8
::echo %bin-path%

SET "bin-path=%Sender1%rgaCopyScaleRgb565BUP8"
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaCopyScaleRgb565BUP8
::echo %bin-path%

SET "bin-path=%Sender1%rgaCopyScaleYuvBUP8"
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaCopyScaleYuvBUP8
::echo %bin-path%

SET "bin-path=%Sender1%rgaCopyScaleRgbaDSize8"
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaCopyScaleRgbaDSize8
::echo %bin-path%

SET "bin-path=%Sender1%rgaCopyScaleRgb565DSize8"
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaCopyScaleRgb565DSize8
::echo %bin-path%

SET "bin-path=%Sender1%rgaCopyScaleYuvDSize8"
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaCopyScaleYuvDSize8
::echo %bin-path%

goto:eof


:myDosFunc
::字符串拼接
SET "bin-path=%Sender1%rgaBlit"
adb root
adb remount
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaBlit
::echo %bin-path%

SET "bin-path=%Sender1%rgaColorFill
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaColorFill
::echo %bin-path%

SET "bin-path=%Sender1%rgaSlt
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaSlt
::echo %bin-path%

SET "bin-path=%Sender1%rgaUserSpace
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaUserSpace
::echo %bin-path%

SET "bin-path=%Sender1%rgaClip
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaClip
::echo %bin-path%

SET "bin-path=%Sender1%rgaCopyRgbaToYuv
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaCopyRgbaToYuv
::echo %bin-path%

SET "bin-path=%Sender1%rgaCopyRgbaTo565
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaCopyRgbaTo565
::echo %bin-path%

SET "bin-path=%Sender1%rgaCopyYuvTo565
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaCopyYuvTo565
::echo %bin-path%

SET "bin-path=%Sender1%rgaCopyYuvToRgba
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaCopyYuvToRgba
::echo %bin-path%

SET "bin-path=%Sender1%rgaCopy565ToYuv
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaCopy565ToYuv
::echo %bin-path%

SET "bin-path=%Sender1%rgaCopy565ToRgba
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaCopy565ToRgba
::echo %bin-path%

SET "bin-path=%Sender1%rgaRotationRgba90
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaRotationRgba90
::echo %bin-path%

SET "bin-path=%Sender1%rgaRotationRgba270
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaRotationRgba270 
::echo %bin-path%


SET "bin-path=%Sender1%rgaRotationRgb56590
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaRotationRgb56590
::echo %bin-path%

SET "bin-path=%Sender1%rgaRotationRgb565270
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaRotationRgb565270 
::echo %bin-path%

SET "bin-path=%Sender1%rgaRotationYuv90
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaRotationYuv90
::echo %bin-path%

SET "bin-path=%Sender1%rgaRotationYuv270
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaRotationYuv270 
::echo %bin-path%

SET "bin-path=%Sender1%rgaMirrorYuvH
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaMirrorYuvH
::echo %bin-path%

SET "bin-path=%Sender1%rgaMirrorYuvV
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaMirrorYuvV
::echo %bin-path%

SET "bin-path=%Sender1%rgaMirrorRgbaH
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaMirrorRgbaH
::echo %bin-path%

SET "bin-path=%Sender1%rgaMirrorRgbaV
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaMirrorRgbaV
::echo %bin-path%

SET "bin-path=%Sender1%rgaMirrorRgb565H
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaMirrorRgb565H
::echo %bin-path%

SET "bin-path=%Sender1%rgaMirrorRgb565V
adb push %bin-path% system/bin/
adb shell chmod 777 system/bin/rgaMirrorRgb565V
::echo %bin-path%

goto:eof
::adb push Sender1 system/bin
:end