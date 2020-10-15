@ECHO OFF
set /A Y1=725
set /A Y2=930
set /A Y3=1220
set /A Y4=1485
set /A Y5=1755
set /A Y6=2060
set /A Y7=2335
set /A Y8=2600
set /A AppRuntimer=160
:TOP
@adb shell screencap -p /sdcard/screen.png
adb shell input tap 1130 1580
TIMEOUT 2
adb shell input tap 1000 1900
TIMEOUT 2
adb shell input tap 400 2640
TIMEOUT 3
adb shell input tap 1025 1150
TIMEOUT 5
adb shell input keyevent KEYCODE_APP_SWITCH
TIMEOUT 2
adb shell input tap 700 1400
TIMEOUT 5
adb shell input swipe 1130 1865 1130 590 1500
TIMEOUT 2
goto TOP