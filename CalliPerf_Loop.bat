@ECHO OFF

set prodCMD="-u -c 2607:fb90:c10d:200:f816:3eff:febc:635f -b 50M -t600 -P5 -V -p8100 -R -l1400"
set labCMD="-u -c 10.25.17.35 -b 50M -t600 -P5 -p8100 -R -l1400"
set MTNUM1=8773409024

:TOP
adb shell am start -a android.intent.action.CALL -d tel:"%MTNUM1%" >NUL
echo. 
echo CALLING...
TIMEOUT 5 >NUL 

echo SWITCHING...
adb shell input keyevent KEYCODE_APP_SWITCH
TIMEOUT 3 >NUL
adb shell input tap 20 1150

TIMEOUT 3 >NUL
adb shell input tap 888 280
echo IPERF STARTING..press to end call

TIMEOUT 30 >NUL
adb shell input keyevent KEYCODE_ENDCALL
echo ENDING CALL...
TIMEOUT 3 >NUL

goto TOP
