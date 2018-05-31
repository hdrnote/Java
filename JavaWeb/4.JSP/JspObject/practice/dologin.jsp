<%--
  Created by IntelliJ IDEA.
  User: hdr
  Date: 2018/5/31
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getRequestURI();

    String userName = request.getParameter("userName");
    String password = request.getParameter("password");

    if("admin".equals(userName)&&"admin".equals(password)){
        session.setAttribute("name",userName);
        request.getRequestDispatcher("login_success.jsp").forward(request,response);
    }
    else {
        response.sendRedirect("login_failure.jsp");
    }
%>
