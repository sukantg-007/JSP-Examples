<%@page pageEncoding="UTF-8" contentType="text/html" %>
<%@page  isErrorPage="true" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>        
        <!--assing x variable a value-->
        <c:set var="x" value="<%= 10 < 20%>"/>
        <div>
            <!--show value of x variable-->
            <h1><c:out value="${x}" default="false"/></h1>
        </div>
        <!--remove x variable from page scope-->
        <c:remove var="x"/>
        <div>
            <h1><c:out value="${x}" default="false"/></h1>
        </div>            
            <c:set var="s" value='<%= new String[]{"a","b"} %>' />
        
            <c:out value='${s[100]}'/>
        
            <h1>
        
                    <c:out value="${pageContext.exception.message}"/>
        
            </h1>
                
    </body>
</html>
