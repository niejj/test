<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form method="post" action="urlTest">
    账户：
    <input type="text" name="account"/><br>
    姓名：
    <input type="text" name="name"/><br>
    性别:
    <select name="gender">
    <option value="M">男</option>
    <option value="W">女</option>
    </select><br>
    爱好：
    <input type="checkbox" name="interest" value="吃饭"/>吃饭
    <input type="checkbox" name="interest" value="睡觉"/>睡觉
    <input type="checkbox" name="interest" value="打豆豆"/>打豆豆
    <br>
    简介：<br>
    <textarea rows="8" cols="20" name="msg"></textarea><br>
    <input type="submit" value="提交"/>
    </form>
  </body>
</html>
