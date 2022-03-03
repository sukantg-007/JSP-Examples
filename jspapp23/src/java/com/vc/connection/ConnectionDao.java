package com.vc.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionDao {
    private final static String URL="jdbc:oracle:thin:@localhost:1521:orcl";
    private final static String USER="system";
    private final static String PWD="Sukantg#007";    
    
    public static Connection getConnection()throws Exception
    {
        return DriverManager.getConnection(URL,USER,PWD);
    }
}
