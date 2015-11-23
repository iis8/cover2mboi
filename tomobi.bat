echo %1
@echo off
::转换EPUB为MOBI 启用C2压缩
kindlegen "%1" -c2

set b=%1
::书籍名称
set bookname= %b:~0,-5%
set mn=%bookname%.mobi

if not exist %bookname% md %bookname%

::压缩MOBI
kindlestrip.py %mn% %mn%

::移动
move %1 %bookname%
move %mn% %bookname%