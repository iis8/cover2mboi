@echo off
@title epub2mobi 

echo ����ʱ����%time:~0,2%��%time:~3,2%��%time:~6,2%��
set time1=%time:~0,2%%time:~3,2%%time:~6,2%
echo ��ʼת��EPUB�ĵ�
for %%i in (*.epub) do call tomobi.bat %%i


echo ����ʱ����%time:~0,2%��%time:~3,2%��%time:~6,2%��
set time2=%time:~0,2%%time:~3,2%%time:~6,2%


set /a time3=%time2%-%time1%
echo ���%time3%��
pause