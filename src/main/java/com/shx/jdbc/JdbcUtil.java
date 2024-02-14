package com.shx.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JdbcUtil {
	// 数据库的参数
	private String dbUrl="jdbc:mysql://localhost:3306/work?serverTimezone=GMT%2B8&useUnicode=true&characterEncoding=utf8";
    private String dbUsername="root";
    private String dbPassword="123456"; 
    
    // 与数据库连接
    public Connection getConn() {
    	try {
    		// 加载驱动
    		Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
    	Connection conn = null;
    	
    	try {
    		// 获得连接,返回connection 对象
    		conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return conn;
    }
    
    // 释放资源
    // 关闭结果集 ResultSet
    public void close(ResultSet resultSet) throws Exception {
		if(resultSet != null) {
			resultSet.close();
		}
	}
    
    // 关闭 sql 语句对象 Statement
    public void close(Statement statement) throws Exception {
    	if(statement != null) {
    		statement.close();
    	}
    }
    
    // 关闭连接对象 Connection
    public void close(Connection conn) throws Exception {
    	if(conn != null) {
    		conn.close();
    	}
    }
}
