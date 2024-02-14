package com.shx.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.shx.pojo.*;


public class Dao {
	// 登录验证
	public User login(Connection conn,User user) throws Exception{
        User resultUser = null;
        // sql 查询语句
        String sql="select * from user where username=? and userpwd=?";
        // 获得执行sql语句的对象
        PreparedStatement pstatement =conn.prepareStatement(sql);
        pstatement.setString(1, user.getUsername());
        pstatement.setString(2, user.getUserpwd());
        // 执行sql语句获得结果集
        ResultSet rs = pstatement.executeQuery();
        if(rs.next()){ 
            resultUser = new User();
            resultUser.setUsername(rs.getString("username"));
            resultUser.setUserpwd(rs.getString("userpwd"));
        }
        
        return resultUser;
    }
	
	
	
	// 注册验证
	public boolean register(Connection conn,User user) throws Exception {
		boolean flag = false;
        // sql 查询语句
        String sql="insert into user(username,userpwd)values(?,?)";
        // 获得执行sql语句的对象
        PreparedStatement pstatement =conn.prepareStatement(sql);
        pstatement.setString(1, user.getUsername());
        pstatement.setString(2, user.getUserpwd());
        // 执行sql语句获得结果集
        int res = pstatement.executeUpdate();
        if(res > 0) {
        	flag = true;
        }
        return flag;
	}
	
	//插入试题
	public boolean insert(Connection conn,Sub sub) throws Exception {
		boolean flag = false;
        // sql 查询语句
        String sql="insert into sub(subject,choice_a,choice_b,choice_c,choice_d,answer)values(?,?,?,?,?,?)";
        // 获得执行sql语句的对象
        PreparedStatement pstatement =conn.prepareStatement(sql);
        pstatement.setString(1, sub.getSubject());
        pstatement.setString(2, sub.getChoice_a());
        pstatement.setString(3, sub.getChoice_b());
        pstatement.setString(4, sub.getChoice_c());
        pstatement.setString(5, sub.getChoice_d());
        pstatement.setString(6, sub.getAnswer());
        
        
        
        
        // 执行sql语句获得结果集
        int ins = pstatement.executeUpdate();
        if(ins > 0) {
        	flag = true;
        }
        return flag;
	}
	
	//删除选择题
		public  boolean dsq (Connection conn, Sub sub) throws Exception{
			boolean flag = false;
	        // sql 查询语句
	        String sql= " DELETE FROM sub WHERE question_id = ?";
	        // 获得执行sql语句的对象
	        PreparedStatement pstatement =conn.prepareStatement(sql);
	        pstatement.setString(1, sub.getQuestion_id());
	        
	        
	        
	        int res = pstatement.executeUpdate();
	        if(res > 0) {
	        	flag = true;
	        }
	        return flag;
	        
	        
	    }
		//删除判断题
				public  boolean dpd (Connection conn, Pdt pdt) throws Exception{
					boolean flag = false;
			        // sql 查询语句
			        String sql= " DELETE FROM pdt WHERE question_id = ?";
			        // 获得执行sql语句的对象
			        PreparedStatement pstatement =conn.prepareStatement(sql);
			        pstatement.setString(1, pdt.getQuestion_id());
			        
			        
			        
			        int res = pstatement.executeUpdate();
			        if(res > 0) {
			        	flag = true;
			        }
			        return flag;
			        
			        
			    }
				//插入判断题
		public  boolean sqp (Connection conn, Pdt pdt) throws Exception{
			boolean flag = false;
	        // sql 查询语句
	        String sql= "insert into pdt(subject,answer)values(?,?)";
	        // 获得执行sql语句的对象
	        PreparedStatement pstatement =conn.prepareStatement(sql);
	        pstatement.setString(1, pdt.getSubject());
	        pstatement.setString(2, pdt.getAnswer());
	        
	        
	    

	        int res = pstatement.executeUpdate();
	        if(res > 0) {
	        	flag = true;
	        }
	        return flag;
	        
	    }
	
	
}