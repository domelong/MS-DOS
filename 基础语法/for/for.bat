@rem FOR /L %variable IN (start,step,end) DO command [command-parameters]
@rem FOR /F ["options"] %variable IN (file-set) DO command [command-parameters]
@rem FOR /F ["options"] %variable IN ("string") DO command [command-parameters]
@rem FOR /F ["options"] %variable IN ('command') DO command [command-parameters]
@rem options:
@rem eol=c           - ָһ����ע���ַ��Ľ�β(��һ��)
@rem skip=n          - ָ���ļ���ʼʱ���Ե�������
@rem delims=xxx      - ָ�ָ�����������滻�˿ո���Ʊ����
@rem                   Ĭ�Ϸָ�������
@rem tokens=x,y,m-n  - ָÿ�е���һ�����ű����ݵ�ÿ������
@rem                   �� for ������ᵼ�¶���������Ƶķ��䡣m-n
@rem                   ��ʽΪһ����Χ��ͨ�� nth ����ָ�� mth�����
@rem                   �����ַ����е����һ���ַ��Ǻţ�
@rem                   ��ô����ı����������һ�����Ž���֮��
@rem                   ���䲢�����еı����ı���
@rem usebackq        - ָ�����﷨�������������ʹ��:
@rem                   ����Ϊ����ִ��һ�������ŵ��ַ�������һ����
@rem                   �����ַ�Ϊ�����ַ������������ file-set
@rem                   ��ʹ��˫���������ļ����ơ�
@rem                   ���ļ� 
echo off
@rem for������������
for /l %%i in (1, 1, 10) do echo %%i 
@rem for���ļ�
for /f %%t in (./res.txt) do echo %%t
@rem forִ������ ����ֵ
for /f %%t in ('time /t') do echo set t=%%t
pause
