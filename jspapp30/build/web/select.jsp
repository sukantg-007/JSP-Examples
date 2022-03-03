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
        <!--establish connection and load driver and register-->
        <sql:setDataSource
            driver="oracle.jdbc.OracleDriver"
            url="jdbc:oracle:thin:@localhost:1521:orcl"
            user="system"
            password="Sukantg#007"/>
        <!--write select query-->
        <sql:query var="emps">select * from emp</sql:query>
        <div class="container">
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <c:forEach items="${emps.columnNames}" var="col">   

                            <th scope="col"><c:out value="${col}"/></th>

                        </c:forEach>

                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${emps.rowsByIndex}" var="rows"> 
                        <tr>

                            <c:forEach items="${rows}" var="colValue">
                                <th scope="row"><c:out value="${colValue}"/></th>      
                            </c:forEach>
                            <%--
                                <th scope="row"><c:out value="${rows.EID}"/></th>      
                                <th scope="row"><c:out value="${rows.ENAME}"/></th>      
                                <th scope="row"><c:out value="${rows.ESAL}"/></th>      
                                <th scope="row"><c:out value="${rows.EADDR}"/></th>      
                                <th scope="row"><c:out value="${rows.EDOJ}"/></th>      
                            --%>

                        </tr>                
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>
