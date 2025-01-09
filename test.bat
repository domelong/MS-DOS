@echo off
for /f "tokens=* delims=" %%a in (.\test.txt) do (
    echo %%a
)
pause