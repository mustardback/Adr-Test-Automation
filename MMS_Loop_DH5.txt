@ECHO OFF
:TOP
adb shell am start -a android.intent.action.SENDTO -d sms:1234567890 --es sms_body TESTMESSAGE --ez exit_on_sent true
TIMEOUT 4
adb shell input touchscreen tap 680 766
adb shell input keyevent 3
TIMEOUT 5
goto TOP

