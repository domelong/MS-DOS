echo off
for /f "tokens=1, 2 delims=->" %%i in (.\�ļ���.txt) do (
	rename %%i %%j
	echo %%i ���Ϊ %%j
)
pause