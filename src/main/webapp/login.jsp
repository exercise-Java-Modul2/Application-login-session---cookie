<%--
  Created by IntelliJ IDEA.
  User: 1234567890
  Date: 8/1/2018
  Time: 4:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
<%
    Cookie[] listCookie = request.getCookies();
    String user = "";
    String pass = "";
    int count = 0;
    if (listCookie != null) {
        while (count < listCookie.length) {
            if (listCookie[count].getName().equals("user")) {
                user = listCookie[count].getValue();
            }
            if (listCookie[count].getName().equals("pass")) {
                pass = listCookie[count].getValue();
            }
            count++;
        }
    }
%>

<p>
    <c:if test='${requestScope["error"] != null}'>
        <span>${requestScope["error"]}</span>
    </c:if>
</p>
<h1>Login</h1>
<form action="/login" method="post">
    <table>
        <tr>
            <td>Username:</td>
            <td><input type="text" name="txtUsername" placeholder="Enter username" value=""/></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><input type="password" name="txtPassword" placeholder="Enter password" value=""/></td>
        </tr>
        <tr>
            <td><input type="checkbox" name="chkRemember" value="ON"/>Remember to me</td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Login"/></td>
        </tr>
    </table>
</form>
</body>
</html>
