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
set D1= 
set D2=
set D3=
goto TOP

:TOP
@adb shell screencap -p /sdcard/screen.png
FOR /L %%n IN (1,8,1) DO {CALL :SWITCH}
goto TOP

:SWITCH
echo 1
goto TOP