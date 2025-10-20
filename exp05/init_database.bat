@echo off
set MYSQL_PATH="C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe"
if not exist %MYSQL_PATH% set MYSQL_PATH=mysql

echo 正在重建test数据库...
%MYSQL_PATH% -u root -p -e "DROP DATABASE IF EXISTS test; CREATE DATABASE test; USE test; SOURCE \"%~dp0test.sql\";"

if %errorlevel% equ 0 (
    echo 数据库重建成功!
    echo 验证表结构...
    %MYSQL_PATH% -u root -p -e "USE test; DESC books; DESC customer;"
) else (
    echo 数据库重建失败! 请检查文件路径
    echo 尝试手动执行:
    echo %MYSQL_PATH% -u root -p -e "USE test; SOURCE \"%~dp0test.sql\";"
)
pause