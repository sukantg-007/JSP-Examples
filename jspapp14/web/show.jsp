<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--
<%!
    int eid;
    String ename;
    float esal;
    String eaddr;
%>
<%
    try {
        eid = Integer.parseInt(request.getParameter("eid"));
        ename = request.getParameter("ename");
        esal = Float.parseFloat(request.getParameter("esal"));
        eaddr = request.getParameter("eaddr");
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="emp" class="com.vc.beans.Employee" scope="page">
            <%--
            <jsp:setProperty name="emp" property="eid" value="<%=eid%>"/>
            <jsp:setProperty name="emp" property="ename" value="<%=ename%>"/>
            <jsp:setProperty name="emp" property="esal" value="<%=esal%>"/>
            <jsp:setProperty name="emp" property="eaddr" value="<%=eaddr%>"/>--%>
            <jsp:setProperty name="emp" property="*"/>

            <table class="table w-50 border border-dark m-auto">
                <thead class="thead-dark bg-dark text-white">
                    <tr>                  
                        <th scope="col">Field</th>
                        <th scope="col">Data</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">Id</th>
                        <td><jsp:getProperty name="emp" property="eid"/></td>                    
                    </tr>
                    <tr>
                        <th scope="row">Name</th>
                        <td><jsp:getProperty name="emp" property="ename"/></td>                    
                    </tr>
                    <tr>
                        <th scope="row">Salary</th>
                        <td><jsp:getProperty name="emp" property="esal"/></td>                    
                    </tr>
                    <tr>
                        <th scope="row">Address</th>
                        <td><jsp:getProperty name="emp" property="eaddr"/></td>                    
                    </tr>                    
                </tbody>                
            </jsp:useBean>                            
        </table>
        <h1>new eid <%=emp.getEid()+emp.getEid()%></h1>
    </body>
</html>
