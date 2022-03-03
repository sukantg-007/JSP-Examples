<%--<%@page import="java.time.LocalTime" import="java.time.LocalDateTime" import="java.time.LocalDate" import="java.util.Date"%> --%>
<%@page import="java.time.LocalTime,java.time.LocalDateTime,java.time.LocalDate,java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Date and Time : <%= new Date().toString()%></h1>
        <h2>Date : <%= LocalDate.now()%></h2>
        <h2>Time : <%= LocalTime.now()%></h2>
        <h3><% int hr= LocalTime.now().getHour();
                if(hr<=12)
                    out.print("Good Morning");
                else if(hr>=12)
                    out.print("Good Evening");
            %></h3>
    </body>
</html>

