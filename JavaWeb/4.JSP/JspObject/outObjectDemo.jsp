<%--
  Created by IntelliJ IDEA.
  User: hdr
  Date: 2018/5/31
  Time: 18:04
  To change this template use File | Settings | File Templates.

  out对象:JspWriter类的实例,是向客户端输出内容常用的对象.
  常用方法:
  void println()
  void.print()
  void clear()  清除缓冲区
  void clearBuffer() 清除缓冲区并把数据发送给客户端
  void flush()  将缓冲区内容输出到客户端
  int getBufferSize() 查看缓冲区容量大小
  int getRemaining()  查看缓冲区剩余容量
  boolean isAutoFlush() 缓冲区满时,是否自动输出内容到客户端
  void clean() 关闭输出流
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>outObjectDemo</title>
</head>
<body>
<% out.print("Hello World");%>

</body>
</html>
