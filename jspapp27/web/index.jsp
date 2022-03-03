<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="temp" value="<%=10 * 20%>"/>

        <h1>
            <c:out value="${temp}"/>
        </h1>
        <c:remove var="temp"/>
        <h1>
            <c:out value="${temp}" default="Not-Available"/>
        </h1>
        <c:catch var="e">
            <c:set var="y" value="<%= 10 / 0%>"/>
        </c:catch>
        <h1>
            Exception : <c:out value="${e}" default="Not-Available"/>
        </h1>            

        <c:catch var="e1">
            <%
                String[] s = new String[]{"C", "c++", "Java"};
                out.println(s[3]);
            %>
        </c:catch>
        <h1>
            Exception: <c:out value="${e1}" default="Not-Available"/>
        </h1>  
        <c:if test="<%= 10 > 20%>">
            <h1>This is true block</h1>
        </c:if>
        <br>                    
        <c:set var="val" value="60"/>
        <h1>
            <c:choose>
                <c:when test="${val==10}">
                    Value is Ten
                </c:when>                    
                <c:when test="${val==20}">
                    Value is Twenty
                </c:when>                    
                <c:when test="${val==30}">
                    Value is Thirty
                </c:when>                    
                <c:when test="${val==40}">
                    Value is Forty
                </c:when>                    
                <c:when test="${val==50}">
                    Value is Fifty
                </c:when>        
                <c:otherwise>
                    Value is out of Scope
                </c:otherwise>
            </c:choose>

            <c:forEach var="i" begin="1" end="10" step="6">
                <h1>this is demo : <c:out value="${i}"/></h1>
            </c:forEach>
            <%
            String[] str1=new String[]{"AAA","BBB","CCC"};
            request.setAttribute("names", str1);
            %>
            <h1>
            <c:forEach var="name" items="${names}">
                <c:out value="${name}"/>
            </c:forEach>
                </h1>
            <h1>
            <c:forTokens var="names" items="aaa bbb ccc" delims=" ">
                <c:out value="${names}"/><br>                       
            </c:forTokens>
                </h1>
        </h1>
    </body>
</html>
