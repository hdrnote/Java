<%--
  Created by IntelliJ IDEA.
  User: hdr
  Date: 2018/5/31
  Time: 18:12
  To change this template use File | Settings | File Templates.

  request对象:客户端的请求信息被封装在requests对象中,通过它才能了解客户的需求,然后做出响应.
  它是HttpServletRequest类的实例.
  常用方法:
  String getParameter(String name) 获取参数值
  String[] getParameterValues(Stirng name) 获取参数的所有值
  void setAtribute(String name, Object obj) 添加属性
  object getAttribute(String name) 获取属性值
  String getContentType() 获取请求体的MIME类型
  String getProtocol() 获取请求协议类型及版本号
  String getServerName() 获取接收请求的服务器主机名
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>requestDemo</title>
</head>
<body>

</body>
</html>
