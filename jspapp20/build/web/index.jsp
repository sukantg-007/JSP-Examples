<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/iterator.tld" prefix="mytags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <mytags:iterate times="5">
        <h1>Hello World!</h1>
        </mytags:iterate>
    </body>
</html>
