<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>HEADER</h1>
        <h1><c:import url="body.html"/></h1>
        <!--<a href='<c:url value="http://localhost:1010/jspapp25/index.jsp"/>'>|HOME|</a>-->
        <c:redirect url="http://localhost:1010/jspapp25/index.jsp"/>
        <h1>FOOTER</h1>
    </body>
</html>
