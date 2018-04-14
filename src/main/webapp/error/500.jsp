<%--
  Created by IntelliJ IDEA.
  User: tangsong1
  Date: 2018/4/14
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>错误</title>
</head>
<body>
<%--<%@ page errorPage="/error/500.jsp" %>--%>
errorMessage:<%= exception.getMessage()%>
</body>
</html>
