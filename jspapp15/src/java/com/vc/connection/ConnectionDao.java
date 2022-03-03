
package com.vc.connection;

import com.vc.beans.Employee;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ConnectionDao {
    private static final String URL="jdbc:oracle:thin:@localhost:1521:orcl";
    private static final String USER="system";
    private static final String PASS="Sukantg#007";
    
    private static final String INSERT_QUERY_EMP="INSERT INTO EMP2 VALUES (?,?,?,?)";
    
    public static String getConnection(Employee emp){
        String msg="";
        try {
            Connection con=DriverManager.getConnection(URL,USER,PASS);
            PreparedStatement pst=con.prepareStatement(INSERT_QUERY_EMP);
            pst.setInt(1, emp.getEid());
            pst.setString(2, emp.getEname());
            pst.setFloat(3, emp.getEsal());
            pst.setString(4, emp.getEaddr());
            int count=pst.executeUpdate();
            msg=count>0?"Success":"Fail";                               
        } catch (Exception e) {
            e.printStackTrace();
        }
        return msg;        
    }            
}
