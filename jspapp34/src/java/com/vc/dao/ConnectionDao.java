package com.vc.dao;

import com.vc.factory.ConnectionFactory;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ConnectionDao implements IConnectionDao{
    private Connection con;
//    queries
    private final String SELECT_USER_QUERY="SELECT UNAME, UPASS FROM USERTB1 WHERE UNAME=? AND UPASS=?";

    public ConnectionDao() {
        try{
        con=ConnectionFactory.getConnection();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    

    @Override
    public String check(String uname, String upass) {
        PreparedStatement pst=null;
        ResultSet rs=null;
        String msg="fail";
        try{
           pst=con.prepareStatement(SELECT_USER_QUERY);
           pst.setString(1, uname);
           pst.setString(2, upass);
           rs=pst.executeQuery();
           if(rs!=null)
               msg=rs.next()==true?"success":"fail";
        }catch(Exception e){
            msg="fail";
            e.printStackTrace();
        }
        return msg;
    }
    
}
