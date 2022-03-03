<%@page import="java.util.Iterator"%>
<%@page import="com.vc.service.EmpService"%>
<%@page import="com.vc.service.IEmpService"%>
<%@page import="com.vc.entity.Employee"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            List<Employee> list;
            IEmpService service;
        %>
        <%
            service = new EmpService();
            list = service.getEmployees();
        %>
        <h1>All Employees</h1>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">NAME</th>
                    <th scope="col">SALARY</th>
                    <th scope="col">ADDRESS</th>
                </tr>
            </thead>
            <tbody>
                <%
                    Iterator<Employee> itr = list.iterator();
                    while (itr.hasNext()) {
                        Employee emp = itr.next();
                %>
                <tr>
                    <td><%= emp.getEid()%></td>
                    <td><%= emp.getEname()%></td>
                    <td><%= emp.getEsal()%></td>
                    <td><%= emp.getEaddr()%></td>                    
                </tr>                
                <%
                    }
                %>
                
            </tbody>
        </table>
    </body>
</html>
