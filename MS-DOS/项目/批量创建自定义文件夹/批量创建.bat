echo off
for /f "tokens=* delims=" %%n in (./文件夹名.txt) do (
	set FILENAME=%%n
	goto :breakLoop
	
)
:breakLoop
for /f "skip=1 tokens=* delims=" %%i in (./文件夹名.txt) do (
	mkdir .\%FILENAME%\%%i
	echo 已创建 \%FILENAME%\%%i
)
pause