echo off
for /f "tokens=1,2 delims=:" %%m in ('time /t') do (
    set MINUTE=%%m
    set SECOND=%%n
)
for /f "tokens=1 delims= " %%d in ('date /t') do (
    set DAY=%%d
)
for /f "tokens=1,2,3 delims=/" %%i in ("%DAY%") do (
    set FILENAME=%%i%%j%%k%MINUTE%%SECOND%
)
for /f "tokens=*" %%i in (./�ļ�����.txt) do (
	mkdir ".\%FILENAME%\%%i"
	echo �Ѵ��� \%FILENAME%\%%i
)
pause