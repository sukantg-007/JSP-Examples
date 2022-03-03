<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib uri="/WEB-INF/tlds/mytag.tld" prefix="mytags" %>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <%--
    <%
        session.setAttribute("name", "Vedanta Computers");
    %>
    --%>
    <body>
        <mytags:tag name="AAA" time='5'>
            <h1>
                Hello Good evening...
            </h1>
        </mytags:tag>
        <p>
            this is after tag
        </p>         
    </body>
</html>
