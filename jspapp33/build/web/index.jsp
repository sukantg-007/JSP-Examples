<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/Hello.tld" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>${fn:sayHello("AAA")}</h1>
        <c:forEach items="${fn:showEmployee()}" var="list">            
            <h1><c:out value="${list}"/></h1>
        </c:forEach>
    </body>
</html>
