<%--
  Created by IntelliJ IDEA.
  User: hdr
  Date: 2018/5/31
  Time: 18:33
  To change this template use File | Settings | File Templates.

  什么是session?
  session表示客户端与服务器的一次对话
  Web中的session指的是用户在浏览某个网站时,从进入网站到浏览器关闭所经历的这段时间.

  session对象
  session对象在第一个JSP页面被装载时自动创建,完成会话期管理.
  从一个客户打开浏览器连接到服务器开始,到客户关闭浏览器离开这个服务器结束,被称为一个会话.
  可以把session对象理解为用户的ID

  session对象常用方法
  long getCreationTime():返回session创建时间
  String getId(): 获取session创建时,JSP引擎为它设定的唯一ID号
  Object setAttribute(String name , Object value)
  Object getAttribute(String name)
  String[] getValueNames() : 获取所有属性名
  int getMaxInactiveInterval(): 设置session最大请求时间间隔,超过时间,取消session

  session的生命周期
    创建:
        当客户端第一次访问某个JSP或Servlet时,服务器会为当前会话创建一个SessionId,每次客户端向服务器发送请求时,
        都会携带该sessionId,服务端会对此sessionId进行校验.

    活动:
        某次会话当中通过超链接打开的新页面属于同一个会话.
        如果本次会话所有页面都被关闭,那么再次访问JSP或Servlet时,会获得新的sessionId
        注意:原来的sessionId依然存在,只是再也没有携带那个sessionId的客户端了
    销毁:
        ①调用session.invalidate()方法
        ②session过期
        ③服务器重启
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
