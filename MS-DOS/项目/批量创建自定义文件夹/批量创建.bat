echo off
for /f "tokens=* delims=" %%n in (./�ļ�����.txt) do (
	set FILENAME=%%n
	goto :breakLoop
	
)
:breakLoop
for /f "skip=1 tokens=* delims=" %%i in (./�ļ�����.txt) do (
	mkdir .\%FILENAME%\%%i
	echo �Ѵ��� \%FILENAME%\%%i
)
pause