<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    int count;
%>
<%
    application.setAttribute("count", count++);
    session.setAttribute("A", "AAA");
    session.setAttribute("B", "BBB");
    session.setAttribute("C", "CCC");
%>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <table class="table w-50 border border-dark m-auto">
            <thead class="thead-dark bg-dark text-white">
                <tr>                  
                    <th scope="col">Sr No</th>
                    <th scope="col">Attributes</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td><%=session.getAttribute("A")%></td>                    
                </tr>
                <tr>
                    <th scope="row">2</th>                                   
                    <td><%=session.getAttribute("B")%></td>                    
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td><%=session.getAttribute("C")%></td>                                                      
                </tr>
            </tbody>            
        </table>
        <div class="alert alert-success" role="alert">
            <h5 class="text-center">Hit Count..<%=application.getAttribute("count")%></h5>
        </div>
    </body>
</html>
