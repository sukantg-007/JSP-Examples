package com.vc.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDao {
    private static final String URL="jdbc:oracle:thin:@localhost:1521:orcl";
    private static final String USER="system";
    private static final String PWD="Sukantg#007";
    
    public static Connection getConnection()throws SQLException
    {
        Connection con=DriverManager.getConnection(URL, USER, PWD);
        return con;        
    }
}
