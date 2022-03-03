package com.vc.factory;

import com.vc.dao.ConnectionDao;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
    private static final String URL="jdbc:oracle:thin:@localhost:1521:orcl";
    private static final String USER="system";
    private static final String PASS="Sukantg#007";

    public static Connection getConnection()throws Exception{
        Class.forName("oracle.jdbc.OracleDriver");
        return DriverManager.getConnection(URL, USER, PASS);
    }    
}
