@ECHO OFF
set /A Y1=725
set /A Y2=930
set /A Y3=1220
set /A Y4=1485
set /A Y5=1755
set /A Y6=2060
set /A Y7=2335
set /A Y8=2600
set YPos = %Y1% %Y2% %Y3% %Y4% %Y5% %Y6% %Y7% %Y8%
set /A AppRuntimer=120
set /A LoopCount = 0
set D1=R3CM812ADFK
set D2=R3CMC01L8HY
set D3=R3CMC028FKA
set /A YP=725
goto TOP

:TOP
@adb shell screencap -p /sdcard/screen.png
set /A LoopCount=%LoopCount% + 1
IF %LoopCount%==1 set /A YP=725
IF %LoopCount%==2 set /A YP=930
IF %LoopCount%==3 set /A YP=1220
IF %LoopCount%==4 set /A YP=1485
IF %LoopCount%==5 set /A YP=1755
IF %LoopCount%==6 set /A YP=2060
IF %LoopCount%==7 set /A YP=2335
IF %LoopCount%==8 set /A YP=2600

TIMEOUT 4
adb -s %D1% shell input tap 645 %YP%
adb -s %D2% shell input tap 645 %YP%
adb -s %D3% shell input tap 645 %YP%
TIMEOUT %AppRuntimer%
adb -s %D1% shell settings put system accelerometer_rotation 1
adb -s %D2% shell settings put system accelerometer_rotation 1
adb -s %D3% shell settings put system accelerometer_rotation 1
adb -s %D1% shell input keyevent KEYCODE_APP_SWITCH
adb -s %D2% shell input keyevent KEYCODE_APP_SWITCH
adb -s %D3% shell input keyevent KEYCODE_APP_SWITCH
TIMEOUT 5

adb -s %D1% shell settings put system accelerometer_rotation 0
adb -s %D2% shell settings put system accelerometer_rotation 0
adb -s %D3% shell settings put system accelerometer_rotation 0
adb -s %D1% shell settings put system user_rotation 2
adb -s %D2% shell settings put system user_rotation 2
adb -s %D3% shell settings put system user_rotation 2
adb -s %D1% shell input tap 700 1400
adb -s %D2% shell input tap 700 1400
adb -s %D3% shell input tap 700 1400
TIMEOUT 4

IF %LoopCount%==8 set /A LoopCount=0
goto TOP