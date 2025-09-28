<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="user" class="com.beans.UserBean" scope="page"/>
<jsp:setProperty name="user" property="*"/>

<html>
<head>
    <title>用户信息显示</title>
</head>
<body>
<h2>用户信息</h2>
<table border="1">
    <tr>
        <td>用户名:</td>
        <td><jsp:getProperty name="user" property="username"/></td>
    </tr>
    <tr>
        <td>密码:</td>
        <td><jsp:getProperty name="user" property="password"/></td>
    </tr>
    <tr>
        <td>邮箱:</td>
        <td><jsp:getProperty name="user" property="email"/></td>
    </tr>
</table>
</body>
</html>