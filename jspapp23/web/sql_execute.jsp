<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/mytags.tld" prefix="mytags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <br>
        <br>
        <div class="container m-auto">
            <mytags:tag>
                <%=request.getParameter("query")%>
            </mytags:tag>
        </div>
    </body>
</html>
