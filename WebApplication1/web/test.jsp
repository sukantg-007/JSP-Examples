<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page buffer="52kb" autoFlush="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            for (int i = 0; i < 1000000; i++) {
                    out.print("<span style='font-size:25px;'> JSP </span>");
                }
            %>
    </body>
</html>
