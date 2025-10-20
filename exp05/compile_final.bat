@echo off
setlocal

echo 正在设置环境...
set JAVA_HOME="C:\Program Files\Java\jdk-23"
set PATH=%JAVA_HOME%\bin;%PATH%
set PROJECT_DIR=%~dp0

echo 创建classes目录...
if not exist "%PROJECT_DIR%WEB-INF\classes" mkdir "%PROJECT_DIR%WEB-INF\classes"

echo 编译BookBean...
javac -d "%PROJECT_DIR%WEB-INF\classes" "%PROJECT_DIR%src\com\beans\BookBean.java"

echo 编译BookDAO...
javac -d "%PROJECT_DIR%WEB-INF\classes" -cp "%PROJECT_DIR%WEB-INF\classes" "%PROJECT_DIR%src\com\dao\BookDAO.java"

echo 编译BookQueryServlet...
javac -d "%PROJECT_DIR%WEB-INF\classes" -cp "%PROJECT_DIR%WEB-INF\classes;%PROJECT_DIR%WEB-INF\lib\*;C:\Program Files\Apache Software Foundation\Tomcat 9.0\lib\servlet-api.jar" "%PROJECT_DIR%src\com\servlet\BookQueryServlet.java"

echo 编译BookInsertServlet...
javac -d "%PROJECT_DIR%WEB-INF\classes" -cp "%PROJECT_DIR%WEB-INF\classes;%PROJECT_DIR%WEB-INF\lib\*;C:\Program Files\Apache Software Foundation\Tomcat 9.0\lib\servlet-api.jar" "%PROJECT_DIR%src\com\servlet\BookInsertServlet.java"

echo 编译完成！请检查是否有错误信息
pause