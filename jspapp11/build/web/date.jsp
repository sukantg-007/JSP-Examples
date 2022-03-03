<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--declaration-->
<%!
    Date d;
    String date;
%>
<!--scriplet-->
<%
    d = new Date();
    SimpleDateFormat  format=new SimpleDateFormat("dd-MM-yyyy");
    date = format.format(d);    
%>
<!--expression-->
<h1>Todays date : <%=date%></h1>