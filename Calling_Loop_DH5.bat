@ECHO OFF
:TOP
adb shell am start -a android.intent.action.CALL -d tel:"8773409024"
TIMEOUT 600
adb shell input keyevent KEYCODE_ENDCALL
TIMEOUT 5
adb shell am start -a android.intent.action.CALL -d tel:"123456789"
TIMEOUT 150
adb shell input keyevent KEYCODE_ENDCALL
TIMEOUT 5
adb shell am start -a android.intent.action.CALL -d tel:"8773409024"
TIMEOUT 23
adb shell input keyevent KEYCODE_ENDCALL
adb shell am start -a android.intent.action.CALL -d tel:"123456789"
TIMEOUT 100
adb shell input keyevent KEYCODE_ENDCALL
goto TOP
