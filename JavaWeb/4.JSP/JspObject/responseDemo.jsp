<%--
  Created by IntelliJ IDEA.
  User: hdr
  Date: 2018/5/31
  Time: 18:19
  To change this template use File | Settings | File Templates.
  response对象:包含了响应客户端请求的有效信息,在JSP中很少直接用到它.
  访问一个页面时,该页面内的response对象只能对这次访问有效.

  String getCharacterEncoding() 返回响应用的是何种字符编码
  void setContentType(String type) 设置响应的MIME类型
  PrintWriter getWriter() 获取一个可以向客户端输出内容的对象.
  sendRedirect(String location) 重定向

  请求转发与请求重定向的区别
  请求重定向:客户端行为,本质上来讲等于两次请求,第一次请求对象不会保存,地址栏URL改变.
  请求转发:服务器行为,是一次请求,请求对象会被保存,地址栏URL地址不变.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<% response.sendRedirect("redirectAndforward.jsp"); %>--%>
<% request.getRequestDispatcher("redirectAndforward.jsp").forward(request,response);%>
</body>
</html>
