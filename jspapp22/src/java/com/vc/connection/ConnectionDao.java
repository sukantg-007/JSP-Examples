
package com.vc.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDao {
    public static final String URL="jdbc:oracle:thin:@localhost:1521:orcl";
    public static final String USER="system";
    public static final String PWD="Sukantg#007";
    
    public static Connection getConnection()throws SQLException{
        return DriverManager.getConnection(URL, USER, PWD);
    }    
}
