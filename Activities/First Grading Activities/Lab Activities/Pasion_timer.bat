@echo off
set /p seconds=Enter the countdown time in seconds:
:countdown
if %seconds% gtr 0 (
   echo Time remaining: %seconds% seconds
   timeout /t 1 >nul
   set /a seconds=%seconds%-1
   goto countdown
)
echo Timer finished!
pause