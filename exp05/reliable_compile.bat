@echo off
setlocal enabledelayedexpansion

set "JAVA_HOME=C:\Program Files\Java\jdk-23"
set "TOMCAT_LIB=C:\Program Files\Apache Software Foundation\Tomcat 9.0\lib"
set "PROJECT_DIR=%~dp0"

set "CLASSPATH=%PROJECT_DIR%WEB-INF\lib\*;%TOMCAT_LIB%\servlet-api.jar;%PROJECT_DIR%WEB-INF\classes"

echo 清理旧类文件...
rmdir /s /q "%PROJECT_DIR%WEB-INF\classes" 2>nul
mkdir "%PROJECT_DIR%WEB-INF\classes"

echo 编译Java源文件...
for /r "%PROJECT_DIR%src\" %%i in (*.java) do (
    echo 正在编译: %%~nxi
    "%JAVA_HOME%\bin\javac" -d "%PROJECT_DIR%WEB-INF\classes" -cp "%CLASSPATH%" -encoding UTF-8 "%%i"
    if errorlevel 1 (
        echo 编译失败: %%~nxi
        exit /b 1
    )
)

if %errorlevel% equ 0 (
    echo 编译成功!
    echo 类文件输出到: %PROJECT_DIR%WEB-INF\classes
) else (
    echo 编译失败! 请检查错误信息
)
pause