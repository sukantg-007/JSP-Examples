<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="mydatasource"
                           driver="oracle.jdbc.OracleDriver"
                           url="jdbc:oracle:thin:@localhost:1521:orcl"
                           user="system"
                           password="Sukantg#007"/>
        <%--
                <sql:update var="result">
                    insert into emp values(?,?,?,?,?)
                    <sql:param>52</sql:param>
                    <sql:param value="TTT"/>
                    <sql:param>55555</sql:param>
                    <sql:param value="Daund"/>
                    <sql:param value="12-JAN-22"/>            
                </sql:update>
                <h1><c:out value="${result}"/></h1>
                <sql:query var="result">
                    select * from emp
                </sql:query>
                <h1><c:out value="${result}"/></h1>
                <c:import url="printQuery.jsp"/>--%>
        <sql:transaction dataSource="${mydatasource}">
            <sql:update>
                update account set BALANCE= BALANCE-10000 where accno=22222222
            </sql:update>
            <sql:update>
                update account set BALANCE= BALANCE+10000 where accno=11111111
            </sql:update>
        </sql:transaction>


    </body>
</html>
