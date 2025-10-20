@echo off
REM 切换到CMD兼容模式
title 实验五编译工具 - CMD模式

echo 正在设置环境...
set JAVA_HOME="C:\Program Files\Java\jdk-23"
set PATH=%JAVA_HOME%\bin;%PATH%
set TOMCAT_HOME="C:\Program Files\Apache Software Foundation\Tomcat 9.0"

echo 切换到项目目录...
cd /d "%~dp0"

echo 创建classes目录...
if not exist "WEB-INF\classes" mkdir "WEB-INF\classes"

echo 编译BookBean...
javac -d "WEB-INF\classes" "src\com\beans\BookBean.java"

echo 编译BookDAO...
javac -d "WEB-INF\classes" -cp "WEB-INF\classes;%TOMCAT_HOME%\lib\servlet-api.jar;WEB-INF\lib\*" "src\com\dao\BookDAO.java"

echo 编译Servlet...
javac -d "WEB-INF\classes" -cp "WEB-INF\classes;%TOMCAT_HOME%\lib\servlet-api.jar;WEB-INF\lib\*" "src\com\servlet\BookQueryServlet.java" "src\com\servlet\BookInsertServlet.java"

echo 编译完成！生成的class文件：
dir /s /b WEB-INF\classes\*.class

pause