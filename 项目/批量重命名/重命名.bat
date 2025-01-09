echo off
for /f "tokens=1, 2 delims=->" %%i in (.\文件名.txt) do (
	rename %%i %%j
	echo %%i 变更为 %%j
)
pause