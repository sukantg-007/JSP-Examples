<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/mytags.tld" prefix="mytags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <mytags:if condition='true'>
            <mytags:true>
                <h1>Condition is true</h1>
            </mytags:true>
            <mytags:false>
                <h1>Condition is false</h1>
            </mytags:false>
        </mytags:if>
    </body>
</html>
