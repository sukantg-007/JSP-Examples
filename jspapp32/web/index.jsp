<%@page import="java.sql.Date"%>
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
        <%
            int eid=179;
            String ename="ssssss";
            float esal=898989;
            String eaddr="Mumbai";
            Date date=new Date(new java.util.Date().getTime());
            pageContext.setAttribute("eid", eid);
            pageContext.setAttribute("ename", ename);
            pageContext.setAttribute("esal", esal);
            pageContext.setAttribute("eaddr", eaddr);
            pageContext.setAttribute("date", date);
        %>
        <sql:setDataSource
            driver="oracle.jdbc.OracleDriver"
            url="jdbc:oracle:thin:@localhost:1521:orcl"
            user="system"
            password="Sukantg#007"/>
        
        <!--first apporach-->
        
        <%--<sql:update sql="insert into emp values(62, 'ZZZ', 65656, 'Daund', '06-JAN-2022')" var="rowCount"/>--%>
        <%--<sql:update var="rowCount">
            delete from emp where eid>60
        </sql:update>--%>
        
        <sql:update var="rowCount">
            insert into emp values(?,?,?,?,?)
            <sql:param value="${pageScope.eid}"/>
            <sql:param value="${pageScope.ename}"/>
            <sql:param value="${pageScope.esal}"/>
            <sql:param value="${pageScope.eaddr}"/>
            <sql:param value="${pageScope.date}"/>
        </sql:update>
        <c:if test="${rowCount>0}">
            <h1>Row Inserted successully <c:out value="${rowCount}"/></h1>
        </c:if>
        <c:if test="${rowCount==0}">
            <h1>Row inserted Failed</h1>
        </c:if>
    </body>
</html>
