<%@ page language="java" import="java.util.*" import="com.nie.test.userbean.*" pageEncoding="utf-8"%>
<%
 UserBean user = (UserBean)request.getAttribute("userlist"); 
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  
  <body>
    This is my JSP page. <br>
    <table border="1px;">
    <tr>
    <td>序号</td>
    <td>账号</td>
    <td>姓名</td>
    <td>性别</td>
    <td>爱好</td>
    <td>简介</td>
    </tr>
    <tr>
    <td><%=1%></td>
    <td><%=user.getAccount()%></td>
    <td><%=user.getName()%></td>
    <td><%=user.getGender()%></td>
    <td><%=user.getInterest()%></td>
    <td><%=user.getMsg()%></td>
    </tr>
    </table>
  </body>
</html>
