<%--
  Created by IntelliJ IDEA.
  User: 1234567890
  Date: 8/1/2018
  Time: 4:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>index.jsp</title>
</head>
<body>
<h1>Home</h1>
    <%
    String username = (String) session.getAttribute("username");
    if (username != null) {%>
    Welcome : <%=username%>
    <p>
        <a href="/logout?islogout=ok">logout</a>
    </p>
    <%
    }
    %>
</body>
</html>
