<%--
  Created by IntelliJ IDEA.
  User: hdr
  Date: 2018/5/31
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form action="dologin.jsp" method="post">
    <p class="main">
        <label for="userName">用户名:</label>
        <input type="text" name="userName" id="userName">
        <label for="pwd"> 密码:</label>
        <input type="password" name="password" id="pwd">
    </p>
    <p class="spave">
        <input type="submit" value="登录" class="login">
    </p>
</form>
</body>
</html>
