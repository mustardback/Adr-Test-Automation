@ECHO OFF
:TOP
adb shell input tap 500 1250
TIMEOUT 2
goto TOP