<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="/WEB-INF/tlds/mytags.tld" prefix="mytags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
    <c:set var="msg" value="Good Afternoon"/>
    <mytags:tag times="4">
        ${msg}
    </mytags:tag>
    </body>
</html>
