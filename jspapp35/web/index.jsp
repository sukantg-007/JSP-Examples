<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var="val" value="Java Programming Language"/>
        <h1><c:out value="${val}"/></h1>
        <h1><c:out value="${fn:toUpperCase(val)}"/></h1>
        <h1><c:out value="${fn:toLowerCase(val)}"/></h1>
        <h1><c:out value="${fn:contains(val,\"java\")}"/></h1>
        <h1><c:out value="${fn:containsIgnoreCase(val,\"java\")}"/></h1>
        <h1><c:out value="${fn:endsWith(val,\"ing\")}"/></h1>
        <h1><c:out value="${fn:startsWith(val,\"Java\")}"/></h1>
        <h1><c:out value="${fn:indexOf(val,\"J\")}"/></h1>
        <h1><c:set var="str" value="${fn:split(val,\" \")}"/></h1>
        <h1><c:out value="${str[0]} ${str[1]}"/></h1>
        <h1><c:set var="str1" value="${fn:join(str,'-')}"/></h1>
        <h1><c:out value="${fn:length(str1)}"/></h1>
        <h1><c:out value="${str1}"/></h1>
        <h1><c:out value="${fn:substring(str1,fn:indexOf(str1,\"Lang\"),fn:length(str1))}"/></h1>
        
    </body>
</html>
