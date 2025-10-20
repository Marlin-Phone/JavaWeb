@echo off
setlocal enabledelayedexpansion

REM 使用短路径避免空格问题
set SHORT_TOMCAT=C:\PROGRA~1\Apache~1\Tomcat~1.0
set SHORT_PROJECT=C:\PROGRA~1\Apache~1\Tomcat~1.0\webapps\exp05

REM 设置项目路径
set SRC_DIR=%SHORT_PROJECT%\src
set CLASSES_DIR=%SHORT_PROJECT%\WEB-INF\classes
set LIB_DIR=%SHORT_PROJECT%\WEB-INF\lib

REM 创建classes目录
if not exist "%CLASSES_DIR%" mkdir "%CLASSES_DIR%"

REM 构建类路径
set CLASSPATH=.
for %%f in ("%LIB_DIR%\*.jar") do (
    set CLASSPATH=!CLASSPATH!;%%f
)
set CLASSPATH=!CLASSPATH!;"%SHORT_TOMCAT%\lib\servlet-api.jar"

REM 逐个编译Java文件
for %%d in (beans dao servlet) do (
    for %%f in ("%SRC_DIR%\com\%%d\*.java") do (
        echo 正在编译 %%f
        javac -d "%CLASSES_DIR%" -cp "!CLASSPATH!" "%%f"
    )
)

if %errorlevel% equ 0 (
    echo 编译成功！类文件已保存到 %CLASSES_DIR%
) else (
    echo 编译失败，请检查错误信息
)