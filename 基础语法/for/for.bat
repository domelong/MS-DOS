@rem FOR /L %variable IN (start,step,end) DO command [command-parameters]
@rem FOR /F ["options"] %variable IN (file-set) DO command [command-parameters]
@rem FOR /F ["options"] %variable IN ("string") DO command [command-parameters]
@rem FOR /F ["options"] %variable IN ('command') DO command [command-parameters]
@rem options:
@rem eol=c           - 指一个行注释字符的结尾(就一个)
@rem skip=n          - 指在文件开始时忽略的行数。
@rem delims=xxx      - 指分隔符集。这个替换了空格和制表符的
@rem                   默认分隔符集。
@rem tokens=x,y,m-n  - 指每行的哪一个符号被传递到每个迭代
@rem                   的 for 本身。这会导致额外变量名称的分配。m-n
@rem                   格式为一个范围。通过 nth 符号指定 mth。如果
@rem                   符号字符串中的最后一个字符星号，
@rem                   那么额外的变量将在最后一个符号解析之后
@rem                   分配并接受行的保留文本。
@rem usebackq        - 指定新语法已在下类情况中使用:
@rem                   在作为命令执行一个后引号的字符串并且一个单
@rem                   引号字符为文字字符串命令并允许在 file-set
@rem                   中使用双引号扩起文件名称。
@rem                   读文件 
echo off
@rem for生成有序序列
for /l %%i in (1, 1, 10) do echo %%i 
@rem for读文件
for /f %%t in (./res.txt) do echo %%t
@rem for执行命令 并赋值
for /f %%t in ('time /t') do echo set t=%%t
pause
