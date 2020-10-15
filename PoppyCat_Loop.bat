@ECHO OFF
:TOP
adb shell input tap 250 2130
TIMEOUT 140
adb shell input tap 555 1637
TIMEOUT 10
goto TOP