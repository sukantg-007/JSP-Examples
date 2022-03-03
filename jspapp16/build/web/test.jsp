<%@page import="com.vc.service.EmpService"%>
<%@page import="com.vc.service.IEmpService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="emp" class="com.vc.entity.Employee" scope="page"/>
<jsp:setProperty name="emp" property="*"/>
<jsp:declaration>
    String msg;
    IEmpService service;
</jsp:declaration>
<jsp:scriptlet>
    service = new EmpService();
    msg = service.addEmp(emp);
    if (msg.equals("success")) {
</jsp:scriptlet>
<jsp:forward page="allemps.jsp"/>
<jsp:scriptlet>
    } else {
</jsp:scriptlet>    
<h1>
    Employee Data :
    <jsp:expression>msg</jsp:expression>
        to save.
    </h1>
<jsp:scriptlet>
            }
</jsp:scriptlet>