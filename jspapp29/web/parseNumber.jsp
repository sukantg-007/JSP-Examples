<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>       
        <h1>Ur Number : <c:out value="${param.value}"/></h1>
        <fmt:parseNumber var="newval" value="${param.value}" integerOnly="true"/>        
        <h1>New Value : <c:out value="${newval*2+1}"/></h1>
        <h1>Ur Date : <c:out value="${param.selDate}"/></h1>                   
        <fmt:parseDate value="${param.selDate}" var="date"/>
        <fmt:formatDate value="${date}" dateStyle="short" var="date2" pattern="d/MM/yyyy"/>
        <fmt:formatDate value="${date}" timeStyle="short" var="time2" type="time"/>
        <h1>New Date : <c:out value="${date}"/></h1>        
        <h1>New Date : <c:out value="${date2}"/></h1>        
        <h1>New time : <c:out value="${time2}"/></h1>        
    </body>
</html>
