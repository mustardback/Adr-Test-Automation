@ECHO OFF
set /A Y1=725
set /A Y2=930
set /A Y3=1220
set /A Y4=1485
set /A Y5=1755
set /A Y6=2060
set /A Y7=2335
set /A Y8=2600
set /A AppRuntimer=85
set /A LoopCount=0
goto TOP

:RESET
adb shell input swipe 645 600 645 2800 500
adb shell input swipe 645 600 645 2800 500
adb shell input swipe 645 600 645 2800 500
set /A LoopCount=0
TIMEOUT 8
goto TOP

:TOP
@adb shell screencap -p /sdcard/screen.png
if %LoopCount%==4 goto RESET

TIMEOUT 5
adb shell input tap 645 %Y1%
TIMEOUT %AppRuntimer%
adb shell settings put system accelerometer_rotation 1
adb shell input keyevent KEYCODE_APP_SWITCH
TIMEOUT 5

adb shell settings put system accelerometer_rotation 0
adb shell settings put system user_rotation 2
adb shell input tap 700 1400
TIMEOUT 5


adb shell input tap 645 %Y2%
TIMEOUT %AppRuntimer%
adb shell settings put system accelerometer_rotation 1
adb shell input keyevent KEYCODE_APP_SWITCH
TIMEOUT 5

adb shell settings put system accelerometer_rotation 0
adb shell settings put system user_rotation 2
adb shell input tap 700 1400
TIMEOUT 5


adb shell input tap 645 %Y3%
TIMEOUT %AppRuntimer%
adb shell settings put system accelerometer_rotation 1
adb shell input keyevent KEYCODE_APP_SWITCH
TIMEOUT 5

adb shell settings put system accelerometer_rotation 0
adb shell settings put system user_rotation 2
adb shell input tap 700 1400
TIMEOUT 5


adb shell input tap 645 %Y4%
TIMEOUT %AppRuntimer%
adb shell settings put system accelerometer_rotation 1
adb shell input keyevent KEYCODE_APP_SWITCH
TIMEOUT 5

adb shell settings put system accelerometer_rotation 0
adb shell settings put system user_rotation 2
adb shell input tap 700 1400
TIMEOUT 5


adb shell input tap 645 %Y5%
TIMEOUT %AppRuntimer%
adb shell settings put system accelerometer_rotation 1
adb shell input keyevent KEYCODE_APP_SWITCH
TIMEOUT 5

adb shell settings put system accelerometer_rotation 0
adb shell settings put system user_rotation 2
adb shell input tap 700 1400
TIMEOUT 5

adb shell input tap 645 %Y6%
TIMEOUT %AppRuntimer%
adb shell settings put system accelerometer_rotation 1
adb shell input keyevent KEYCODE_APP_SWITCH
TIMEOUT 5

adb shell settings put system accelerometer_rotation 0
adb shell settings put system user_rotation 2
adb shell input tap 700 1400
TIMEOUT 5


adb shell input tap 645 %Y7%
TIMEOUT %AppRuntimer%
adb shell settings put system accelerometer_rotation 1
adb shell input keyevent KEYCODE_APP_SWITCH
TIMEOUT 5

adb shell settings put system accelerometer_rotation 0
adb shell settings put system user_rotation 2
adb shell input tap 700 1400
TIMEOUT 5


adb shell input tap 645 %Y8%
TIMEOUT %AppRuntimer%
adb shell settings put system accelerometer_rotation 1
adb shell input keyevent KEYCODE_APP_SWITCH
TIMEOUT 5

adb shell settings put system accelerometer_rotation 0
adb shell settings put system user_rotation 2
adb shell input tap 700 1400
TIMEOUT 5 

set /A LoopCount = %LoopCount% + 1
adb shell input swipe 725 2600 725 550 2500
goto TOP