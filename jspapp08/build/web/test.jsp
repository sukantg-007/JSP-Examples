<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isThreadSafe="false"%>
<%--<%@page session="true"%>--%>
<%--<%@page isELIgnored="true"%>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.setAttribute("A", "AAA");
            session.setAttribute("B", "BBB");
            session.setAttribute("C", "CCC");
         %>
<!--         <h1><%=session.getAttribute("A") %></h1>
         <h1><%=session.getAttribute("B") %></h1>
         <h1><%=session.getAttribute("C") %></h1>-->
         
         <!--Expression language ctrl+shift+C-->
         <h1>${A}</h1>
         <h1>${B}</h1>
         <h1>${C}</h1>
         
         <%
             for (int i = 0; i < 10; i++) {
                 try{
                    Thread.sleep(1000);                 
                 }catch(Exception e){}
                     out.println("Hello");
                 }
             %>
         
    </body>
</html>
