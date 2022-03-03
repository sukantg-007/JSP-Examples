<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" info="This is Test.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <h1><%=getServletInfo()%></h1>
        <h2><%=new Date().toString()%></h2>
    <body>
    </body>
</html>
