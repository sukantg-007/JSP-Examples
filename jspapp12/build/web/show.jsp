
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    </head>
    <body>
        <%!
            Map<String, String> data;
        %>       
        <table class="table w-50 m-auto border border-1">
            <thead class="bg-dark text-white">
                <tr>                  
                    <th scope="col">Field</th>
                    <th scope="col">Data</th>                    
                </tr>
            </thead>
            <%
                data = new HashMap<>();
                data.put("Address", request.getParameter("addr"));
                data.put("Mobile", request.getParameter("mob"));
                data.put("Qualification", request.getParameter("qual"));
                data.put("Name", request.getParameter("name"));

                for (Map.Entry<String, String> entry : data.entrySet()) {
            %>        
            <tbody>
                <tr>                  
                    <td><%=entry.getKey()%></td>
                    <td><%=entry.getValue()%></td>                    
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </body>
</html>
