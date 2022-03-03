<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>        
        <!--general tags-->
        <c:set var="s" value='<%= new String[]{"AAA", "BBB", "CCC"}%>'/>
        <h1><c:out value="${s[2]}"/></h1>
        <%--<c:remove var="s"/>--%>
        <h1><c:out value="${s[2]}"/></h1>
        <c:catch var="e">
            <c:set var="y" value="<%= 10 / 0%>"/>
        </c:catch>
        <h1><c:out value="${e.message}"/></h1>
        <h1><c:out value="JSTL"/></h1>
        <!--ITERATIVE TAGS-->
        <%--<c:forEach> <c:forTokens>--%>
        <c:forEach var="i" begin="1" end="10" step="3">
            <h1>This is foreach loop : <c:out value="${i}"/></h1>
        </c:forEach>
        <h1>
            <c:forEach var="name" items="${s}">
                Name : <c:out value="${name}"/><br>
            </c:forEach>
        </h1>
        <%
            ArrayList<String> list = new ArrayList<String>();
            list.add("C");
            list.add("C++");
            list.add("Java");
            ArrayList<String> list2 = new ArrayList<String>();
            list2.add("Money Heist");
            list2.add("Secrete Games");
            list2.add("Start wor");
            request.setAttribute("series", list2);
            pageContext.setAttribute("lang", list);
        %>
        <c:forEach var="lang" items="${pageScope.lang}">
            Language : <c:out value="${lang}"/><br>
        </c:forEach>
        <br>
        <c:forEach var="ser" items="${requestScope.series}">
            Series : <c:out value="${ser}"/>
        </c:forEach>
            
            <%--<c:forTokens>--%>
            <c:forTokens var="l" items="AAA BBB CCC DDD" delims=" ">
                Name : <c:out value="${l}"/>
            </c:forTokens>
    </body>
</html>
