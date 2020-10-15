@ECHO OFF
set /A Y1=725
set /A Y2=930
set /A Y3=1220
set /A Y4=1485
set /A Y5=1755
set /A Y6=2060
set /A Y7=2335
set /A Y8=2600
set /A AppRuntimer=120

goto TOP

:TOP
@adb shell screencap -p /sdcard/screen.png

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
goto TOP