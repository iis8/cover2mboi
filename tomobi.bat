echo %1
@echo off
::ת��EPUBΪMOBI ����C2ѹ��
kindlegen "%1" -c2

set b=%1
::�鼮����
set bookname= %b:~0,-5%
set mn=%bookname%.mobi

if not exist %bookname% md %bookname%

::ѹ��MOBI
kindlestrip.py %mn% %mn%

::�ƶ�
move %1 %bookname%
move %mn% %bookname%