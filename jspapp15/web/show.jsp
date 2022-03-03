<%@page import="com.vc.connection.ConnectionDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
        <style>
            footer{
                margin-bottom: 0px;
                height: 50px;
                background: gray;
                margin: 10px;
            }
            .container{
                min-height: 400px;
            }
        </style>
    </head>
    <body>
        <header><jsp:include page="header.html"/></header>
        <div class="container">
            <jsp:useBean id="emp" class="com.vc.beans.Employee" scope="page"/>
            <jsp:setProperty name="emp" property="*"/>
            <%String status= ConnectionDao.getConnection(emp);%>
            <jsp:forward page="final.jsp">
                <jsp:param name="msg" value="<%=status%>"/>
            </jsp:forward>
        </div>
        <footer><jsp:include page="footer.html"/></footer>
    </body>
</html>
