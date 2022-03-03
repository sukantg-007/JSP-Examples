<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="/WEB-INF/tlds/login.tld" prefix="fn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="x" value='${fn:isValid(param.uname,param.upass)}'/>
        <%--<c:out value="${x}"/>--%>
        
        <c:if test="${x==true}">
            <c:redirect url="success.html"/>
        </c:if>
        <c:if test="${x!=true}">
            <c:redirect url="fail.html"/>
        </c:if>        
    </body>
</html>
