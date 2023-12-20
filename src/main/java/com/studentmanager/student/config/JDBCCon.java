package com.studentmanager.student.config;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCCon {
    public final static String dbName = "/kt";
    public final static String username = "root";
    public final static String password = "duong123";
    public final static String url = "jdbc:mysql://localhost:3306" + dbName;
    public static Connection connection (){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(url, username, password);
            return connection;
        }catch(Exception e){
            throw new RuntimeException(e);
        }
    }
}
