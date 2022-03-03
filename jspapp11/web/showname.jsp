
<%@page import="javax.naming.ldap.HasControls"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <%!
            Map<Integer, String> map;
        %>
        <br>
        <table class="table w-50 m-auto border border-1">
            <thead class="bg-dark text-white">
                <tr>                  
                    <th scope="col">RollNumber</th>
                    <th scope="col">Name</th>                    
                </tr>
            </thead>
            <%
                map = new HashMap<>();
                map.put(1, "AAA");
                map.put(2, "BBB");
                map.put(3, "CCC");
                map.put(4, "DDD");
                for (Map.Entry<Integer, String> entry : map.entrySet()) {
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
