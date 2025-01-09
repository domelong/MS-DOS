@echo off
for /f "tokens=1,2 delims=:" %%m in ('time /t') do (
    set MINUTE=%%m
    set SECOND=%%n
    echo %%m
)
for /f "tokens=1 delims= " %%d in ('date /t') do (
    set DAY=%%d
    echo %%d
)
for /f "tokens=1,2,3 delims=/" %%i in ("%DAY%") do (
    set TIMESTR=%%i%%j%%k%MINUTE%%SECOND%
)
echo %TIMESTR%
pause