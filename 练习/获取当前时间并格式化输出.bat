@echo off
@rem 获取分钟 秒钟
for /f "tokens=1,2 delims=:" %%m in ('time /t') do (
    set MINUTE=%%m
    set SECOND=%%n
)
@rem 获取日期
for /f "tokens=1 delims= " %%d in ('date /t') do (
    set DAY=%%d
)
@rem 格式化输出
for /f "tokens=1,2,3 delims=/" %%i in ("%DAY%") do (
    set TIMESTR=%%i%%j%%k%MINUTE%%SECOND%
)
echo %TIMESTR%
pause