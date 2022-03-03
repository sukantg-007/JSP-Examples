<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <c:forEach items="${requestScope.result.rowsByIndex}"
                       var="row"
                       varStatus="s">
                <c:if test="${s.first}">
                    <table class="table">
                        <thead class="thead-dark bg-dark text-white">
                            <tr>
                                <c:forEach items="${requestScope.result.columnNames}"
                                           var="col">
                                    <th scope="col"><c:out value="${col}"/></th>                   
                                    </c:forEach>
                            </tr>
                        </thead>
                    </c:if>
                    <tbody>
                        <tr>
                            <c:forEach items="${row}"
                                       var="values">
                                <th scope="row"><c:out value="${values}"/></th>                    
                                </c:forEach>
                        </tr>           
                    </tbody>
                    <c:if test="${s.last}">
                    </table>
                </c:if>
            </c:forEach>
        </div>
    </body>
</html>
