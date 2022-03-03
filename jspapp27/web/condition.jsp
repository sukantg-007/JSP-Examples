<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--if-->
        <c:if test="<%= 10 > 20%>">
            <h1>This is true block </h1>
        </c:if>
        <h2>this is after if</h2>
        <%--switch case
        <c:choose>--swith <c:when>--case <c:otherwise>--default --%>
        <c:set var="per" value="34"/>
        <h1>
            <c:choose>
                <c:when test="${per < 80 && per >= 70}">
                    You Got First-Class with Distinction
                </c:when>
                <c:when test="${per lt 70 && per ge 60}">
                    You Got First-Class
                </c:when>
                <c:when test="${per lt 60 && per ge 50}">
                    You Got Second-Class
                </c:when>
                <c:when test="${per ge 35}">
                    You Got Pass-Class
                </c:when>
                <c:otherwise>
                    Better luck next time
                </c:otherwise>
            </c:choose>
        </h1>


    </body>
</html>
